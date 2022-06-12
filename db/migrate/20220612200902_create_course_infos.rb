class CreateCourseInfos < ActiveRecord::Migration[7.0]
  def change
    create_table :course_infos do |t|
      t.string :name
      t.integer :holes

      t.timestamps
    end
  end
end
