require File.dirname(__FILE__) + '/../test_helper'

class AboutControllerTest < ActionController::TestCase
  test "index" do
    get :index
    assert_response :success
    assert_template 'about/index'
    assert_equal 'Sobre nosotros', assigns(:page_title)
    assert_select 'title', 'Sobre nosotros'
    # assert_tag 'title', :content => 'About Miniemporium'
  end
end
