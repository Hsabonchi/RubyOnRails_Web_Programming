json.extract! employee, :id, :Firstname, :Lastname, :Deparment, :Timein, :Timeout, :Notification, :created_at, :updated_at
json.url employee_url(employee, format: :json)
