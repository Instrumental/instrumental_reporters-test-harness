# Metrician Test Harness

This is a simple rails application connected to [Instrumental](https://instrumentalapp.com) via the [Metrician](https://github.com/Instrumental/metrician-ruby) library.

You can view live data [on heroku](https://metrician-test-harness.herokuapp.com/).

## Caveats

This is running on a free dyno, so right now only the sidekiq integration is working (because 1 worker).


## The running job system

What job system is happening right now?

```
heroku ps
```

#### Running sidekiq:

```
heroku ps:scale worker=0 resque=0 sidekiq=1
```

#### Running resque:

```
heroku ps:scale worker=0 sidekiq=0 resque=1
```

#### Running delayed_job:

```
heroku ps:scale resque=0 sidekiq=0 worker=1
```
