require 'random_data'

5.times do
 User.create!(
  name: RandomData.random_name,
  email: RandomData.random_email,
  password: RandomData.random_sentence
  )
end
users = User.all

12.times do
 Topic.create!(
  name:        RandomData.random_sentence,
  description: RandomData.random_paragraph
 )
end
topics = Topic.all

 # Create Posts
50.times do
 Post.create!(
  user:   users.sample,
  topic:  topics.sample,
  title:  RandomData.random_sentence,
  body:   RandomData.random_paragraph
 )
end
posts = Post.all
 
# Create Post Comments
100.times do
 Comment.create!(
  user: users.sample,
  post: posts.sample,
  body: RandomData.random_paragraph
 )
end

# Create Topic Comments
75.times do
 Comment.create!(
  user: users.sample,
  topic: topics.sample,
  body: RandomData.random_paragraph
 )
end

# user = User.first
# user.update_attributes!(
#  email: 'dhh@rails.org',
#  password: 'helloworld'
# )

member = User.create!(
 name: 'Member User',
 email: 'mem@mem.com',
 password: '123123'
)

admin = User.create!(
 name: 'Admin User',
 email: 'adm@adm.com',
 password: '123123',
 role: 'admin'
)

 
puts "Seed finished"
puts "#{User.count} users created"
puts "#{Topic.count} topics created"
puts "#{Post.count} posts created"
puts "#{Comment.count} comments created"