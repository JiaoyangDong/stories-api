# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
stories = [
  {author: "zora", title: "Why won't my title center?"},
  {author:"zora", title: "css override is driving me crazy"},
  {author:"Aggy", title: "Wechat devtool is not behaving."},
  {author:"Lilian", title: "!%s^&W2i...."}
]
stories.each do |story|
  sto = Story.new(story)
  sto.content = Faker::Lorem.paragraph
  if sto.save
    p "create new seed for #{sto.title}"
  else
    p "create new seed fails for #{sto.title}!!!"
  end
end


Story.all.each do |story|
  (1..4).to_a.sample.times do
    co = Comment.new(name: Faker::TvShows::GameOfThrones.character, content: Faker::TvShows::GameOfThrones.quote, story: story)
    # story.comments.push
    if co.save
      p "new comment for #{story.title}: #{co.content}"
    else
      p "fails"
    end
  end
end
