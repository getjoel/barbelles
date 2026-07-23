#!/bin/bash
cd /home/lana/barbelles || exit 1
git rev-parse HEAD > /tmp/b_old
git pull origin main
git rev-parse HEAD > /tmp/b_new
cmp -s /tmp/b_old /tmp/b_new && exit 0
/usr/bin/unzip -o barbelles-deploy.zip -d /home/lana/public_html
chmod -R u=rwX,go=rX /home/lana/public_html
