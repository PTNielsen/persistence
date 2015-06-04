class User < ActiveRecord::Base

  has_many :stats, through: :game

  validates_presence_of :wins, :losses
  validates_uniqueness_of :name

  def self.wins
    wins
  end

  def self.loses 
    loses
  end

end