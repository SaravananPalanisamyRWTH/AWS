from constructs import Construct
from aws_cdk import (
    Stack,
    RemovalPolicy,
    App,
    aws_s3 as s3,
 )

class CdkStack(Stack):

    def __init__(self, scope: Construct, construct_id: str, **kwargs) -> None:
        super().__init__(scope, construct_id, **kwargs)
        bucket = s3.Bucket(self, 
                           "saravaawsbucketcdk",
                           bucket_name = "sarvaawsbucketcdk",
                           versioned=True,  # Enable versioning
                           removal_policy=RemovalPolicy.DESTROY)  # Delete on stack destroy

