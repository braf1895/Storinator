json.extract! user, :id, :uName, :fName, :lName, :email, :created_at, :updated_at
json.url user_url(user, format: :json)
