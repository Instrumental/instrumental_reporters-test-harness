class ExceptionsController < ApplicationController
  def show
  end

  def create
    raise StandardError.new("Exception for profit!")
  end
end
