require 'test_helper'

class MachineModelTest < ActiveSupport::TestCase

  # Note: in a real app would have a full test suite set up with RSPEC and Database cleaner and seedfu
  # seed data is being populated from (RAILS_ROOT)/db/seeds
  test ".cross_sell: should return an array consisting of the minimum of each flavor" do

    # start to build the correct result array for Machine with SKU CM001
    x_sell_test = []
    x_sell_test << PodModel.where(sku: 'CP001').take
    x_sell_test << PodModel.where(sku: 'CP011').take
    x_sell_test << PodModel.where(sku: 'CP021').take
    x_sell_test << PodModel.where(sku: 'CP031').take

    # test a failure condition -> x_sell_test is missing one entry
    x_sell_prod = MachineModel.where(sku: 'CM001').take.cross_sell_products
    assert_not x_sell_prod == x_sell_test

    # test the success condition -> by adding the missing entry
    x_sell_test << PodModel.where(sku: 'CP041').take
    assert x_sell_prod == x_sell_test
  end
end
