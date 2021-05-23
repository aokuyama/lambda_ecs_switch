import boto3

def handler(event, context):
    for cluster, services in event.items():
        for service, count in services.items():
            set_desired_count(cluster, service, count)

def set_desired_count(cluster, service, count):
    print(cluster + '/' + service + ':' + str(count))
    client = boto3.client('ecs')
    result = client.update_service(
        cluster = cluster,
        service = service,
        desiredCount = count
    )
    print(result)
