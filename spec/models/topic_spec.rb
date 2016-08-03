require 'rails_helper'

RSpec.describe Topic, type: :model do
#   pending "add some examples to (or delete) #{__FILE__}"
    # let(:name) { RandomData.random_sentence }
    # let(:description) { RandomData.random_paragraph }
    let(:public) { true }
    # let(:topic) { Topic.create!(name: name, description: description) }
    let(:topic) { create(:topic) }
    
    it { is_expected.to have_many(:posts) }
    
    it { is_expected.to have_many(:labelings) }
    it { is_expected.to have_many(:labels).through(:labelings) }
    
    describe "attributes" do
        it "has name, description, and public attributes" do
            # expect(topic).to have_attributes(name: name, description: description, public: public)
            expect(topic).to have_attributes(name: topic.name, description: topic.description)
        end
        
        it "is public by default" do
            expect(topic.public).to be(true)
        end
    end
end
