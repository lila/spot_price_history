#!/bin/sh
#
# download.sh
# download the spot pricing data as json dataset
# karan bhatia

# assumes that your credentials and environment variables are all setup correctly
# by default uses the past 24 hours.

now=`date -u "+%Y-%m-%dT%H:%M:%S"`
past=`date -v1d -u "+%Y-%m-%dT%H:%M:%S"`
instancetype=m1.xlarge

if [ "$#" -ne 0 ];then
	instancetype=$1
fi

aws ec2 describe-spot-price-history --product-description "Linux/UNIX (Amazon VPC)" --instance-types ${instancetype} --start-time ${past} --end-time ${now} | jq  '.SpotPriceHistory'