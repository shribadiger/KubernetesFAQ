#!/bin/bash
while getopts "username:password:podname:file" opt
do
    case "$opt" in 
        servername ) server="$OPTARG";;
        username ) userName="$OPTARG";;
        password ) passWord="$OPTARG";;
        podname ) podName="$OPTARG";;
        file ) fileName="$OPTARG";;
    esac
done

if [ -z $server ] || [ -z $userName] ||  [ -z $passWord] ||  [ -z $podName] ||  [ -z $fileName]
then
    echo "some of parameters are missing. Please check it"
fi
/tmp/openshift-origin-server-v3.11.0-0cbc58b-linux-64bit/oc login $server --username=$userName --password=$passWord --insecure-skip-tls-verify 
/tmp/openshift-origin-server-v3.11.0-0cbc58b-linux-64bit/oc project $podName
