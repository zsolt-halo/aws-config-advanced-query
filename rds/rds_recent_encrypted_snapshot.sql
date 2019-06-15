SELECT
    arn,
    configuration.dBInstanceIdentifier,
    configuration.dBSnapshotArn,
    configuration.snapshotType,
    configuration.encrypted,
    configuration.snapshotCreateTime
WHERE
    resourceType = 'AWS::RDS::DBSnapshot'
AND
    configuration.snapshotCreateTime BETWEEN '2019-05-14T00:00' AND '2019-06-15T00:00'
AND
    configuration.snapshotType = 'manual'
AND
    configuration.encrypted = true