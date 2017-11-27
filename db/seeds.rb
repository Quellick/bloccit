# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'random_data'

 # Create Posts
 50.times do
 # #1 we use create! with a bang (!). Adding a ! instructs the method to raise an error if there's a problem with the data we're seeding. 
 # #  Using create without a bang could fail without warning, causing the error to surface later.
   Post.create!(
 # #2 we use methods from a class that does not exist yet, RandomData, that will create random strings for title and body. 
 # #  Writing code for classes and methods that don't exist is known as "wishful coding" and can increase productivity because it allows you to stay focused on one problem at a time.
     title:  RandomData.random_sentence,
     body:   RandomData.random_paragraph
   )
 end
 posts = Post.all
 
 # Create Comments
 # #3 we call times on an Integer (a number object). This will run a given block the specified number of times, 
 # #  which is 100 in this case. The end result of calling times is similar to that of a loop, but in this use-case, it is easier to read and thus more idiomatic.
 100.times do
   Comment.create!(
 # #4 we call sample on the array returned by Post.all, in order to pick a random post to associate each comment with. sample returns a random element from the array every time it's called.
     post: posts.sample,
     body: RandomData.random_paragraph
   )
 end
 
 # Create Questions
 100.times do
   Question.create!(
    title: RandomData.random_sentence,
    body: RandomData.random_paragraph,
    resolved: false
   )
 end  
 
 puts "Seed finished"
 puts "#{Post.count} posts created"
 puts "#{Comment.count} comments created"
 puts "#{Question.count} questions created"