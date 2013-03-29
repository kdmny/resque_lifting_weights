require 'resque/tasks'
require 'resque_scheduler/tasks'
# ResqueScheduler.schedule = YAML.load_file(File.join(Rails.root, 'config/resque_schedule.yml'))
task "resque:setup" => :environment do
  require 'resque'
  require 'resque_scheduler'
  require 'resque/scheduler'

  # ONLY on Heroku, since they are still running PostgreSql 8 on their shared plan.
  # This block of code is not needed on PostgreSql 9, as tested on local environment.
  # Issue: My best guess is that master resque process establishes connection to db,
  # while loading rails app classes, models, etc, and that connection becomes corrupted
  # in fork()ed process (on exit?). Possible fix is to reestablish the connection the AR
  # after a Resque fork.
  Resque.after_fork do |job|
    ActiveRecord::Base.establish_connection
  end
end

desc "Alias for resque:work (To run workers on Heroku)"
task "jobs:work" => "resque:work"
