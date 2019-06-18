SELECT
    resourceId,
    resourceName,
    resourceType,
    configuration.engine,
    configuration.publiclyAccessible
WHERE
    resourceType = 'AWS::RDS::DBInstance'
    AND configuration.publiclyAccessible = TRUE