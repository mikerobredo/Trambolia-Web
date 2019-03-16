#require File.dirname(__FILE__) + '/../test_helper'
require 'test_helper'

class PhoneTest < ActiveSupport::TestCase
  fixtures :suppliers, :manufacturers, :phones#, :suppliers_phones

  test "failing_create" do
    phone = Phone.new
    assert_equal false, phone.save
    assert_equal 6, phone.errors.count
    assert phone.errors[:title]
    assert phone.errors[:manufacturer]
    assert phone.errors[:suppliers]
    assert phone.errors[:manufactured_at]
    assert phone.errors[:imei]
    #assert phone.errors[:blurb]
    assert phone.errors[:price]
  end

  test "create" do
    phone = Phone.new(
      :title => 'Ruby on Rails',
      :suppliers => Supplier.all,
      :manufacturer_id => Manufacturer.find(1).id,
      :manufactured_at => Time.now,
      :imei => '123-123-123-1',
      :blurb => 'A great phone',
      :price => 45.5
    )
  assert phone.save
  end

  test "has_many_and_belongs_to_mapping" do
    apress = Manufacturer.find_by_name("HTC");
    count = apress.phones.count
    phone = Phone.new(
      :title => 'Pro Rails E-Commerce 8th Edition',
      :suppliers => [Supplier.find_by_first_name_and_last_name('Joel', 'Spolsky'),
                   Supplier.find_by_first_name_and_last_name('Jeremy', 'Keith')],
      :manufacturer_id => apress.id,
      :manufactured_at => Time.now,
      :imei => '123-123-123-x',
      :blurb => 'E-Commerce on Rails',
      :price => 55.5
    )
    apress.phones << phone
    apress.reload
    phone.reload
    assert_equal count + 1, apress.phones.count
    assert_equal 'HTC', phone.manufacturer.name
  end

  test "has_many_and_belongs_to_many_suppliers_mapping" do
    phone = Phone.new(
      :title => 'Pro Rails E-Commerce 8th Edition',
      :suppliers => [Supplier.find_by_first_name_and_last_name('Joel', 'Spolsky'),
                   Supplier.find_by_first_name_and_last_name('Jeremy', 'Keith')],
      :manufacturer_id => Manufacturer.find_by_name("HTC").id,
      :manufactured_at => Time.now,
      :imei => '123-123-123-x',
      :blurb => 'E-Commerce on Rails',
      :price => 55.5
    )
    assert phone.save
    phone.reload
    assert_equal 2, phone.suppliers.count
    assert_equal 2, Supplier.find_by_first_name_and_last_name('Joel', 'Spolsky').phones.count
  end
end
