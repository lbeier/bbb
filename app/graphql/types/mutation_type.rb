module Types
  class MutationType < Types::BaseObject
    field :create_customer, mutation: Mutations::CreateCustomer
    field :create_address, mutation: Mutations::CreateAddress
    field :create_order, mutation: Mutations::CreateOrder
  end
end
