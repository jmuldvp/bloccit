require 'rails_helper'

RSpec.describe Comment, type: :model do
#   pending "add some examples to (or delete) #{__FILE__}"
    let(:post) { Post.create!(title: "New Post Title", body: "New Post Body") }
    let(:comment) { Comment.create!(body: 'Comment Body', post: post) }
    
    context "attributes" do
        it "has a body attribute" do
            expect(comment).to have_attributes(body: "Comment Body")
        end
    end
end
