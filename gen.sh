#!/bin/sh

rm -fr /root/.vipaccess
rm -fr 2facode

/usr/local/bin/vipaccess provision -t SYMC
id=`cat /root/.vipaccess |grep id |cut -d ' ' -f 2`
secret=`cat /root/.vipaccess |grep secret |cut -d ' ' -f 2`

echo
echo "- ID: $id"
echo "- Secret: $secret"
qrencode -t UTF8 otpauth://totp/VIP%20Access:$id?secret=$secret&issuer=Symantec&algorithm=SHA1&digits=6 >> 2facode
cat 2facode
