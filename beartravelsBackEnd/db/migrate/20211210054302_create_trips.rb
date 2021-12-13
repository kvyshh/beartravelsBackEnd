class CreateTrips < ActiveRecord::Migration[6.1]
  def change
    create_table :trips do |t|
      t.string :title
      t.date :startDate
      t.date :endDate
      t.string :destination
      t.belongs_to :user
    end
  end
end
