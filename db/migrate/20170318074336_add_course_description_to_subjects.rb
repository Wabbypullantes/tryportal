class AddCourseDescriptionToSubjects < ActiveRecord::Migration[5.0]
  def change
    add_column :subjects, :course_description, :text
  end
end
