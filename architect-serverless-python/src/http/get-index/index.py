import json


def handler(event, context):
    data = {
        'message': 'main'
    }
    response = {
        'statusCode': 200,
        'headers': {
            'content-type': 'application/json'
        },
        'body': json.dumps(data)
    }
    return response
