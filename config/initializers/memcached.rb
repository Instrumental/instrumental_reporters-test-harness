$memcached = Dalli::Client.new(ENV["MEMCACHEDCLOUD_SERVERS"] || "localhost:11211")
# if Rails.env.production?
#   $memcached = Dalli::Client.new
# else
#   $memcached = Dalli::Client.new("localhost:11211")
# end
