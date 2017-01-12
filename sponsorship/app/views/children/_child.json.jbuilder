json.extract! child, :id, :name, :photograph, :enrolled_on, :created_on, :last_updated_on, :created_at, :updated_at
json.url child_url(child, format: :json)