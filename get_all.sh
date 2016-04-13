
# 
# Dispay the host to connect
#

# allow invokation of related scripts in this dir
scriptdir=`dirname "$BASH_SOURCE"`
PATH="$scriptdir:$PATH"

# set -x  # verbose

if [ x"$1" == x ]; then echo missing pcf file name; exit -1 ; fi
pcf_file="$1" ; shift

format="%9s   %-20s\n"
printf "$format" GroupName $(./get_GroupName.sh "$pcf_file")
printf "$format" GroupPwd  $(./get_GroupPwd.sh "$pcf_file")
printf "$format" Host      $(./get_Host.sh "$pcf_file")
