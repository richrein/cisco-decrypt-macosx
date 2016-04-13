
# 
# Dispay the host to connect
#

# set -x  # verbose

if [ x"$1" == x ]; then echo missing pcf file name; exit -1 ; fi
pcf_file="$1" ; shift
Host=$(grep 'Host=' "$pcf_file" | sed -e 's/^[^=]*=\([0-9A-Za-z._]*\).*/\1/' )
echo $Host
