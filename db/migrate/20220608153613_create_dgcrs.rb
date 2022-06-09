class CreateDgcrs < ActiveRecord::Migration[7.0]
  def change
    create_table :dgcrs do |t|
      t.integer :course_id
      t.string :name
      t.string :city
      t.integer :zipcode

      t.timestamps
    end
  end
end
