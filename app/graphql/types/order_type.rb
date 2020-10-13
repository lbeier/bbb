module Types
  class OrderType < Types::BaseObject
    field :id, ID, null: false
    field :delivery_date, String, null: true
    field :delivery_timeframe, String, null: true
    field :paid_to, String, null: true
    field :amount, String, null: true
    field :payment_method, String, null: true
    field :discount, String, null: true
    field :sale_channel, String, null: true
    field :message, String, null: true
    field :customer_id, Integer, null: false
    field :address_id, Integer, null: false
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
  end
end
