class CreateTodos < ActiveRecord::Migration[6.1]
  def change
    create_table :todos do |t|
      t.string :place
      t.string :memo
      t.integer :day_id
      t.decimal :latitude
      t.decimal :longitude
      t.boolean :open_now
      t.decimal :rating
      t.string :photo
      t.string :address
    end
  end
end
