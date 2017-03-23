class CreateSubjects < ActiveRecord::Migration[5.0]
  def change
    create_table :subjects do |t|
      t.string :subject_code
      t.string :subject_title
      t.integer :units
      t.integer :lec_units
      t.integer :lab_units

      t.timestamps
    end
  end
end
