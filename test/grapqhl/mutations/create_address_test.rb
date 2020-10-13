require 'test_helper'

module Mutations
  class CreateAddressTest < ActiveSupport::TestCase
    test 'should create an address' do
      customer = create(:customer)
      args = {
        street: 'Mitte',
        number: '10',
        postcode: '10111',
        additional_info: 'LastName',
        customer_id: customer.id
      }
      address = CreateAddress.new(object: nil, field: nil, context: {}).resolve(**args)

      assert address.persisted?
    end
  end
end
