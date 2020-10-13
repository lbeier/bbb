module Types
  class QueryType < Types::BaseObject
    field :customers, # name
          [Types::CustomerType], # result type. [...] means an array
          null: false, # nullable?
          description: 'Returns a list of customers' # human-readable message to a field that will be automatically added to documentation providing more context to clients
    def customers
      Customer.all
    end

    field :addresses,
          [Types::AddressType],
          null: false,
          description: 'A list of addresses'
    def addresses
      Address.all
    end

    field :orders,
          [Types::OrderType],
          null: false,
          description: 'A list of orders'
    def orders
      Order.all
    end
  end
end
