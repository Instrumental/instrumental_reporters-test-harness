web: bundle exec puma -t 5:5 -p ${PORT:-3000} -e ${RACK_ENV:-development}
worker_delayed_job: bundle exec sidekiq -c 5 -q default_sidekiq
worker_resque: bundle exec rake resque:work QUEUE=default_resque
worker_sidekiq: bundle exec rake jobs:work