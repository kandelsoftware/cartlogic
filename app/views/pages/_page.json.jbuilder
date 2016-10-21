json.extract! page, :id, :home, :about, :faqs, :contact, :created_at, :updated_at
json.url page_url(page, format: :json)