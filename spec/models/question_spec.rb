require 'rails_helper'

RSpec.describe Question, type: :model do
#   pending "add some examples to (or delete) #{__FILE__}"
    let(:question) { Question.create!(title: "New Question Title", body: "New Question Body", resolved: true) }
  
    context "attributes" do
        it "has title, body and resolved attributes" do
            expect(question).to have_attributes(title: "New Question Title", body: "New Question Body", resolved: true)
        end
    end
end
