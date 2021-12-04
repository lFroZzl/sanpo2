class Event < ApplicationRecord

    belongs_to :event_host, class_name: 'User', primary_key: :id, foreign_key: :user_id
    belongs_to :sport
    belongs_to :location, optional: true

    has_many :comments
    has_many :applicants
    
end
