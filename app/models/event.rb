class Event < ApplicationRecord

    belongs_to :event_host, class_name: 'User', primary_key: :id, foreign_key: :user_id
    belongs_to :event_sport, class_name: 'Sport', primary_key: :id, foreign_key: :sport_id
    belongs_to :event_location, class_name: 'Location', primary_key: :id, foreign_key: :location_id

    has_one :location
    has_one :sport
    has_many :comments
    has_many :applicants
    belongs_to :user
end
