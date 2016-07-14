require 'rails_helper'

RSpec.describe Comment, type: :model do
#   pending "add some examples to (or delete) #{__FILE__}"
    # let(:post) { Post.create!(title: "New Post Title", body: "New Post Body") }
    let(:topic) { Topic.create!(name: RandomData.random_sentence, description: RandomData.random_paragraph) }
    let(:post) { topic.posts.create!(title: RandomData.random_sentence, body: RandomData.random_paragraph) }
    let(:comment) { Comment.create!(body: 'Comment Body', post: post) }
    
    context "attributes" do
        it "has a body attribute" do
            expect(comment).to have_attributes(body: "Comment Body")
        end
    end
end
