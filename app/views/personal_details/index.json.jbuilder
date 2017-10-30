json.array!(@personal_details) do |personal_detail|
  json.extract! personal_detail, :id, :first_name, :middle_name, :last_name, :dob, :gender, :sibling, :s_first_name, :s_middle_name, :s_last_name, :s_dob, :f_first_name, :f_middle_name, :f_last_name, :f_dob, :m_first_name, :m_middle_name, :m_last_name, :m_dob, :ref1_name, :ref1_relation, :ref2_name, :ref2_relation
  json.url personal_detail_url(personal_detail, format: :json)
end
