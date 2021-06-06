class CreateCoursedepartments < ActiveRecord::Migration[5.0]
  def change
    create_table :coursedepartments do |t|
      t.string :
      t.string :number
      t.string :title
      t.integer :size
      t.integer :hours

      t.timestamps
    end
  end
end
