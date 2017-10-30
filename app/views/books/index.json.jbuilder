json.array!(@books) do |book|
  json.extract! book, :id, :title, :category, :description, :langauge, :grade, :subject, :media_type, :address
  json.url book_url(book, format: :json)
end
