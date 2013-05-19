class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.string :name
      t.string :email
      t.integer :registry
      t.date :birthdate

      t.timestamps
    end
  end
end
