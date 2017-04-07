json.extract! collaborator, :id, :project_id, :user_id, :approved, :created_at, :updated_at
json.url collaborator_url(collaborator, format: :json)
