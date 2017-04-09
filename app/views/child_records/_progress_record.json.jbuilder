json.extract! child_record, :id, :created_at, :updated_at
json.url child_record_url(child_record, format: :json)