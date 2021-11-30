class Comment < ApplicationRecord
    belongs_to :my_user, class_name: 'User', primary_key: :id, foreign_key: :my_id
    belongs_to :target_user, class_name: 'User', primary_key: :id, foreign_key: :target_id
    belongs_to :event_number, class_name: 'Event', primary_key: :id, foreign_key: :event_id
    belongs_to :event, optional: true
    has_one :user 
end
