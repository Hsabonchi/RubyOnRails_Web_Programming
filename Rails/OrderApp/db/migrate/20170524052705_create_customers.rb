class CreateCustomers < ActiveRecord::Migration[5.0]
  def change
    create_table :customers do |t|
      t.string :customer_name
      t.string :city
      t.references :representative, foreign_key: true

      t.timestamps
    end
  end
end
