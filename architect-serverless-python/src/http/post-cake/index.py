import json


def handler(event, context):
    if event['body']:
        body = json.loads(event['body'])
        name = body['name']
        price = body['price']
        print("name = {0}".format(name))
        print("price = {0}".format(price))

    data = {
        'message': 'createCake'
    }
    response = {
        'statusCode': 201,
        'headers': {
            'content-type': 'application/json'
        },
        'body': json.dumps(data)
    }
    return response
