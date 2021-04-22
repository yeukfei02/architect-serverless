import json
from datetime import datetime
import uuid
import arc
import boto3


def handler(event, context):
    if event['body']:
        body = json.loads(event['body'])
        name = body['name']
        price = body['price']
        print("name = {0}".format(name))
        print("price = {0}".format(price))

        table_data = {
            'id': str(uuid.uuid4()),
            'name': name,
            'price': float(price),
            'createdAt': datetime.now().strftime("%Y/%m/%d %H:%M:%S"),
            'updatedAt': datetime.now().strftime("%Y/%m/%d %H:%M:%S"),
        }

        data = arc.reflect()
        table_name = data['tables']['cake']

        client = boto3.client('dynamodb')
        put_item_response = client.put_item(
            TableName=table_name,
            Item=table_data
        )
        print('put_item_response = {0}'.format(put_item_response))

        response_body = {
            'message': 'createCake'
        }
        response = {
            'statusCode': 201,
            'headers': {
                'content-type': 'application/json'
            },
            'body': json.dumps(response_body)
        }

    return response
