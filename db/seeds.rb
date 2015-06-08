# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.create!(name: "Juan Miguel")

10.times do |n|
  post = Post.new(
    title: "Title #{n}",
    content: "A" * 70,
    permalink: "permalink#{n}",
    user_id: 1
  )
  
  post.tags.build(
    name: "Tag #{n}",
  )
  post.save!
end



