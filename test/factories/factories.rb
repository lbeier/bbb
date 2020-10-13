FactoryBot.define do
  factory :customer do
    full_name { 'FirstName LastName' }
  end

  factory :address do
    street { 'Mitte' }
    number { '10' }
    postcode { '10111' }
    additional_info { 'None' }
    customer
  end

  factory :order do
    delivery_date { '21/10/2020' }
    delivery_timeframe { 'Antes do meio-dia' }
    paid_to { 'Hanna' }
    amount { '32.50' }
    payment_method { 'SEPA' }
    discount { '10%' }
    sale_channel { 'instagram' }
    message { 'Uma mensagem' }
    address
    customer
  end
end
