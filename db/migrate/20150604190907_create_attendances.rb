class CreateAttendances < ActiveRecord::Migration
  def change
    create_table :attendances do |t|
      t.date :date
      t.boolean :present
      t.references :student, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
