RSpec.describe User, type: :model do

  before do
    user_params = Hash.new
    user_params[:f_name] = FFaker::Name.first_name
    user_params[:l_name] = FFaker::Name.last_name
    user_params[:email] = FFaker::Internet.email
    user_params[:password] = FFaker::Lorem.words(2).join
    user_params[:password_confirmation] = user_params[:password]
    @user = User.create(user_params)
  end

  # describe "#full_name" do
  #   it "joins first name and last name" do
  #     expect(@user.full_name).to eq("#{@user.first_name} #{@user.last_name}")
  #   end
  # end

  # describe "#generate_username" do
  #   before do
  #       @username = @user.generate_username
  #   end

  #   it "includes the first initial in lower case" do
  #     expect(@username).to include(@user.last_name.downcase)
  #   end

  #   it "includes the last name in lower case" do
  #     expect(@username).to include(@user.first_name[0].downcase)
  #   end

  #   it "combines first initial, last name, and a 2-digit number" do
  #     letterpart = "#{@user.first_name[0]}#{@user.last_name}".downcase
  #     # test format of username with regexp
  #     expect(@username).to match(/\A#{letterpart}\d{2}\z/)
  #   end
  # end


end