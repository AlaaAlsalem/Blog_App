require 'test_helper'

RSpec.describe 'Posts', type: :request do
  describe 'GET /index' do
    get posts_index_url
    assert_response :success
  end

  describe 'GET /show' do
    get posts_show_url
    assert_response :success
  end
end
