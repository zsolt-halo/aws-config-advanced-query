SELECT
    resourceId,
    resourceType,
    supplementaryConfiguration.ServerSideEncryptionConfiguration.rules
WHERE
    resourceType = 'AWS::S3::Bucket'
    AND NOT (
        supplementaryConfiguration.ServerSideEncryptionConfiguration.rules.applyServerSideEncryptionByDefault.sseAlgorithm = 'aws:kms'
        OR supplementaryConfiguration.ServerSideEncryptionConfiguration.rules.applyServerSideEncryptionByDefault.sseAlgorithm = 'AES256'
    )