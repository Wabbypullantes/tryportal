class AddYearToResearches < ActiveRecord::Migration[5.0]
  def change
    add_column :researches, :year, :integer
  end
end
