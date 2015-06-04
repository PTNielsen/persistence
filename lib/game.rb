class Game < ActiveRecord::Base

  belongs_to :user

  validates_presence_of :user_id, :game_id

end