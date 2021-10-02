class Event < ApplicationRecord
  belongs_to :organizer, class_name: 'User', foreign_key: 'user_id'
#   has_many :attendees, class_name: 'User'

  validates_uniqueness_of :organizer
  validates_presence_of :name, :location, :date
end
