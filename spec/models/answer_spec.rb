require 'rails_helper'

RSpec.describe Answer, type: :model do
#   pending "add some examples to (or delete) #{__FILE__}"
    let(:question) { Question.create!(title: "New Question Title", body: "New Question Body", resolved: true) }
    let(:answer) { Answer.create!(body: "Answer Body", question: question) }
    
    context "attributes" do
        it "has a body attribute" do
            expect(answer).to have_attributes(body: "Answer Body")
        end
    end
end
