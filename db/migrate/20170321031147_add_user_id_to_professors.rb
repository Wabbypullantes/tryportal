class AddUserIdToProfessors < ActiveRecord::Migration[5.0]
  def change
    add_column :professors, :user_id, :integer
  end
end
