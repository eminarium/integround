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

      it "is invalid if the name length is less than 3 symbols" do
        subject.name = "ab"
        expect(subject).to_not be_valid
      end

      it "is invalid if the name is composed of whitespaces only" do
        subject.name = "          "
        expect(subject).to_not be_valid
      end

      it { should validate_presence_of(:name) }
    end
  end
end