class TestResqueJob
  extend Metrician::Jobs::ResquePlugin

  @queue = :default_resque

  def self.perform(options)
    return if options["success"]
    raise "suck it nerd" if options["error"]
  end
end
