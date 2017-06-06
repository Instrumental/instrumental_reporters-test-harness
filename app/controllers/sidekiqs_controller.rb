class SidekiqsController < ApplicationController
  def show
  end

  def create
    TestSidekiqWorker.perform_async(params[:state].to_sym => true)
    redirect_to sidekiq_path
  end
end
