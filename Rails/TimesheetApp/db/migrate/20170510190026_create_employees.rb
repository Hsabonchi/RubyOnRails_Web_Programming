class CreateEmployees < ActiveRecord::Migration[5.0]
  def change
    create_table :employees do |t|
      t.string :Firstname
      t.string :Lastname
      t.string :Deparment
      t.datetime :Timein
      t.datetime :Timeout
      t.text :Notification

      t.timestamps
    end
  end
end
