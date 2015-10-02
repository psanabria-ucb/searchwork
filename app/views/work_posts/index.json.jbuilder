json.array!(@work_posts) do |work_post|
  json.extract! work_post, :id, :title, :description
  json.posted_date work_post.created_at.strftime('%d/%m/%Y')
end
