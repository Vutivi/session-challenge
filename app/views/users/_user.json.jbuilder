json.extract! user, :id, :login, :avatar_url, :url, :followers_url, :subscriptions_url, :events_url, :type, :created_at, :updated_at
json.url user_url(user, format: :json)
