module Types
  class CustomerType < Types::BaseObject
    field :id, ID, null: false
    field :full_name, String, null: true
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
    field :addresses, [Types::AddressType], null: true
    field :orders, [Types::OrderType], null: true
  end
end
