json.extract! question, :id, :version, :question, :type, :created_at, :updated_at
json.url question_url(question, format: :json)
