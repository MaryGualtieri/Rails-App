json.array!(@todo_item1s) do |todo_item1|
  json.extract! todo_item1, :id, :description
  json.url todo_item1_url(todo_item1, format: :json)
end
