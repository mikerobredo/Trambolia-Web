require File.dirname(__FILE__) + '/../test_helper'

class AuthenticationTest < ActionDispatch::IntegrationTest

  def setup
    User.create(:name => 'George Smith', :login => 'george', :email => 'george@emporium.com',
                :password => 'cheetah', :password_confirmation => 'cheetah')
  end

  test "successful_login" do
    george = new_session_as(:george)
    george.tries_to_go_to_admin
    george.logs_in_succesfully("george", "cheetah")
  end

  test "failed_login" do
    harry = new_session_as(:harry)
    harry.tries_to_go_to_admin
    harry.fails_login("harry", "micky")
  end

  private

  module BrowsingTestDSL
    include ERB::Util
    attr_writer :name

    def tries_to_go_to_admin
      get '/admin/phone/new'
      assert_response :redirect
      assert_redirected_to '/user_sessions/new'
    end

    def logs_in_succesfully(login, password)
      post_login(login, password)
      assert_response :redirect
      assert_redirected_to '/admin/phone/new'
    end

    def fails_login(login, password)
      post_login(login, password)
      assert_response :success
      assert_template 'user_sessions/new'
      assert_select 'div#content' do
        assert_select 'div#errorExplanation'
        assert_select 'li', 'Login is not valid'
      end
      # assert_tag :tag => 'div', :attributes => { :id => 'errorExplanation' }
      # assert_tag :tag => 'li', :content => 'Login is not valid'
    end

    private

    def post_login(login, password)
      post '/user_sessions/create', :user_session => { :login => login, :password => password }
    end
  end

  def new_session_as(name)
    open_session do |session|
      session.extend(BrowsingTestDSL)
      session.name = name
      yield session if block_given?
    end
  end
end
