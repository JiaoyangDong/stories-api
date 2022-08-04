json.array! @stories do |story|
  # json.extract! story
  json.(story, :id, :author, :title, :content)
end
