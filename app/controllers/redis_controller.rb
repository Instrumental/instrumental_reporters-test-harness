class RedisController < ApplicationController
  def show
    @value = $redis.get("foo")
  end

  def update
    $redis.set("foo", params[:value])
    redirect_to redis_path
  end
end
