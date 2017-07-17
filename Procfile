web: bundle exec puma -t 5:5 -p ${PORT:-3000} -e ${RACK_ENV:-development}
worker: bundle exec sidekiq -c 5 -q default_sidekiq
worker: bundle exec rake resque:work QUEUE=default_resque
worker: bundle exec rake jobs:work