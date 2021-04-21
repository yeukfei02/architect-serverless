require 'json'
require 'logger'

def handler(event, context)
  logger = Logger.new($stdout)

  if event['body']
    name = event['body']['name']
    price = event['body']['price']
    logger.info("name = #{name}")
    logger.info("price = #{price}")
  end

  {
    statusCode: 201,
    headers: {
      'content-type': 'application/json'
    },
    body: {
      message: 'createCake'
    }.to_json
  }
end