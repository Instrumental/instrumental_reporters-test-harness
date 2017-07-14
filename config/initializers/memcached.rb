if Rails.env.production?
  $memcached = Dalli::Client.new(
    ENV["MEMCACHE_SERVERS"],
    username: ENV["MEMCACHE_USERNAME"],
    password: ENV["MEMCACHE_PASSWORD"]
  )
else
  $memcached = Dalli::Client.new("localhost:11211")
end
