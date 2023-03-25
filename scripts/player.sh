#!/usr/bin/env bash

# execute commands.
status=`exec playerctl status`
title=`exec playerctl metadata xesam:title`
artist=`exec playerctl metadata xesam:artist`
trackid=`exec playerctl metadata mpris:trackid`

# check is music playing via playerctl
if [ "$status" = "Playing" ]; then
  # if music source is firefox, chrome, chromium or opera (you can edit here for your browser) just print music title.
  if [[ "$trackid" == *"firefox"* || *"chrome"* || *"chromium"* || *"opera"* ]]; then
    echo "$title"
    # If music source is Spotify or another music service, print title and artist.
  else
    echo "$title - $artist"
  fi
  # If music is not playing print this message.
else
  echo "No Song Playing" 
fi