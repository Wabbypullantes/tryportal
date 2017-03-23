class AddContributorsToResearches < ActiveRecord::Migration[5.0]
  def change
    add_column :researches, :contributor, :text
  end
end
