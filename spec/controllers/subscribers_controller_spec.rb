require 'spec_helper'

describe SubscribersController do

  describe "POST 'create'" do
    def submit_post
      post 'create', subscriber: {email: "test@example.com"}
    end

    it "returns http success" do
      submit_post
      response.should be_success
    end

    it "creates a subscriber" do
      expect{submit_post}.to change{Subscriber.count}.from(0).to(1)
    end    
  end

end
