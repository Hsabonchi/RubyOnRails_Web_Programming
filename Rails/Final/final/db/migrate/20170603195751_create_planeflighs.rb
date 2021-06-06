class CreatePlaneflighs < ActiveRecord::Migration[5.0]
  def change
    create_table :planeflighs do |t|
      t.string :airline
      t.integer :number
      t.string :fromcity
      t.string :tocity
      t.references :plane, foreign_key: true

      t.timestamps
    end
  end
end
