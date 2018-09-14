require 'rails_helper'

RSpec.describe User, type: :model do
  it { should validate_presence_of(:email) }
  it { should validate_presence_of(:password_digest) }
  it 'should validate length of password' do
    user = User.new(email: 'me@you.com', password: 'star')
    expect(user.valid?).to eq(false)
  end

  it '#is_password? should check for correct password'



  it '#reset_session_token should reset the session token'



  it '::find_by_credentials should find a User based on email and correct password'


end
