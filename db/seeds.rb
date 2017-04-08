# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
company = Company.create([{"CompanyCode": "TESTE", "Description": "Empresa de Teste" ,"CompanyStatus": 1}])
months1 = Month.create([{aasm_state: :inicio , month: Time.new(2016,1,1), company: company[0], import_parties_status: 0, import_loans_status: 0, import_mitigants_status: 0}])
#endq