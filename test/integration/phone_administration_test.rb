#require File.dirname(__FILE__) + '/../test_helper'
require 'test_helper'

class PhoneAdministrationTest < ActionDispatch::IntegrationTest

  test "phone_administration" do
    manufacturer = Manufacturer.create(:name => 'Phones of Ruby')
    supplier = Supplier.create(:first_name => 'John', :last_name => 'Anderson')
    george = new_session_as(:george)

    new_phone_ruby = george.add_phone :phone => {
      :title => 'A new Phone of Ruby',
      :manufacturer_id => manufacturer.id,
      :supplier_ids => [supplier.id],
      :manufactured_at => Time.now,
      :imei => '123-123-123-X',
      :blurb => 'A new Phone of Ruby',
      :price => 45.5
    }

    george.list_phones
    george.show_phone new_phone_ruby
    george.edit_phone new_phone_ruby, :phone => {
      :title => 'A very new Phone of Ruby',
      :manufacturer_id => manufacturer.id,
      :supplier_ids => [supplier.id],
      :manufactured_at => Time.now,
      :imei => '123-123-123-X',
      :blurb => 'A very new Phone of Ruby',
      :price => 50
    }

    bob = new_session_as(:bob)
    bob.delete_phone new_phone_ruby
  end

  private

  module PhoneTestDSL
    attr_writer :name

    def add_phone(parameters)
      supplier = Supplier.first
      manufacturer = Manufacturer.first
      get '/admin/phone/new'
      assert_response :success
      assert_template 'admin/phone/new'
      assert_select 'select#phone_manufacturer_id' do
        assert_select "option[value=\"#{manufacturer.id}\"]", manufacturer.name
      end
     
      assert_select "select[name=\"phone[supplier_ids][]\"]" do
        assert_select "option[value=\"#{supplier.id}\"]", supplier.name
      end
     
      post '/admin/phone/create', parameters
      assert_response :redirect
      follow_redirect!
      assert_response :success
      assert_template 'admin/phone/index'
      page = Phone.all.count / 5 + 1
      get "/admin/phone/index/?page=#{page}"
      assert_select 'td', parameters[:phone][:title]
      
      phone = Phone.find_by_title(parameters[:phone][:title])
      return phone;
    end

    def edit_phone(phone, parameters)
      get "/admin/phone/edit?id=#{phone.id}"
      assert_response :success
      assert_template 'admin/phone/edit'
      post "/admin/phone/update?id=#{phone.id}", parameters
      assert_response :redirect
      follow_redirect!
      assert_response :success
      assert_template 'admin/phone/show'
    end

    def show_phone(phone)
      get "/admin/phone/show/#{phone.id}"
      assert_response :success
      assert_template 'admin/phone/show'
    end

    def delete_phone(phone)
      post "/admin/phone/destroy?id=#{phone.id}"
      assert_response :redirect
      follow_redirect!
      assert_template 'admin/phone/index'
    end



    def list_phones
      get '/admin/phone/index'
      assert_response :success
      assert_template 'admin/phone/index'
    end
  end

  def new_session_as(name)
    open_session do |session|
      session.extend(PhoneTestDSL)
      session.name = name
      yield session if block_given?
    end
  end
end
