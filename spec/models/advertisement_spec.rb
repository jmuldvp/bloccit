require 'rails_helper'

RSpec.describe Advertisement, type: :model do
#   pending "add some examples to (or delete) #{__FILE__}"
    let(:ad) { Post.create!(title: "New Ad Title", body: "New Ad Body", price: 2) }
  
    context "attributes" do
        it "has title and body attributes" do
            expect(ad).to have_attributes(title: "New Ad Title", body: "New Ad Body", price: 2)
        end
    end
end
