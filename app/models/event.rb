class Event < ApplicationRecord
  belongs_to :organizer, class_name: 'User', foreign_key: 'user_id'
  has_and_belongs_to_many :users, -> { distinct }

  validates_uniqueness_of :organizer
  validates_presence_of :name, :location, :date
end
