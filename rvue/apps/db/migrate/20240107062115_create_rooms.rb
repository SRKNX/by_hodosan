class CreateRooms < ActiveRecord::Migration[7.0]
  def change
    create_table :rooms do |t|
      t.string :name
      t.text :profile
      t.text :memo

      t.timestamps
    end
  end
end
