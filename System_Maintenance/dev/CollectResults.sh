#/bin/bash
Maintenance='System_Maintenance'
Environment='dev'
BuildNumber='132'

echo Making directory /tmp/${BuildNumber}/${Maintenance}/${Environment} recursively
mkdir /tmp/${BuildNumber}/${Maintenance}/${Environment}

echo Copying reports into directory /tmp/${BuildNumber}/${Maintenance}/${Environment}
cp *.rpt /tmp/${BuildNumber}/${Maintenance}/${Environment}
