class EventsController < ApplicationController
  before_action :set_event, only: [:show, :edit, :update, :destroy]

  # GET /events
  # GET /events.json
  def index
    @events = Event.all
  end

  # GET /events/1
  # GET /events/1.json
  def show
  end

  # GET /events/new
  def new
    @event = Event.new
  end

  # GET /events/1/edit
  def edit
  end

  # POST /events
  # POST /events.json
  def create
    @event = Event.new(event_params)
    @event.save

    no_of_slots = event_params[:no_of_slots].to_i
    interval = event_params[:duration_per_slot].to_i
    pax_capacity = event_params[:no_of_ppl_per_book].to_i
    start_time = event_params["start_time(5i)"].to_time

    new_time = start_time + interval.minutes
    new_time = new_time.strftime("%I:%M%p")

    (1..no_of_slots).each do |i|
      @slot = Slot.new()

      @slot.event_id = @event.id
      @slot.start_time = start_time + (interval * (i - 1)).minutes
      @slot.end_time = start_time + (interval * i).minutes
      @slot.pax_capacity = pax_capacity
      @slot.is_available = true
      @slot.save!
    end

    if @event.save
      redirect_to batch_new_path(@event)
    else
      render :new
    end
  end

  # PATCH/PUT /events/1
  # PATCH/PUT /events/1.json
  def update
    respond_to do |format|
      if @event.update(event_params)
        format.html { redirect_to @event, notice: 'Event was successfully updated.' }
        format.json { render :show, status: :ok, location: @event }
      else
        format.html { render :edit }
        format.json { render json: @event.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /events/1
  # DELETE /events/1.json
  def destroy
    @event.destroy
    respond_to do |format|
      format.html { redirect_to events_url, notice: 'Event was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_event
      @event = Event.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def event_params
      params.require(:event).permit(:date, :venue, :description, :start_time, :no_of_books, :no_of_slots, :no_of_ppl_per_book, :duration_per_slot)
    end
end
