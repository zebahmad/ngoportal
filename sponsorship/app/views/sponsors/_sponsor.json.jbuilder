json.extract! sponsor, :id, :name, :email, :phone, :referred_by, :preferred_communication, :comments, :created_on, :last_updated_on, :created_at, :updated_at
json.url sponsor_url(sponsor, format: :json)