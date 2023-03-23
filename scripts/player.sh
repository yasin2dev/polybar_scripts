#!/usr/bin/env bash

# check is music playing via playerctl
if [ "$(playerctl status)" = "Playing" ]; then
  # if music source is firefox, chrome, chromium or opera (you can edit here for your browser) just print music title.
  if [[ "$(playerctl metadata mpris:trackid)" == *"firefox"* || *"chrome"* || *"chromium"* || *"opera"* ]]; then
    title=`exec playerctl metadata xesam:title`
    echo "$title"
  else
    # If music source is Spotify or another music service, print title and artist.
    title=`exec playerctl metadata xesam:title`
    artist=`exec playerctl metadata xesam:artist`
    echo "$title - $artist"
  fi
else
  # If music is not playing print this message.
  echo "No Song Playing"
fi