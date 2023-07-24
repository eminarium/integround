require 'rails_helper'

RSpec.describe Category, type: :model do
  context "validations" do
    describe "Validations" do 
      
      subject { create(:category) }

      it "is valid with valid attributes" do
        expect(subject).to be_valid
      end

      it "is invalid without a name" do
        subject.name = nil
        expect(subject).to_not be_valid
      end

      it "is valid without a description" do
        subject.description = nil
        expect(subject).to be_valid
      end

      it { should validate_presence_of(:name) }
    end
  end
end