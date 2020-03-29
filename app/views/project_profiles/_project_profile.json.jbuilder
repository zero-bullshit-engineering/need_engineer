json.extract! project_profile, :id, :name, :short_description, :domain_introduction, :project_link, :created_at, :updated_at
json.url project_profile_url(project_profile, format: :json)
