if Rails.env.production?
  $memcached = Dalli::Client.new(
    ENV["MEMCACHEDCLOUD_SERVERS"],
    username: ENV["MEMCACHEDCLOUD_USERNAME"],
    password: ENV["MEMCACHEDCLOUD_PASSWORD"]
  )
else
  $memcached = Dalli::Client.new("localhost:11211")
end
