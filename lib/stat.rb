class Stat < ActiveRecord::Base
 
  belongs_to :users

  validates_presence_of :winner_id, :loser_id

  def record_result ttt
    Stat.create! winning_id: ttt.winning_player.database_user.id, losing_id: ttt.losing_player.database_user.id
  end

end