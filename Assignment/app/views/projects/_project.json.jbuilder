json.extract! project, :id, :projects_id, :name, :category, :description, :funded_amount, :current_money, :created_at, :updated_at
json.url project_url(project, format: :json)
