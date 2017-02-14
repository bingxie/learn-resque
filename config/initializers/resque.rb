rails_root = ENV['RAILS_ROOT'] || File.dirname(__FILE__) + '/../..'
rails_env = ENV['RAILS_ENV'] || 'development'

resque_config = YAML.load_file(rails_root + '/config/resque.yml')
Resque.redis = resque_config[rails_env]


# Resque.logger.formatter = Resque::QuietFormatter.new
Resque.logger.formatter = Resque::VerboseFormatter.new
# Resque.logger.formatter = Resque::VeryVerboseFormatter.new


Resque.redis.namespace = "learn-resque"


