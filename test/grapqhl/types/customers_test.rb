require 'test_helper'

module Types
  class CustomerQueryTypeTest < ActiveSupport::TestCase
    test 'should query customer' do
      create(:customer)

      query = %(
        {
            customers {
              fullName
            }
        }
      )

      result = BrazilianBakeriesSchema.execute(query).as_json

      full_name = result.dig('data', 'customers', 0, 'fullName')

      assert_equal full_name, 'FirstName LastName'
    end
  end
end
