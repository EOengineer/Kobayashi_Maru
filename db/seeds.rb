# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

CANCER_SUBTYPES = [
'DCIS — Ductal Carcinoma In Situ',
'IDC — Invasive Ductal Carcinoma',
'IDC Type: Tubular Carcinoma of the Breast',
'IDC Type: Medullary Carcinoma of the Breast',
'IDC Type: Mucinous Carcinoma of the Breast',
'IDC Type: Papillary Carcinoma of the Breast',
'IDC Type: Cribriform Carcinoma of the Breast',
'ILC — Invasive Lobular Carcinoma',
'Inflammatory Breast Cancer',
'LCIS — Lobular Carcinoma In Situ',
'Male Breast Cancer',
"Paget's Disease of the Nipple",
'Phyllodes Tumors of the Breast',
'Recurrent and Metastatic Breast Cancer']

CANCER_SUBTYPES.each do |type|
  CancerSubtype.find_or_create_by(name: type)
end

STATUS = ['proposed', 'scheduled', 'in progress', 'completed', 'canceled']

STATUS.each do |status|
  Status.find_or_create_by(name: status)
end

SIZE = ['1', '2-5', '6-10', '11-15', '16-20', '20-30', '30-40', '40-50', '50-100']

SIZE.each do |size|
  Size.find_or_create_by(number: size)
end

DURATION = ['1 month', '3 months', '6 months', '9 months', '12 months']

DURATION.each do |length|
  Duration.find_or_create_by(length: length)
end

STATES = ['Alabama','Alaska','Arizona','Arkansas','California','Colorado','Connecticut','Delaware','Florida','Georgia','Hawaii','Idaho','Illinois','Indiana','Iowa','Kansas','Kentucky','Louisiana','Maine','Maryland','Massachusetts','Michigan','Minnesota','Mississippi','Missouri','Montana','Nebraska','Nevada','New Hampshire','New Jersey','New Mexico','New York','North Carolina','North Dakota','Ohio','Oklahoma','Oregon','Pennsylvania','Rhode Island','South Carolina','South Dakota','Tennessee','Texas','Utah','Vermont','Virginia','Washington','West Virginia','Wisconsin','Wyoming']

STATES.each do |state|
  State.find_or_create_by(name: state)
end
