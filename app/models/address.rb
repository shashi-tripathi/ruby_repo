class Address < ActiveRecord::Base
	validates :country,presence: true
	validates :state,presence: true
	validates :city,presence: true
	validates :zip,presence: true
	validates :house_no,presence: true
	validates :street,presence: true
	validates :email,presence: true,format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i, on: :update },uniqueness: true, length: { maximum: 100 }
	validates :phone, presence: true,format: {  with: /\d{2}-\d{10}/, on: :update },length: { maximum: 13 }
	validates :mobile,presence: true,format: { with: /\d{2}-\d{10}/, on: :update },length: { maximum: 13 }
	belongs_to:user
end
	