class Sleeper
  @queue = :sleep

  def self.perform(seconds = 5)
    sleep(seconds)
    puts 'sleep 5 seconds'
  end
end
