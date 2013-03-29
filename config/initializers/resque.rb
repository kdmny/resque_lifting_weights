require 'resque_scheduler/server'
# Resque.schedule = YAML.load_file("#{Rails.root}/config/resque_schedule.yml")
ENV["REDISTOGO_URL"] ||= "redis://localhost:6379/"
uri = URI.parse(ENV["REDISTOGO_URL"])
Resque.redis = Redis.new(:host => uri.host, :port => uri.port, :password => uri.password, :thread_safe => true)
Dir["#{Rails.root}/app/jobs/*.rb"].each { |file| require file }
require 'resque-retry'
require 'resque/failure/redis'
require 'resque/failure/airbrake'

# require your jobs & application code.
Resque::Failure::MultipleWithRetrySuppression.classes = [Resque::Failure::Redis, Resque::Failure::Airbrake]
Resque::Failure.backend = Resque::Failure::MultipleWithRetrySuppression
Resque.after_fork = Proc.new { ActiveRecord::Base.establish_connection }