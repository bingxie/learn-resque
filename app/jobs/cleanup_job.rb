class CleanupJob < ApplicationJob
  queue_as :default

  def perform(*args)
    # Do something later
    puts 'do some cleaning'
  end
end
