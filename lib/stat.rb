class Stat < ActiveRecord::Base

  belongs_to :user

  validates_presence_of :winner, :loser

end