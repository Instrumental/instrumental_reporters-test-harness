class DelayedJobsController < ApplicationController
  def show
  end

  def create
    Delayed::Job.enqueue(TestDelayedJob.new(params[:state].to_sym => true))
    redirect_to delayed_job_path
  end
end
