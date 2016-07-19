class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :eventName
      t.string :location
      t.time :startTime
      t.date :startDay
      t.time :endTime
      t.date :endDay
      t.text :description
      t.string :facebookLink
    end
  end
end
