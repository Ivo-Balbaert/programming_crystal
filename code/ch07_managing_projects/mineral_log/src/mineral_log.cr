require "./mineral_log/*"
require "katip"

LOGGER = Katip::Logger.new

LOGGER.configure do |config|
  config.loglevel = Katip::LogLevel::DEBUG
  config.logclassification = Katip::LogClassification::DATE_DAY
  config.path = "src/katip/logfiles"
  config.info.description = "This is the Mineral Log project."
  config.info.project = "Mineral Log."
  config.info.version = MineralLog::VERSION # project version
end

# START:p1
module MineralLog
  LOGGER.info("app mineral_log is started!")

  min1 = Mineral.new(101, "gold", "cubic")
  puts min1.to_csv
end

class Mineral
  getter id, name
  property crystal_struct

  def initialize(@id : Int32, @name : String, @crystal_struct : String)
    LOGGER.debug("A new mineral is created!")
  end

  def initialize(@id : Int32, logger)
    @name = "rock"
    @crystal_struct = "unknown"
    LOGGER.debug("A new default mineral is created!")
  end

  def to_s
    puts "This is a mineral with id #{id} and is called #{name} "
    puts "It has #{crystal_struct} as crystal structure"
  end

  def to_csv
    "#{id},#{name},#{crystal_struct}"
    LOGGER.debug("to_csv method is called")
  end
end
# END:p1
