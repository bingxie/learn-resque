require 'resque/tasks'

task "resque:setup" => :environment do
  puts 'resque start'
end
