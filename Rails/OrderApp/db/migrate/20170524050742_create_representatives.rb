class CreateRepresentatives < ActiveRecord::Migration[5.0]
  def change
    create_table :representatives do |t|
      t.string :last_name
      t.string :first_name
      t.string :region
      t.date :hire_date
      t.string :phone

      t.timestamps
    end
  end
end
