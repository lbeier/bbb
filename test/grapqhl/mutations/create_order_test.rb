require 'test_helper'

module Mutations
  class CreateOrderTest < ActiveSupport::TestCase
    test 'creates a new order' do
      customer = create(:customer)
      address = create(:address)

      args = {
        delivery_date: '17.10.1988',
        delivery_timeframe: 'manhã',
        paid_to: 'Hanna',
        amount: '21.10',
        payment_method: 'Sepa',
        discount: '1',
        sale_channel: 'Instagram',
        message: 'Test',
        customer_id: customer.id,
        address_id: address.id
      }
      order = CreateOrder.new(object: nil, field: nil, context: {}).resolve(**args)

      assert order.persisted?
      assert_not_nil order.id
    end
  end
end
