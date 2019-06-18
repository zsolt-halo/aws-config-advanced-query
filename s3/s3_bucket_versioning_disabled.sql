SELECT
    resourceId,
    resourceType,
    supplementaryConfiguration.BucketVersioningConfiguration.status
WHERE
    resourceType = 'AWS::S3::Bucket'
    AND supplementaryConfiguration.BucketVersioningConfiguration.status = 'Off'