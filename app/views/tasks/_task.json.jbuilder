json.extract! task, :id, :task_id, :title, :desc, :time, :day, :date, :tags, :status, :entity_type, :priority, :user_id, :created_at, :updated_at
json.url task_url(task, format: :json)
