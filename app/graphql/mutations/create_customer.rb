module Mutations
  class CreateCustomer < Mutations::BaseMutation
    argument :full_name, String, required: true

    type Types::CustomerType

    def resolve(full_name:)
      Customer.create!(full_name: full_name)
    end
  end
end
