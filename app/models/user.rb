class User < ActiveRecord::Base
	validates :email,presence: true,format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i, on: :create },uniqueness: true, length: { maximum: 100 }
	has_secure_password
	validates :password_confirmation,presence: true
	validates :user_type_id,presence: true
	belongs_to :user_type
	has_one :address
	has_one :education
	has_one :finance
	has_one :personal_detail

end
