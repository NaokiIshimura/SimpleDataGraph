json.extract! auth_token, :id, :user_id, :auth_token, :created_at, :updated_at
json.url auth_token_url(auth_token, format: :json)
