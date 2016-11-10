# Human Library Booking system

The upgraded human library booking system that allows (i) admin and human books (hereafter, "Books") to input information and (ii) users to book Reading slots with human Books.

This system allows Readers to book appointments with Books on a rolling basis; as and when the Books are available. The system allows Books can update their availability in real-time and Readers can books appointments with the Books, either for 1-1 sessions or 1 Book to 2-3 readers, depending on the Book's preference.

## To do / key features:

- Facebook sharing (for events, books, and appointments)
- Event schedule/calendar of bookings and availability for a given event
- Facebook authentication/login
- Allow Books (i.e. users who are certified Books) to create event
- Include a payment gateway to charge a booking fee.
- Registration dashboard for event receptionists at the registration counter to check attendance on the event day.

## User Stories (v1)

As a Reader, I want to:

- be able to sign up/login for an account / event via email and NRIC/FIN
- browse through available books, read the back cover, see calendars for available slots/dates and book a slot and pay for booking fee
- Filter for: (available) books for a particular date/time or events
- be able to review my bookings, make changes or cancel (subject to constraints)

As a Book, I want to:

- Login to my account via Email/NRIC + Password
- See my event calendar and current registrations
- Create a new Reading event, set the reader limit, add location info, etc. Modify or remove my own existing reading events (which should inform signed-up readers via email / shouldn't be available for collective events)

As an Admin, I want to:

- Login to my account
- See all Books in the database, change each books data (including back cover / profile info, contacts etc.) and add/remove books or set them as active/inactive (hidden for Readers)
- See all Readers in the database, change each Readers data and add/remove readers
- See all past/future Reading events, modify/create Reading events, add/remove books, set available time slots and reader limits per reading and add booking limits per reader, add/remove readers to slots, set booking fee, see past checked-in attendance.

As an Event Receptionist, I want to:

- See attendance list and check in visitors
