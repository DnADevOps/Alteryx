#/bin/bash
Maintenance='System_Maintenance'
Environment=''

echo Making directory /tmp/${BUILD_NUMBER}/${Maintenance}/${Environment} recursively
mkdir /tmp/${BUILD_NUMBER}/${Maintenance}/${Environment}

echo Copying reports into directory /tmp/${BUILD_NUMBER}/${Maintenance}/${Environment}
cp *.rpt /tmp/${BUILD_NUMBER}/${Maintenance}/${Environment}
