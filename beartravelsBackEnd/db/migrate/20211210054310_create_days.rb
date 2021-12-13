class CreateDays < ActiveRecord::Migration[6.1]
  def change
    create_table :days do |t|
      t.integer :day
      t.belongs_to :trip
    end
  end
end
