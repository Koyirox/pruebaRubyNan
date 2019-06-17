json.extract! todo, :id, :title, :photo, :content, :created_at, :updated_at
json.url todo_url(todo, format: :json)
