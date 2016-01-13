  #
  # spec/models/toy_spec.rb
  #
  require 'rails_helper'
  require 'spec_helper'
  
  RSpec.describe Toy, type: :model do
   before do
      toy_params = Hash.new
      toy_params[:name] = FFaker::Name.name
      toy_params[:description] = FFaker::HipsterIpsum.characters
      toy_params[:gender] = FFaker::Gender.random
      toy_params[:age_range] = FFaker::HipsterIpsum.characters
      toy_params[:user_id] = 12
      toy_params[:city_id] = 12
      toy_params[:available] = true or false
      toy_params[:created_at] = FFaker::Time.date
      toy_params[:updated_at] = FFaker::Time.date
      toy_params[:image_file_name] = FFaker::HipsterIpsum.characters
      toy_params[:image_content_type] = FFaker::HipsterIpsum.characters
      toy_params[:image_file_size] = 12
      toy_params[:image_updated_at] = FFaker::Time.date
 
      @toy = Toy.create(toy_params)
   end
    describe "#name" do
      it "should receive name of toy" do
        expect(@toy.name).to eq("#{@toy.name}")
      end
    end

    describe "#description" do
      it "should receive description" do
        expect(@toy.description).to eq("#{@toy.description}")
      end
    end

    describe "#gender" do
      it "should receive gender of toy" do
        expect(@toy.gender).to eq("#{@toy.gender}")
      end
    end

    describe "#age_range" do
      it "should receive age range of toy" do
        expect(@toy.age_range).to eq("#{@toy.age_range}")
      end
    end

    describe "#age_range" do
      it "should receive age range of toy" do
        expect(@toy.age_range).to eq("#{@toy.age_range}")
      end
    end

    describe "#user_id" do
      it "should receive user id" do
        expect(@toy.user_id).to be > 0
      end
    end

    describe "#city_id" do
      it "should receive city id" do
        expect(@toy.city_id).to be > 0
      end
    end

    describe "#available" do
      it "should receive a boolean if the toy is available" do
        expect(@toy.available).to be_truthy or falsy
      end
    end

    describe "#created_at" do
      it "should receive a date of when the toy was posted" do
        expect(@toy.created_at).to eq("#{@toy.created_at}")
      end
    end

    describe "#updated_at" do
      it "should receive a date of when the toy was updated" do
        expect(@toy.created_at).to eq("#{@toy.created_at}")
      end
    end

    describe "#image_file_name" do
      it "should receive the toy's image file name" do
        expect(@toy.image_file_name).to eq("#{@toy.image_file_name}")
      end
    end

    describe "#image_content_type" do
      it "should receive the toy's image content type" do
        expect(@toy.image_content_type).to eq("#{@toy.image_content_type}")
      end
    end

    describe "#image_file_size" do
      it "should receive toy's image file size" do
        expect(@toy.image_file_size).to be > 0
      end
    end

    describe "#image_updated_at" do
      it "should receive a date of when the image was updated" do
        expect(@toy.image_updated_at).to eq("#{@toy.image_updated_at}")
      end
    end
end 