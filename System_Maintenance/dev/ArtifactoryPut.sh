#/bin/bash
ArtifactoryUrl='http://54.160.21.79:8082/artifactory'
ArtifactoryUser='admin'
ArtifactoryPassword='Devops2020'
Platform='Alteryx'
BuildNumber='132'

cd /tmp
if [ ! -d ${BuildNumber} ]
then
 echo Directory /tmp/${BuildNumber} should exist
 exit 1
fi

echo Building archive ${BuildNumber}.zip
zip -r ${BuildNumber}.zip ${BuildNumber}

echo Sending  archive ${BuildNumber}.zip to Artifactory
echo curl -u "${ArtifactoryUser}":"${ArtifactoryPassword}" -X PUT "${ArtifactoryUrl}/${Platform}/${BuildNumber}.zip" -T ${BuildNumber}.zip
curl -u "${ArtifactoryUser}":"${ArtifactoryPassword}" -X PUT "${ArtifactoryUrl}/${Platform}/${BuildNumber}.zip" -T ${BuildNumber}.zip
