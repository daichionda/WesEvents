class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :eventName
      t.string :location
      t.time_select :startTime
      t.date_select :startDay
      t.time_select :endTime
      t.date_select :endDay
      t.text :description
      t.string :facebookLink
    end
  end
end
