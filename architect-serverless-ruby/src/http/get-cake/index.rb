require 'json'
require 'logger'

def handler(event, context)
  logger = Logger.new($stdout)

  {
    message: 'getCakes'
  }
end