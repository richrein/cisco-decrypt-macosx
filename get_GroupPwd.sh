
#
# Display the group password required to setup a VPN
# 
# The group password may or maynot be encoded (lightly encrypted)
#

# set -x   # show script execution in verbose mode

if [ x"$1" == x ]; then echo missing pcf file name; exit -1 ; fi
pcf_file="$1" ; shift
GroupPwd=$(grep GroupPwd "$pcf_file" | sed -e 's/^[^=]*=\([0-9A-Za-z]*\).*/\1/' )
enc_GroupPwd=$(grep enc_GroupPwd "$pcf_file" | sed -e 's/^[^=]*=\([0-9A-Za-z]*\).*/\1/' )
if [ x"$enc_GroupPwd" != x ]; then
	GroupPwd=$(./cisco-decrypt $enc_GroupPwd)
fi
echo "$GroupPwd"

