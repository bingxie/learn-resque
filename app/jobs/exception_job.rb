class ExceptionJob
  @queue = :exception

  class JobError < StandardError; end

  def self.perform
    raise JobError.new 'job fails'
  end
end
