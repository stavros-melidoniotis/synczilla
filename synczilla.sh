#!/bin/bash

if [ "$#" -ne 2 ]; then
    echo "Usage: $0 <gmail-account> <action>"
    echo "Action: pull or push"
    echo ""
    echo "Example: $0 johndoe@gmail.com pull"
    exit 1
fi

GMAIL_ACCOUNT=$1
ACTION=$2
GOOGLE_DRIVE=google-drive://$GMAIL_ACCOUNT

# mount the google-drive drive
gio mount $GOOGLE_DRIVE

if [ $ACTION == "push" ]; then
    # copy the site manager entries to google-drive
    gio copy -p ~/.config/filezilla/sitemanager.xml $GOOGLE_DRIVE
else
    # copy the site manager entries from google-drive
    gio copy -p $GOOGLE_DRIVE/sitemanager.xml ~/.config/filezilla/sitemanager.xml
fi

# unmount the google-drive drive
gio mount -u $GOOGLE_DRIVE