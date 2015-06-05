class CreateStats < ActiveRecord::Migration
  
  def change
    create_table "stats" do |t|
      t.integer "winner_id"
      t.integer "loser_id"
      t.datetime "created_at"
    end
  end

end