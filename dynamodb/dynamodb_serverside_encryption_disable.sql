SELECT
    resourceId,
    resourceName,
    resourceType,
    awsRegion,
    tags,
    configuration.ssedescription.status
WHERE
    resourceType = 'AWS::DynamoDB::Table'
    AND configuration.ssedescription.status <> 'ENABLED'