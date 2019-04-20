#! /bin/bash

set -u

NAME=$1
OUTFILE="$OUTDIR/$NAME.ovpn"

if [ ! -e "$EASY_RSA_PATH/pki/issued/$NAME.crt" ]; then
    echo "Certificate with that name doesn't exist"
    exit 1
fi

if [ ! -e "$TEMPLATE" ]; then
    echo "Template not provided"
    exit 1
fi

if [ ! -d "$OUTDIR" ]; then
    mkdir "$OUTDIR"
fi

cp "$TEMPLATE" "$OUTFILE"

echo "<ca>" >> "$OUTFILE"
cat "$EASY_RSA_PATH/pki/ca.crt" >> "$OUTFILE"
echo "</ca>" >> "$OUTFILE"

echo "<cert>" >> "$OUTFILE"
cat "$EASY_RSA_PATH/pki/issued/$NAME.crt" >> "$OUTFILE"
echo "</cert>" >> "$OUTFILE"

echo "<key>" >> "$OUTFILE"
cat "$EASY_RSA_PATH/pki/private/$NAME.key" >> "$OUTFILE"
echo "</key>" >> "$OUTFILE"

echo "<tls-auth>" >> "$OUTFILE"
cat "$EASY_RSA_PATH/pki/private/ta.key" >> "$OUTFILE"
echo "</tls-auth>" >> "$OUTFILE"
