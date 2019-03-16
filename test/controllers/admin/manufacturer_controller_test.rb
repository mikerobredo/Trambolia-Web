require 'test_helper'

class Admin::ManufacturerControllerTest < ActionController::TestCase
  fixtures :manufacturers
  
 test "new" do
    get :new
    assert_response :success
  end

 test "create" do
    num_manufacturers = Manufacturer.count
    post :create, :manufacturer => { :name => 'The Movile Phone Company' }
    assert_response :redirect
    assert_redirected_to :action => 'index'
    assert_equal num_manufacturers + 1, Manufacturer.count
  end

  test "edit" do
    get :edit, :id => 1
    assert_select 'input' do
      assert_select '[type=?]', 'text'
      assert_select '[name=?]', 'manufacturer[name]'
      assert_select '[value=?]', 'HTC'
    end
  end

  test "update" do
    post :update, :id => 1, :manufacturer => { :name => 'Motorola' }
    assert_response :redirect
    assert_redirected_to :action => 'show', :id => 1
    assert_equal 'Motorola', Manufacturer.find(1).name
  end

  test "destroy" do
    assert_difference(Manufacturer, :count, -1) do
      post :destroy, :id => 1
      assert_equal flash[:notice], 'Fabricante ha sido eliminado con éxito HTC.'
      assert_response :redirect
      assert_redirected_to :action => 'index'
      get :index
      assert_response :success
      assert_select 'div#notice', 'Fabricante ha sido eliminado con éxito HTC.'
    end
  end

  test "show" do
    get :show, :id => 1
    assert_response :success
    assert_template 'admin/manufacturer/show'
    assert_not_nil assigns(:manufacturer)
    assert assigns(:manufacturer).valid?
    assert_select 'div#content' do
      assert_select 'h1', Manufacturer.find(1).name
    end
  end

  test "index" do
    get :index
    assert_response :success
    assert_select 'table' do
      assert_select 'tr', Manufacturer.count + 1
    end
    Manufacturer.find_each do |a|
      assert_select 'td', a.name
    end
  end
end