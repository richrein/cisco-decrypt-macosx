
#
set -x
if [ x"$1" == x ]; then echo missing pcf file name; exit -1 ; fi
pcf_file="$1" ; shift
enc_GroupPwd=$(grep enc_GroupPwd "$pcf_file" | sed -e 's/^[^=]*=\([0-9A-Za-z]*\).*/\1/' )
enc_GroupPwd=$(echo $enc_GroupPwd)
echo "$enc_GroupPwd"
./cisco-decrypt $enc_GroupPwd

