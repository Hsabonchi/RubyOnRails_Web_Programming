class CreateCourses < ActiveRecord::Migration[5.0]
  def change
    create_table :courses do |t|
      t.string :department
      t.string :number
      t.string :title
      t.integer :size
      t.integer :hours
      t.string :teacher

      t.timestamps
    end
  end
end
