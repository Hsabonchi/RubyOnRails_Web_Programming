json.extract! course, :id, :name, :portion, :unitofmeasure, :calories, :meal, :created_at, :updated_at
json.url course_url(course, format: :json)
