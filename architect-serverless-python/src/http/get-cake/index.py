import json


def handler(event, context):
    data = {
        'message': 'getCakes'
    }
    response = {
        'statusCode': 200,
        'headers': {
            'content-type': 'application/json'
        },
        'body': json.dumps(data)
    }
    return response
