class MemcachedsController < ApplicationController
  def show
    @value = $memcached.get("foo")
  end

  def update
    $memcached.set("foo", params[:value])
    redirect_to memcached_path
  end
end
