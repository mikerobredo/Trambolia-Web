#require File.dirname(require) + '/../test_helper'
require 'test_helper'

class ManufacturerTest < ActiveSupport::TestCase
	test "failing_create" do
	manufacturer = Manufacturer.new
	assert_equal false, manufacturer.save
	assert_equal 2, manufacturer.errors.count
	assert manufacturer.errors[:name]
	end

	test "create" do
 	manufacturer = Manufacturer.new(:name => 'Hola')
	assert manufacturer.save
	end
end