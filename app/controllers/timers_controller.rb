class TimersController < ApplicationController
  def show
  end

  def create
    do_timer
    redirect_to timers_path
  end

  private

  def do_timer
    value = [[0, params[:value].to_i].min, 5].max
    sleep(rand * value)
  end
  add_metrician_method_tracer :do_timer
end
