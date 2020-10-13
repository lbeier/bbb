require 'test_helper'

module Mutations
  class CreateCustomerTest < ActiveSupport::TestCase
    test 'creates a new customer' do
      args = {
        full_name: 'Full Name'
      }
      customer = CreateCustomer.new(object: nil, field: nil, context: {}).resolve(**args)

      assert customer.persisted?
      assert_equal customer.full_name, 'Full Name'
      assert_not_nil customer.id
    end
  end
end
