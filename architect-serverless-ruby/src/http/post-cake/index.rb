require 'json'
require 'logger'
require 'architect/functions'
require 'aws-sdk'
require 'securerandom'

def handler(event, context)
  logger = Logger.new($stdout)

  if event['body']
    name = event['body']['name']
    price = event['body']['price']
    logger.info("name = #{name}")
    logger.info("price = #{price}")

    data = Arc.reflect
    table_name = data['tables']['cake']

    client = Aws::DynamoDB::Client.new(
      region: 'ap-southeast-1',
    )
    put_item_response = client.put_item({
      item: {
        "id": SecureRandom.uuid,
        "name": name,
        "price": price,
        "createdAt": Time.now.strftime("%Y/%m/%d %H:%M:%S"),
        "updatedAt": Time.now.strftime("%Y/%m/%d %H:%M:%S"),
      }, 
      table_name: table_name,
    })
    logger.info("put_item_response = #{put_item_response}")
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