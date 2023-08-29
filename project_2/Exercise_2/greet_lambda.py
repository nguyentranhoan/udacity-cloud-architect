import os

def lambda_handler(event, context):
    return f"{os.environ['greeting']} from Lambda!"