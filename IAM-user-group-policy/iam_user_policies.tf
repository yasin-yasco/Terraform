resource "aws_iam_policy" "admin_user" {
  name = "admin_user"

  policy = <<EOF
{
    "Version": "2012-10-17",
    "Statement": [
        {
            "Effect": "Allow",
            "Action": "*",
            "Resource": "*"
        }
    ]
}
EOF
}


resource "aws_iam_policy" "devops_user" {
  name = "devops_user"

  policy = <<EOF
{
    "Version": "2012-10-17",
    "Statement": [
        {
            "Effect": "Allow",
            "Action": [
                "iam:GenerateCredentialReport",
                "iam:GenerateServiceLastAccessedDetails",
                "iam:Get*",
                "iam:List*",
                "iam:SimulateCustomPolicy",
                "iam:SimulatePrincipalPolicy"
            ],
            "Resource": "*"
        }
    ]
}
EOF
}










#resource "aws_iam_policy" "devops_user" {
#  name = "devops_user"
#
#  policy = <<EOF
#{
#  "Version": "2012-10-17",
#  "Statement": [
#    {
#            "Effect": "Allow",
#            "Action": "ec2:*",
#            "Resource": "*"
#        },
#        {
#            "Effect": "Allow",
#            "Action": "elasticloadbalancing:*",
#            "Resource": "*"
#        },
#        {
#            "Effect": "Allow",
#            "Action": "cloudwatch:*",
#            "Resource": "*"
#        },
#        {
#            "Effect": "Allow",
#            "Action": "autoscaling:*",
#            "Resource": "*"
#        },
#        {
#            "Effect": "Allow",
#            "Action": [
#                "s3:*",
#                "s3-object-lambda:*"
#            ],
#            "Resource": "*"
#        },
#        {
#            "Effect": "Allow",
#            "Action": [
#                "aws-portal:ViewBilling"
#            ],
#            "Resource": "*"
#        },
#        {
#            "Effect": "Allow",
#            "Action": [
#                "route53:*",
#                "route53domains:*",
#                "cloudfront:ListDistributions",
#                "elasticloadbalancing:DescribeLoadBalancers",
#                "elasticbeanstalk:DescribeEnvironments",
#                "s3:ListBucket",
#                "s3:GetBucketLocation",
#                "s3:GetBucketWebsite",
#                "ec2:DescribeVpcs",
#                "ec2:DescribeVpcEndpoints",
#                "ec2:DescribeRegions",
#                "sns:ListTopics",
#                "sns:ListSubscriptionsByTopic",
#                "cloudwatch:DescribeAlarms",
#                "cloudwatch:GetMetricStatistics"
#            ],
#            "Resource": "*"
#        },
#        {
#            "Effect": "Allow",
#            "Action": "apigateway:GET",
#            "Resource": "arn:aws:apigateway:*::/domainnames"
#        },
#        {
#            "Action": [
#                "rds:*",
#                "application-autoscaling:DeleteScalingPolicy",
#                "application-autoscaling:DeregisterScalableTarget",
#                "application-autoscaling:DescribeScalableTargets",
#                "application-autoscaling:DescribeScalingActivities",
#                "application-autoscaling:DescribeScalingPolicies",
#                "application-autoscaling:PutScalingPolicy",
#                "application-autoscaling:RegisterScalableTarget",
#                "cloudwatch:DescribeAlarms",
#                "cloudwatch:GetMetricStatistics",
#                "cloudwatch:PutMetricAlarm",
#                "cloudwatch:DeleteAlarms",
#                "ec2:DescribeAccountAttributes",
#                "ec2:DescribeAvailabilityZones",
#                "ec2:DescribeCoipPools",
#                "ec2:DescribeInternetGateways",
#                "ec2:DescribeLocalGatewayRouteTables",
#                "ec2:DescribeLocalGatewayRouteTableVpcAssociations",
#                "ec2:DescribeLocalGateways",
#                "ec2:DescribeSecurityGroups",
#                "ec2:DescribeSubnets",
#                "ec2:DescribeVpcAttribute",
#                "ec2:DescribeVpcs",
#                "ec2:GetCoipPoolUsage",
#                "sns:ListSubscriptions",
#                "sns:ListTopics",
#                "sns:Publish",
#                "logs:DescribeLogStreams",
#                "logs:GetLogEvents",
#                "outposts:GetOutpostInstanceTypes"
#            ],
#            "Effect": "Allow",
#            "Resource": "*"
#        },
#        {
#            "Action": "pi:*",
#            "Effect": "Allow",
#            "Resource": "arn:aws:pi:*:*:metrics/rds/*"
#        },
#        {
#            "Action": "iam:CreateServiceLinkedRole",
#            "Effect": "Allow",
#            "Resource": "*",
#            "Condition": {
#                "StringLike": {
#                    "iam:AWSServiceName": [
#                        "rds.amazonaws.com",
#                        "rds.application-autoscaling.amazonaws.com"
#                    ]
#                }
#            }
#        },
#        {
#            "Effect": "Allow",
#            "Action": "iam:CreateServiceLinkedRole",
#            "Resource": "*",
#            "Condition": {
#                "StringEquals": {
#                    "iam:AWSServiceName": [
#                        "autoscaling.amazonaws.com",
#                        "ec2scheduled.amazonaws.com",
#                        "elasticloadbalancing.amazonaws.com",
#                        "spot.amazonaws.com",
#                        "spotfleet.amazonaws.com",
#                        "transitgateway.amazonaws.com"
#                    ]
#                }
#            }
#        }
#    ]
#}
#EOF
#}

















