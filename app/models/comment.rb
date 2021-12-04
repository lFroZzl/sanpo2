class Comment < ApplicationRecord
    belongs_to :my_user, class_name: 'User', primary_key: :id, foreign_key: :my_id
    belongs_to :target_user, class_name: 'User', primary_key: :id, foreign_key: :target_id
    belongs_to :event, optional: true
end
