class AddUserIdToResearches < ActiveRecord::Migration[5.0]
  def change
    add_column :researches, :user_id, :integer
  end
end
