json.extract! project, :id, :title, :user_id, :description, :status, :start_date, :ratings, :created_at, :updated_at
json.url project_url(project, format: :json)
