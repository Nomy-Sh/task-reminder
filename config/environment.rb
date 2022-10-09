# Load the Rails application.
require_relative "application"
require_relative "../app"

# Initialize the Rails application.
Rails.application.initialize!


## Logger
Rails.logger = Logger.new(STDOUT)
Rails.logger.level = Logger::DEBUG

# log formatter
Rails.logger.formatter = proc do | severity, datetime, progname, msg | 
    "#{datetime}, #{severity}: #{msg} from #{progname} \n"
end

## use like this
=begin
Rails.logger.info "Check out this info!"						-> input
2022-10-08 12:03:02 +0530, INFO: Check out this info! from 		-> output
=end
