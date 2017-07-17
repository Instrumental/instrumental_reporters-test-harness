# Metrician Test Harness

This is a simple rails application connected to [Instrumental](https://instrumentalapp.com) via the [Metrician](https://github.com/Instrumental/metrician-ruby) library.

You can view live data [on heroku](https://metrician-test-harness.herokuapp.com/).

## Caveats

This is running on a free dyno, so right now only the sidekiq integration is working (because 1 worker).