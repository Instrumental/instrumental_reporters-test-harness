MetricianTestHarness::Application.config.middleware.delete(Metrician::RequestTiming)
MetricianTestHarness::Application.config.middleware.insert(0, Metrician::RequestTiming)
