#!/bin/bash
cat prologue.html
gawk '
BEGIN {
  prev_d=""
  right_s="'"$1"'"
}
match($0, /^\[([^,]*),([^\]]*)\] ([^:]*): (.*)$/, a) {
  h=a[1]
  d=a[2]; s=a[3]; m=a[4];
  if (d != prev_d) {
    print "<p class=day>" d "</p>"
    prev_d = d
  }
  if (right_s == "") {
    right_s = s
  }
  if (s == right_s) {
    print "<p class=rs>" h " " s " : " m "</p>"
  } else {
    print "<p class=ls>" h " " s " : " m "</p>"
  }
}
'
