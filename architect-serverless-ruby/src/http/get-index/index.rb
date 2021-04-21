require 'json'

def handler(event, context)
  {
    statusCode: 200,
    headers: {
      'content-type': 'application/json'
    },
    body: {
      message: 'main'
    }.to_json
  }
end