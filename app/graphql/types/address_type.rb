module Types
  class AddressType < Types::BaseObject
    field :id, ID, null: false
    field :street, String, null: false
    field :number, String, null: false
    field :postcode, String, null: false
    field :additional_info, String, null: true
    field :customer_id, Integer, null: false
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
  end
end
