require 'rails_helper'

RSpec.describe Event, type: :model do
  
    describe "Direct Associations" do

    it { should belong_to(:username) }

    end

    describe "InDirect Associations" do

    end

    describe "Validations" do
      
    end
end
