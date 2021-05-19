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
[lorem_ipsum.html](lorem_ipsum.html)

same example printed with firefox:
[lorem_ipsum.pdf](lorem_ipsum.pdf)

usage
-----

```
./whatsapp2html.sh [right speaker] < whatsapp_discussion_copy_and_paste_export.txt > whatsapp.html
```

whatsapp2table
==============

intention
---------

produces a statistical table suitable for input for e.g. pivot table

beware that the script makes assumptions on the date format that are only
applicable to some locales (assumes dd/mm/yyyy timestamps in whatsapp export
and uses ; separator in csv export)
full disclosure: it's the right assumptions for me in France

usage
-----

```
./whatsapp2table.sh < whatsapp_discussion_copy_and_paste_export.txt > whatsapp.csv
```

