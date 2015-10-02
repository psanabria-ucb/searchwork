json.array!(@contacts) do |contact|
  json.extract! contact, :id, :info, :work_post_id
  json.url contact_url(contact, format: :json)
end
