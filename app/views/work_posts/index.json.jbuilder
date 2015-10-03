json.array!(@work_posts) do |work_post|
  json.extract! work_post, :id, :title, :description
  json.posted_date work_post.created_at.strftime('%d/%m/%Y')
  json.contacts do
  	json.array!(work_post.contacts.collect {|c| c.info})
  end
end
