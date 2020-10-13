require 'test_helper'

module Mutations
  class OrderQueryTypeTest < ActiveSupport::TestCase
    test 'should query orders' do
      create(:order)

      query = %(
        {
          orders {
            addressId
            customerId
            deliveryTimeframe
          }
        }
      )

      result = BrazilianBakeriesSchema.execute(query).as_json

      orders = result.dig('data', 'orders', 0)

      assert_kind_of Integer, orders.dig('addressId')
      assert_kind_of Integer, orders.dig('customerId')
      assert_equal 'Antes do meio-dia', orders.dig('deliveryTimeframe')
    end
  end
end