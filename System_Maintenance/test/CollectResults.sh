#/bin/bash
Maintenance='System_Maintenance'
Environment='test'
BuildNumber='142'

echo Making directory /tmp/${BuildNumber}/${Maintenance}/${Environment} recursively
mkdir -p /tmp/${BuildNumber}/${Maintenance}/${Environment}

echo Copying reports into directory /tmp/${BuildNumber}/${Maintenance}/${Environment}
cp ${Maintenance}/${Environment}/*.rpt /tmp/${BuildNumber}/${Maintenance}/${Environment}
