require 'rufus/scheduler'
require 'varanid/config'

module Varanid
  class Application
    def initialize(args)
      @config = Varanid::Config.new(args)
    end
    def run
      @scheduler = Varanid::Scheduler.new(@config, @zmq_context)
      @scheduler.run
    end
  end
end
