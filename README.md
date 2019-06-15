# AWS Config - Advanced Query - Queries

A collection of useful queries that can be used to verify the compliance and security of your assets in AWS

## Preface & Purpose
AWS introduced a very useful service in 2019 March called [AWS Config - Advanced Query](https://aws.amazon.com/about-aws/whats-new/2019/03/now-you-can-query-based-on-resource-configuration-properties-in-aws-config/)

In a world where you can create infrastructures of corporation size and complexity with a CloudFormation template it is of utmost importance to keep track of your assets for reasons like cost allocation, security/compliance or just out of curiosity.

There is a great service which aims to be an aid in the process called [AWS Config](https://aws.amazon.com/config/). You can use this service to record your configuration items ( AWS term for things you have in the account created by you ).

After you set-up dumping your config data somewhere in some form, it is fully up to you what do you do with the massive data volume it generates. The Advanced Query service is a super neat addition that increases the usefulness of this service to the next level.

You might ask how is this different than let's say, dumping your config data to an S3 bucket and using  [AWS Athena](https://aws.amazon.com/athena/) to do queries on it or why is this a useful service if we already have [AWS Config Rules](https://docs.aws.amazon.com/config/latest/developerguide/evaluate-config.html) to automate asset compliance checks?

I had the same doubts about this service when I'v heard about it for the first time but I realised some things after a time:

 - Advanced Query comes without any additional cost if you already use AWS Config
 - It can be used to find out what should be the next Config Rule that you deploy to automate compliance check
 - The queries are alway ran against the point-in-time latest config state of your environment (not against data dumps in S3)
 - It is a great *experimentation tool* to help you when you [implement your own](https://github.com/awslabs/aws-config-rdk) lambda functions backing your custom config rules (there is a great set of [managed config rules](https://docs.aws.amazon.com/config/latest/developerguide/managed-rules-by-aws-config.html) that you can use without too much effort)

This repository was created with the purpose to host queries that can be used to find out interesting stuff about your assets in AWS
### Example questions that you might ask about your assets

 - Do I have any unencrypted EBS volumes laying around?
 - Do I have any EBS volumes that are not attached to instances?
 - Do I have lambda functions that are reaching EOL runtime soon?
 - Do I have any SQS queues that do not have DLQ set-up for error handling (or for any other purpose)?
 - Do I have any Instances that are publicly reachable but are not exposed via an ELB?

## Useful sources to look at when developing queries

It is a new service so the documentation about usage is very limited at time of writing this readme.

What I found useful so far:

 - [The Config Schema](https://github.com/awslabs/aws-config-resource-schema) to find out what properties you can use in your queries

## Community
I know that there are a lot of awesome developers outside and I believe in open source, let's make life easier by helping each-other finding out what might be useful to look after in an as complex environment as AWS

🍺 Free *Software* 🍺
