class Finance < ActiveRecord::Base

	validates :bank_account_no,presence: true
	validates :bank_name,presence: true
	validates :uploaded_document,presence: true

	belongs_to :user
	def uploaded_file=(incoming_file)
#	Rails.logger.debug("uploaded_document!!!!!:"+incoming_file.name.to_s)
    self.filename = incoming_file.original_filename
    self.content_type = incoming_file.content_type
    self.uploaded_document = incoming_file.read
  end
end
