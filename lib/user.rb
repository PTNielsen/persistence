class User < ActiveRecord::Base

  has_many :stats

  validates_presence_of :wins, :losses
  validates :name, presence: true, uniqueness: true

  def wins
    win_count = Stat.where(winner_id: id).count
    return win_count
  end

  def losses
    loss_count = Stat.where(loser_id: id).count
    return loss_count
  end

end