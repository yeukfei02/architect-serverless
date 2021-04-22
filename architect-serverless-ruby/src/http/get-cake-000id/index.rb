require 'json'
require 'logger'
require 'architect/functions'
require 'aws-sdk'

def handler(event, context)
  logger = Logger.new($stdout)

  if event['pathParameters']
    id = event['pathParameters']['id']
    logger.info("id = #{id}")

    data = Arc.reflect
    table_name = data['tables']['cake']

    client = Aws::DynamoDB::Client.new(
      region: 'ap-southeast-1',
    )
    get_item_response = client.get_item({
      key: {
        "id": id
      }, 
      table_name: table_name, 
    })
    logger.info("get_item_response = #{get_item_response}")

    if get_item_response
      response = get_item_response.to_h
      cake = response.item
      
      {
        statusCode: 200,
        headers: {
          'content-type': 'application/json'
        },
        body: {
          message: 'getCakeById',
          cake: cake
        }.to_json
      }
    end
  end
end