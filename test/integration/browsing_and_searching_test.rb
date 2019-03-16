
require 'test_helper'

class BrowsingAndSearchingTest < ActionDispatch::IntegrationTest
  fixtures :manufacturers, :suppliers, :phones, :phones_suppliers

  test "browse" do
    jill = new_session_as :jill
    jill.index
    jill.second_page
    jill.phone_details 'Pride and Prejudice'
    jill.latest_phones
  end

  module BrowsingTestDSL
    include ERB::Util
    attr_writer :name

    def index
      get '/catalog/index'
      assert_response :success
      assert_select 'dl#phones' do
        assert_select 'dt', :count => 5
      end
     
      assert_select 'dt' do
        assert_select 'a', 'The Idiot'
      end
      
      check_phone_links
    end

    def second_page
      get '/catalog/index?page=2'
      assert_response :success
      assert_template 'catalog/index'
      assert_equal Phone.find_by_title('Pro Rails E-Commerce'),
                   assigns(:phones).last
      check_phone_links
    end

    def phone_details(title)
      @phone = Phone.where(:title => title).first
      get "/catalog/show/#{@phone.id}"
      assert_response :success
      assert_template 'catalog/show'
      assert_select 'div#content' do
        assert_select 'h1', @phone.title
        assert_select 'h2', "by #{@phone.suppliers.map{|a| a.name}.join(", ")}"
      end
      
    end

    def latest_phones
      get '/catalog/latest'
      assert_response :success
      assert_template 'catalog/latest'
      assert_select 'dl#phones' do
        assert_select 'dt', :count => 5
      end
      
      @phones = Phone.latest(5)
      @phones.each do |a|
        assert_select 'dt' do
          assert_select 'a', a.title
        end
        
      end
    end

    def check_phone_links
      for phone in assigns :phones
        assert_select 'a' do
          assert_select '[href=?]', "/catalog/show/#{phone.id}"
        end
        
      end
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