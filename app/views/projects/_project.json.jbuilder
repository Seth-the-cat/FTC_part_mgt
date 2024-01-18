json.extract! project, :id, :project_name, :part_id, :project_type_id, :description, :created_at, :updated_at
json.url project_url(project, format: :json)
