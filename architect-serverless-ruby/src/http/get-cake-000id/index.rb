require 'json'
require 'logger'

def handler(event, context)
  logger = Logger.new($stdout)

  if event['pathParameters']
    id = event['pathParameters']['id']
    logger.info("id = #{id}")
  end

  {
    message: 'getCakeById'
  }
end