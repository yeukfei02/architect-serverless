require 'json'
require 'logger'
require 'architect/functions'
require 'aws-sdk'

def handler(event, context)
  logger = Logger.new($stdout)

  data = Arc.reflect
  table_name = data['tables']['cake']

  client = Aws::DynamoDB::Client.new(
    region: 'ap-southeast-1',
  )
  scan_response = client.scan({
    table_name: table_name, 
  })
  if scan_response
    response = scan_response.to_h
    cakes = response.items

    {
      statusCode: 200,
      headers: {
        'content-type': 'application/json'
      },
      body: {
        message: 'getCakes',
        cakes: cakes
      }.to_json
    }
  end
end