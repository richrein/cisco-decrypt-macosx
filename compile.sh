
#
# These are the steps required on the mac assuming brew is installed
#
brew link libgpg-error
brew install libgcrypt
gcc -Wall -o cisco-decrypt cisco-decrypt.c $(libgcrypt-config --libs --cflags)

