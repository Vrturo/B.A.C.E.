require_relative 'spec_helper'

describe 'index_controller' do
    before :all do
      User.destroy_all
      @user = User.new(name: "fake", email: "fake@mail.com", password_hash: "123456")
      @user.save
    end

  describe 'GET /' do
    it 'Renders a successful status' do
      get '/'
      expect(last_response.status).to eq(200)
    end
  end

  describe 'GET /sessions/new' do
    it 'Renders a successful status' do
      get '/users/sessions/new'
      expect(last_response.status).to eq(200)
    end
  end

   describe 'GET users/sessions/new' do
    it 'Renders a successful status' do
      get 'users/sessions/new'
      expect(last_response.status).to eq(200)
    end
  end

  describe 'Sign up' do
    before :all do
      User.destroy_all
    end
    it 'Renders a successful status' do
      get '/users/new'
      expect(last_response.status).to eq(200)
    end

    it 'Creates a new user' do
      user_data = {name: "fake", email: "fake123@mail.com", password_hash: "123456"}
      post '/users', user_data
      user = User.find_by(email: user_data[:email])
      expect(user.name).to eq(user_data[:name])
    end

    it 'Creating a new user adds a user to the DB' do
      user_data = {name: "fake", email: "fake123@mail.com", password_hash: "123456"}
      post '/users', user_data
      expect(User.count).to eq(1)
    end
  end
end
