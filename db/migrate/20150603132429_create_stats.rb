class CreateStats < ActiveRecord::Migration
  
  def change
    create_table "stats" do |t|
      t.integer "user_1_id"
      t.integer "user_2_id"
      t.integer "winner"
      t.datetime "created_at"
    end
  end

end