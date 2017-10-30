class PersonalDetail < ActiveRecord::Base
	belongs_to :user
	validates :first_name, :last_name,:dob,:f_first_name,
	:f_last_name,:m_first_name,:m_last_name,
	:ref1_name,:ref1_relation,presence: true
	validates :gender, inclusion: ["1", "2"]
	validates :sibling,inclusion: ["1","2"]
end
