class ResquesController < ApplicationController
  def show
  end

  def create
    Resque.enqueue(TestResqueJob, params[:state].to_sym => true)
    redirect_to resque_path
  end
end
