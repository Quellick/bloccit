require 'rails_helper'

RSpec.describe SponsoredPostsController, type: :controller do
    # let(:topic) { Topic.create!(name:  RandomData.random_sentence, description: RandomData.random_paragraph) }
    #  let(:sponsored_post) { topic.sponsored_posts.create!(RandomData.random_sentence, body: RandomData.random_paragraph, price: 90, topic: topic) }
  
  describe "GET show" do
    it "returns http success" do
      get :show
      expect(response).to have_http_status(:success)
    end
  end
  
  describe "GET #new" do
    it "returns http success" do
      get :new
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #edit" do
    it "returns http success" do
      get :edit
      expect(response).to have_http_status(:success)
    end
  end
  
end
