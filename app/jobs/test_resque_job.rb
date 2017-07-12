class TestResqueJob
  extend Metrician::Jobs::ResquePlugin

  @queue = :default

  def self.perform(options)
    return if options["success"]
    raise "suck it nerd" if options["error"]
  end
end
