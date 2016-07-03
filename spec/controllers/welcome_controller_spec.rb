require 'rails_helper'

RSpec.describe WelcomeController, type: :controller do
    context "GET index" do
     it "renders the index template" do
       get :index
       expect(response).to render_template("index")
     end
   end
   
   context "GET about" do
       it "renders the about template" do
           get :about
           expect(response).to render_template("about")
       end
   end
   
   context "GET about" do
       it "renders the about template" do
           get :faq
           expect(response).to render_template("faq")
       end
   end
end
