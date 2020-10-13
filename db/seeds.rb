# db/seeds.rb

margot = Customer.create!(
  full_name: 'Margot'
)

buk = Customer.create!(
  full_name: 'Buk'
)

totoro = Customer.create!(
  full_name: 'Totoro'
)

andreasstrasse = Address.create!(
  street: 'Andreasstraße',
  number: '20',
  postcode: '10243',
  additional_info: 'Grillo/Beier',
  customer: margot
)

Order.create!(
  delivery_date: "",
  delivery_timeframe: '',
  paid_to: 'Anna',
  payment_method: 'SEPA',
  discount: '10',
  sale_channel: 'instagram',
  message: 'Olá!',
  customer: margot,
  address: andreasstrasse
)

Order.create!(
  delivery_date: "",
  delivery_timeframe: '',
  paid_to: 'Hanna',
  payment_method: 'Paypal',
  discount: '0',
  sale_channel: 'instagram',
  message: 'Olá!',
  customer: buk,
  address: andreasstrasse
)

Order.create!(
  delivery_date: "",
  delivery_timeframe: '',
  paid_to: 'Anna',
  payment_method: 'SEPA',
  discount: '10',
  sale_channel: 'instagram',
  message: 'Olá!',
  customer: totoro,
  address: andreasstrasse
)