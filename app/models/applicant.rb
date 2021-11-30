class Applicant < ApplicationRecord
    belongs_to :my_user, class_name: 'User', primary_key: :id, foreign_key: :my_id
    belongs_to :Event_number, class_name: 'Event', primary_key: :id, foreign_key: :Event_id
    belongs_to :user
    has_one :event
end
