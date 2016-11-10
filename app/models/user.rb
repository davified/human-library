class User < ApplicationRecord

  has_many :appointments

  has_one :book

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable


# note: some useful helper functions provided by devise
# To verify if a user is signed in, use the following helper:
### user_signed_in?
# For the current signed-in user, this helper is available:
### current_user
# You can access the session for this scope:
### user_session

# for more customisation and configuration, please refer to the devise documentation: https://github.com/plataformatec/devise
end
