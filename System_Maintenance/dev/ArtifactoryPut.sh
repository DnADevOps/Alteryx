#/bin/bash
ArtifactoryUrl='http://54.160.21.79:8082/artifactory'
ArtifactoryUser='admin'
ArtifactoryPassword='Devops2020'
Platform=''

cd /tmp
if [ ! -d ${BUILD_NUMBER} ]
then
 echo Directory /tmp/${BUILD_NUMBER} should exist
 exit 1
fi

echo Building archive ${BUILD_NUMBER}.zip
zip -r ${BUILD_NUMBER}.zip ${BUILD_NUMBER}

echo Sending  archive ${BUILD_NUMBER}.zip to Artifactory
echo curl -u "${ArtifactoryUser}":"${ArtifactoryPassword}" -X PUT "${ArtifactoryUrl}/${Platform}/${BUILD_NUMBER}.zip" -T ${BUILD_NUMBER}.zip
curl -u "${ArtifactoryUser}":"${ArtifactoryPassword}" -X PUT "${ArtifactoryUrl}/${Platform}/${BUILD_NUMBER}.zip" -T ${BUILD_NUMBER}.zip
