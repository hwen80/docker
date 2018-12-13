#!/bin/sh
certbot -n --nginx --agree-tos -m $CERTBOT_MAIL -d $CERTBOT_DOMAIN --redirect
