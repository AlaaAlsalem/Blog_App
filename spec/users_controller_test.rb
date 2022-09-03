require 'rails_helper'

 RSpec.describe "Posts", type: :request do
  describe 'GET /index' do
    get users_index_url
    assert_response :success
  end

  describe 'GET /show' do
    get users_show_url
    assert_response :success
  end
end
