json.extract! company, :id, :CompanyCode, :Description, :CompanyStatus, :created_at, :updated_at
json.url company_url(company, format: :json)
