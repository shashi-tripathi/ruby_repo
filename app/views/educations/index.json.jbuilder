json.array!(@educations) do |education|
  json.extract! education, :id, :grade, :institute, :institute_type, :institute_country, :institute_state, :institue_city, :institute_website, :institute_email, :institute_phone, :teacher_name, :teach_email, :teacher_phone, :user_id
  json.url education_url(education, format: :json)
end
