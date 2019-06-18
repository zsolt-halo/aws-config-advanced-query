SELECT
    resourceId,
    resourceType,
    configuration.runtime,
    configuration.lastModified,
    configuration.description
WHERE
    resourceType = 'AWS::Lambda::Function'
    AND configuration.runtime = 'runtime_version'

-- https://docs.aws.amazon.com/lambda/latest/dg/lambda-runtimes.html