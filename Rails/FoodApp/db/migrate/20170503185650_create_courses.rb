class CreateCourses < ActiveRecord::Migration[5.0]
  def change
    create_table :courses do |t|
      t.string :name
      t.integer :portion
      t.string :unitofmeasure
      t.integer :calories
      t.string :meal

      t.timestamps
    end
  end
end
