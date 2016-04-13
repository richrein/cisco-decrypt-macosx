# cisco-decrypt-macosx
Compile verifiable safe source for a decrypt needed for reading the group secret for cisco.

Decrypt is an unjustifyably strong word for the level of encription. It should really be described as an encoding hides the "secret" from casually looking eyes. Basically its a very light and constant cypher encoded as hex ascii. So this repo enables the user to read the shared password just before entering it into the VPN that does not accept pcf files.

References that made this possible
http://anders.com/guides/native-cisco-vpn-on-mac-os-x/ 
https://www.unix-ag.uni-kl.de/~massar/soft/cisco-decrypt.c