module Mutations
  class CreateOrder < Mutations::BaseMutation
    argument :delivery_date, String, required: true
    argument :delivery_timeframe, String, required: true
    argument :paid_to, String, required: true
    argument :amount, String, required: true
    argument :payment_method, String, required: true
    argument :discount, String, required: false
    argument :sale_channel, String, required: false
    argument :message, String, required: false
    argument :customer_id, Integer, required: true
    argument :address_id, Integer, required: true

    type Types::OrderType

    def resolve(
      delivery_date:,
      delivery_timeframe:,
      paid_to:,
      amount:,
      payment_method:,
      discount:,
      sale_channel:,
      message:,
      customer_id:,
      address_id:
    )
      Order.create!(
        delivery_date: delivery_date,
        delivery_timeframe: delivery_timeframe,
        paid_to: paid_to,
        amount: amount,
        payment_method: payment_method,
        discount: discount,
        sale_channel: sale_channel,
        message: message,
        customer_id: customer_id,
        address_id: address_id
      )
    end
  end
end
