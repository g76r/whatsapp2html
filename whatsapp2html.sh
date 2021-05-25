#!/bin/bash
cat prologue.html
gawk '
BEGIN {
  prev_d=""
  right_s="'"$1"'"
  print "<p>"
}
match($0, /^\[([^,]*),([^\]]*)\] ([^:]*): (.*)$/, a) {
  h=a[1]
  d=a[2]; s=a[3]; m=a[4];
  if (d != prev_d) {
    print "</p><p class=day>" d
    prev_d = d
  }
  if (right_s == "") {
    right_s = s
  }
  if (s == right_s) {
    print "</p><p class=rs>" h " " s " : " m
  } else {
    print "</p><p class=ls>" h " " s " : " m
  }
  next
}
{
  print "<br/>" $0
}
END {
  print "</p>"
}
'
