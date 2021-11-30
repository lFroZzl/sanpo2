class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable

  belongs_to :user_location, class_name: 'Location', primary_key: :id, foreign_key: :location_id

  enum role: [ :user, :admin ]

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_one :location
  has_many :events
  has_many :comments
  has_many :applicants
end
