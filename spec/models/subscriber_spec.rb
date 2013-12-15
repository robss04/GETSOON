require 'spec_helper'

describe Subscriber do
  describe "validates email format" do
    context "when there is an invalid email" do
      it "should not be valid?" do
        user = Subscriber.new(email: "wrong")
        user.should_not be_valid
      end
    end

    context "when there is a valid email" do
      it "should be valid?" do
        user = Subscriber.new(email: "abc@abc.com")
        user.should be_valid
      end
    end

    context "when there is no email" do
      it "should not be valid?" do
        user = Subscriber.new(email: nil)
        user.should_not be_valid
      end
    end

  end
end