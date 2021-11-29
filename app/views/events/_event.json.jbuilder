json.extract! event, :id, :title, :min_age, :max_age, :note, :start_date, :end_date, :participant, :created_at, :updated_at
json.url event_url(event, format: :json)
