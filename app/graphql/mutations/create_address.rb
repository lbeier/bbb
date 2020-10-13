module Mutations
  class CreateAddress < Mutations::BaseMutation
    argument :street, String, required: true
    argument :number, String, required: true
    argument :postcode, String, required: true
    argument :additional_info, String, required: true
    argument :customer_id, Integer, required: true

    type Types::AddressType

    def resolve(street:, number:, postcode:, additional_info:, customer_id:)
      Address.create!(
        street: street,
        number: number,
        postcode: postcode,
        additional_info: additional_info,
        customer_id: customer_id
    )
    end
  end
end
