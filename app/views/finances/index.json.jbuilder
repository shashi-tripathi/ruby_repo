json.array!(@finances) do |finance|
  json.extract! finance, :id, :father_profs, :mother_profess, :father_income, :mother_income, :other_income, :economic_status, :income_document, :rationa_card, :bank_statement, :bank_name, :bank_account_no, :user_id
  json.url finance_url(finance, format: :json)
end
