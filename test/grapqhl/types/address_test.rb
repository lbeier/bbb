require 'test_helper'

module Types
  class AddressQueryTypeTest < ActiveSupport::TestCase
    test 'should query addresses' do
      create(:address)

      query = %(
        {
          addresses {
            street
            number
            postcode
            additionalInfo
            customerId
          }
        }
      )

      result = BrazilianBakeriesSchema.execute(query).as_json

      expected_address = {
        'street' => 'Mitte',
        'number' => '10',
        'postcode' => '10111',
        'additionalInfo' => 'None',
        'customerId' => 1
      }

      assert_equal result.dig('data', 'addresses', 0), expected_address
    end
  end
end
