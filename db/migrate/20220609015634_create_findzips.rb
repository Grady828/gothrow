class CreateFindzips < ActiveRecord::Migration[7.0]
  def change
    create_table :findzips do |t|
      t.integer :course_id
      t.string :name
      t.string :city
      t.integer :zipcode
      t.string :state

      t.timestamps
    end
  end
end
