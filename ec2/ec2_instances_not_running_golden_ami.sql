SELECT
    resourceId,
    resourceName,
    resourceType,
    configuration.instanceType,
    configuration.imageId,
    availabilityZone,
    configuration.state.name
WHERE
    resourceType = 'AWS::EC2::Instance'
    AND configuration.imageId <> 'ami-golden-ami-id'