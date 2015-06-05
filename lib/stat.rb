class Stat < ActiveRecord::Base
 
  belongs_to :users

  validates_presence_of :winner_id, :loser_id

  def self.record_result ttt
    Stat.create! winner_id: ttt.winning_player.database_user.id, loser_id: ttt.losing_player.database_user.id
  end

end