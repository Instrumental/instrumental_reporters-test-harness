class TestSidekiqWorker
  include Sidekiq::Worker

  sidekiq_options queue: :default_sidekiq

  def perform(options = {})
    return if options["success"]
    raise "suck it nerd" if options["error"]
  end
end
