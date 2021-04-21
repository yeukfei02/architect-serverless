require 'json'
require 'logger'

def handler
  logger = Logger.new($stdout)

  {
    message: 'getCakeById'
  }
end