class CreateResearches < ActiveRecord::Migration[5.0]
  def change
    create_table :researches do |t|
      t.string :title
      t.string :author
      t.text :description
      t.string :callNo

      t.timestamps
    end
  end
end
