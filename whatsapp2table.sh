#!/bin/bash
gawk '
BEGIN {
  OFS=";"
  print "speaker","date","year","month","day","hour","minute","messages","words"
}
match($0, /^\[([^,]*),([^\]]*)\] ([^:]*): (.*)$/, a) {
  h=a[1]
  d=a[2]; s=a[3]; m=a[4];
  match(d, /([0-9]+)\/([0-9]+)\/([0-9]+)/, dc)
  match(h, /([0-9]+):([0-9]+)/, hc)
  w = patsplit(m, tmp, /\w+/)
  print s,dc[0],dc[3],dc[2],dc[1],hc[1],hc[2],1,w
}
'
