import json
import arc
import boto3


def handler(event, context):
    data = arc.reflect()
    table_name = data['tables']['cake']

    client = boto3.client('dynamodb')
    cakes = client.scan(
        TableName=table_name
    )

    if cakes:
        response_body = {
            'message': 'getCakes',
            'cakes': cakes,
        }
    else:
        response_body = {
            'message': 'getCakes',
            'cakes': [],
        }

    response = {
        'statusCode': 200,
        'headers': {
            'content-type': 'application/json'
        },
        'body': json.dumps(response_body)
    }
    return response
