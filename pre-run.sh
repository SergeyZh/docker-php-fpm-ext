#!/bin/bash

if [[ ! -z "${SMTP_USER}" ]]; then
    echo "AuthInfo:${SMART_HOST} \"U:${SMTP_USER}\" \"P:${SMTP_PASSWORD}\" \"M:PLAIN\"" >> /etc/mail/access
fi

if [[ ! -z "${SMART_HOST}" ]]; then
    echo "define(\`SMART_HOST', \`${SMART_HOST}')" >> /etc/mail/sendmail.mc
    cd /etc/mail/
    rm -f access.db
    m4 sendmail.mc > sendmail.cf
    makemap hash access < access
fi

. /run-services.sh
