class AddPlaneToPlaneflight < ActiveRecord::Migration[5.0]
  def change
    add_reference :planeflights, :plane, foreign_key: true
  end
end
