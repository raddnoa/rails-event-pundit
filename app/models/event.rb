class Event < ActiveRecord::Base
  has_many :sponsors
  belongs_to :user
end
