import json


def handler(event, context):
    if event['pathParameters']:
        id = event['pathParameters']['id']
        print('id = {0}'.format(id))

    data = {
        'message': 'getCakeById'
    }
    response = {
        'statusCode': 200,
        'headers': {
            'content-type': 'application/json'
        },
        'body': json.dumps(data)
    }
    return response
