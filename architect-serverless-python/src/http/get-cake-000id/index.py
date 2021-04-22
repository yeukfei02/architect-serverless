import json
import arc
import boto3


def handler(event, context):
    if event['pathParameters']:
        id = event['pathParameters']['id']
        print('id = {0}'.format(id))

        data = arc.reflect()
        table_name = data['tables']['cake']

        client = boto3.client('dynamodb')
        cake = client.get_item(
            TableName=table_name
        )

        if cake:
            response_body = {
                'message': 'getCakeById',
                'cake': cake
            }
        else:
            response_body = {
                'message': 'getCakeById',
                'cake': {}
            }

        response = {
            'statusCode': 200,
            'headers': {
                'content-type': 'application/json'
            },
            'body': json.dumps(response_body)
        }

    return response
