class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
      t.string :name
      t.datetime :date_start
      t.datetime :date_end
      t.text :location
      t.integer :capacity

      t.timestamps
    end
  end
end
