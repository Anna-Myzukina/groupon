require 'rails_helper'

RSpec.describe 'UsersLogins', type: :request do
  describe 'GET /users_logins' do
    it 'User login with invalid information' do
      get login_path
      assert_template 'sessions/new'
      post login_path, session: { name: '' }
      assert_template 'sessions/new'
      assert_not flash.empty?
      get root_path
      assert flash.empty?
    end
  end
end
