json.extract! course, :id, :course_id, :course_Description, :number_credits, :created_at, :updated_at
json.url course_url(course, format: :json)
