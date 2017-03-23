class AddUserIdToOfficers < ActiveRecord::Migration[5.0]
  def change
    add_column :officers, :user_id, :integer
  end
end
