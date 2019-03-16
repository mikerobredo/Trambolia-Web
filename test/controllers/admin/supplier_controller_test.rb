require File.dirname(__FILE__) + '/../../test_helper'  
#supplier
class Admin::SupplierControllerTest < ActionController::TestCase
  fixtures :suppliers

  test "new" do
    get :new
    assert_template 'admin/supplier/new'
    assert_select 'div#content' do
      assert_select 'h1', 'Crear nuevo proveedor'
      assert_select "form[action=\"/admin/supplier/create\"]"
    end
    # assert_tag 'h1', :content => 'Create new supplier'
    # assert_tag 'form', :attributes => { :action => '/admin/supplier/create' }
  end

  test "create" do
    get :new    
    assert_template 'admin/supplier/new'
    assert_difference(Supplier, :count) do
      post :create, :supplier => {:first_name => 'Joel', :last_name => 'Spolsky'}
      assert_response :redirect
      assert_redirected_to :action => 'index'      
    end
    assert_equal 'Proveedor Joel Spolsky ha sido creado con éxito.', flash[:notice]
  end

  test "failing_create" do
    assert_no_difference(Supplier, :count) do
      post :create, :supplier => {:first_name => 'Joel'}
      assert_response :success
      assert_template 'admin/supplier/new'
      assert_select "div[class=\"field_with_errors\"]"
      # assert_tag :tag => 'div', :attributes => {:class => 'field_with_errors'}
    end
  end

  test "edit" do
    get :edit, :id => 1
    assert_select 'input' do
      assert_select '[type=?]', 'text'
      assert_select '[name=?]', 'supplier[first_name]'
      assert_select '[value=?]', 'Joel'
    end
    # assert_tag :tag => 'input', :attributes => { :name => 'supplier[first_name]', :value => 'Joel' }
    assert_select 'input' do
      assert_select '[type=?]', 'text'
      assert_select '[name=?]', 'supplier[last_name]'
      assert_select '[value=?]', 'Spolsky'
    end
    # assert_tag :tag => 'input', :attributes => { :name => 'supplier[last_name]', :value => 'Spolsky' }
  end

  test "update" do
    post :update, :id => 1, :supplier => { :first_name => 'Joseph', :last_name => 'Spolsky' }
    assert_response :redirect
    assert_redirected_to :action => 'show', :id => 1
    assert_equal 'Joseph', Supplier.find(1).first_name
  end

  test "test_destroy" do
    assert_difference(Supplier, :count, -1) do
      post :destroy, :id => 1
      assert_equal flash[:notice], 'Proveedor ha sido eliminado con éxito Joel Spolsky.'
      assert_response :redirect
      assert_redirected_to :action => 'index'
      get :index
      assert_response :success
      assert_select 'div#notice', 'Proveedor ha sido eliminado con éxito Joel Spolsky.'
      # assert_tag :tag => 'div', :attributes => {:id => 'notice'},
      #   :content => 'Succesfully deleted supplier Joel Spolsky.'
    end
  end

  test "show" do
    get :show, :id => 1
    assert_template 'admin/supplier/show'
    assert_equal 'Joel', assigns(:supplier).first_name
    assert_equal 'Spolsky', assigns(:supplier).last_name
    assert_select 'div#content' do
      assert_select 'h1', Supplier.find(1).name
    end
    # assert_tag "h1", :content => Supplier.find(1).name
  end

  test "index" do
    get :index
    assert_response :success
    assert_select 'table' do
      assert_select 'tr', Supplier.count + 1
    end
    # assert_tag :tag => 'table', :children => { :count => Supplier.count + 1, :only => {:tag => 'tr'} }
    Supplier.find_each do |a|
      assert_select 'td', a.name
      # assert_tag :tag => 'td', :content => a.name
    end
  end
end
