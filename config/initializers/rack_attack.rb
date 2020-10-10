class Rack::Attack
  Rack::Attack.cache.store = ActiveSupport::Cache::MemoryStore.new
  # block too many requests same IP
  Rack::Attack.throttle("Requests by IP", limit: 10, period: 60) do |request|
    request.ip
  end

  # Block too many Login attempts
  Rack::Attack.throttle('limit logins per email', limit: 6, period: 60) do |req|
    if req.path == '/login' && req.post?
      # Normalize the email, using the same logic as your authentication process, to
      # protect against rate limit bypasses.
      email = JSON.parse(req.body.read())['email']
      req.body.rewind
      email
    end
  end
end

