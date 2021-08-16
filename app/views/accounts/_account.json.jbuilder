json.extract! account, :id, :username, :password, :email, :role, :credit, :created_at, :updated_at
json.url account_url(account, format: :json)
