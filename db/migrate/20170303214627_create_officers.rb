class CreateOfficers < ActiveRecord::Migration[5.0]
  def change
    create_table :officers do |t|
      t.string :president
      t.string :internalvp
      t.string :externalvp
      t.string :secretary
      t.string :treasurer
      t.string :auditor
      t.string :pio
      t.text :fourthrep
      t.text :thirdrep
      t.text :secondrep
      t.string :vpgroup
      t.string :undersec
      t.string :coh
      t.string :undersec2
      t.string :fgh
      t.string :undersec3
      t.string :moderator

      t.timestamps
    end
  end
end
