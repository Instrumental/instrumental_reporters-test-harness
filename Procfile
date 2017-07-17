web: bundle exec puma -t 5:5 -p ${PORT:-3000} -e ${RACK_ENV:-development}
worker: bundle exec sidekiq -c 5 -q default_sidekiq
resque: env TERM_CHILD=1 QUEUE=default_resque bundle exec rake resque:work
worker: bundle exec rake jobs:work