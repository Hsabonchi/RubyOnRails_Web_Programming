json.extract! inventory, :id, :description, :quantity_on_hand, :created_at, :updated_at
json.url inventory_url(inventory, format: :json)
