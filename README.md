# Welcome to readit

This is a UI-less and much-simplified version of reddit, where Rails beginners can learn the basics of models and associations.

## Setup

Clone this repository in your folder of choice and cd into it: 

`git clone https://github.com/NedelescuVlad/readit`
`cd readit`

Install the required gems:

`bundle install` or simply `bundle`

Create the database schema and populate it with dummy data:

`rails db:setup`

At this point, you are ready to go.

## How to use
If you are a beginner, the recommended way of using this app is with a guide in front of you.
You can use readit to test the concepts that you read about in the guides. 

[A basic Rails models guide](http://guides.rubyonrails.org/active_model_basics.html)
[A basic Rails associations guide](http://guides.rubyonrails.org/association_basics.html)

Once ready, run the rails console with `rails c`. 

There are 3 data structures that you can gain access to: 
1. User
2. Post
3. Comment

Query the database to your own liking.
Besides the provided data, you may also create your own models and save them to the database.

### Associations outline: 
1. Each post belongs to a user. 
2. Each comment belongs to a user and a post.
3. Each user (may) have many posts (or none).
4. Each user (may) have many comments (or none).
5. Each post (may) have many comments (or none).

## Running the tests
If you would like to run the test suite, a `bundle exec rspec` should do the trick.
