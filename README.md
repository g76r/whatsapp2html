whatsapp2html
=============

intention
---------

format a message discussion to make it more easy to keep or print,
nowadays (2021) the only way to export a conversation older than 3 months being to copy, scroll and paste messages by hand with whatsapp web, which produces a flat format with line headers containing timestamp and speaker

example of input data:
```
[00:29, 15/05/2021] Alice: Hello 🙂
[00:29, 15/05/2021] Bob: So nice you're here now !
```

example of output html ready to be printed in firefox or chrome:
```
<html>
<head>
<style>
@page {
  margin: 10mm 10mm 10mm 10mm;
}
body {
  columns: 2;
  column-rule: 2px solid #f1f1f1;
}
p.day {
  text-align: center;
  color: black;
  text-decoration: underline;
  font-weight: bold;
}
p.ls {
  text-align: left;
  margin-right: 15%;
  color: blue;
}
p.rs {
  text-align: right;
  margin-left: 15%;
  color: red;
}

</style>
</head>
<body>
<p class=day> 15/05/2021</p>
<p class=rs>00:29 Alice : Hello 🙂</p>
<p class=ls>00:29 Bob : So nice you're here now !</p>
```


usage
-----

./whatsapp2html.sh [right speaker] < whatsapp_discussion_copy_and_paste_export.txt > whatsapp.html

