json.array!(@contacts) do |contact|
  json.extract! contact, :id, :sent_to, :sent_from, :message
  json.url contact_url(contact, format: :json)
end
