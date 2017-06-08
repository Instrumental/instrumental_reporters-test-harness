class ExternalServicesController < ApplicationController
  def show
  end

  def create
    Net::HTTP.get(URI.parse("http://example.com/"))
    redirect_to external_service_path
  end
end
