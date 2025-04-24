# Be sure to restart your server when you modify this file.

# Avoid CORS issues when API is called from the frontend app.
# Handle Cross-Origin Resource Sharing (CORS) in order to accept cross-origin Ajax requests.

# Read more: https://github.com/cyu/rack-cors

Rails.application.config.middleware.insert_before 0, Rack::Cors do
  allow do
    # Use a default value if FRONTEND_URL isn't set
    # or split multiple URLs if comma-separated values are provided
    origins ENV.fetch("FRONTEND_URL", "http://localhost:3000").split(',').map(&:strip)
    
    resource "*",
      headers: :any,
      methods: [:get, :post, :put, :patch, :delete, :options, :head]
  end
end