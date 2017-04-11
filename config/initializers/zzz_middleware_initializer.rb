InstrumentalReportersTestHarness::Application.config.middleware.delete("RequestTiming")
InstrumentalReportersTestHarness::Application.config.middleware.insert(0, "RequestTiming")
