require 'rails_helper'

RSpec.describe User, type: :model do
  it { should validate_presence_of(:email) }
  it { should validate_presence_of(:password_digest) }
  it { should validate_length_of(:password).is_at_least(6)}

  # describe "#is_password?" do
  #   it 'checks if input password matches user\'s stored password digest' do
      
  #   end
  # end

  # describe "#reset_session_token" do
  #   it 'resets user\'s session token' do

  #   end

  #   it 'saves user\'s new session token into database' do

  #   end

  #   it 'returns user\'s session token' do

  #   end
  # end

  # describe "::find_by_credentials" do

  # end
end
