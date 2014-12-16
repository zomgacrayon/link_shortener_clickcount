class CreateUrls < ActiveRecord::Migration
  def change
    create_table :urls do |t|
      t.string :url
      t.string :shorten_url
      t.integer :times_clicked, :default =>0, :null=>false
      t.timestamps
    end
  end
end
