class Student < ActiveRecord::Base
	has_many :address
	validates :first_name, :last_name,:dob,:f_first_name,
	:f_last_name,	 :f_dob,:m_first_name,:m_last_name,:m_dob,
	:ref1_name,:ref1_relation,presence: true
	validates :gender, inclusion: [true, false]
end
