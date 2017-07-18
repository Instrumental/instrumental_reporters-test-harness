MetricianTestHarness::Application.config.middleware.delete(Metrician::Middleware::RequestTiming)
MetricianTestHarness::Application.config.middleware.insert(0, Metrician::Middleware::RequestTiming)
