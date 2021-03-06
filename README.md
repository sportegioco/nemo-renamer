This script is a fork of https://github.com/trhura/nautilus-renamer written by Thura Hlaing https://github.com/trhura
I just made some minor changes and renamed nautilus to nemo so that the nemo file manager also has a bulk renamer
I'm not a programmer, so all thanks go to the original author

![nemo-renamer](https://user-images.githubusercontent.com/18140655/106473600-3e71ed80-64a4-11eb-95c8-a8d847c54e92.png)

About
======
Renamer is a small script for batch renaming files in nemo.

Installation
============
See the 'INSTALL' file.

How to report bugs
==================
Report here.
    https://github.com/sportegioco/nemo-renamer/issues

Available Patterns
==================
<pre>
This pattern, /number|length(+start)/, is not recursive meaning does not work for sub-folders/files ...
/number|3/	    for 001  , 002  , 003 ...
/number|5/	    for 00001, 00002, 00003 , ...
/number|3+10/	    for 010  , 011  , 012 ...
/number|5+100/	    for 00100, 00101, 00102 ...

/alphabet|length/ and /ALPHABET|length/ patterns
/alphabet|3/	aaa, aab, ... zzz, aaaa, aaab, ...
/ALPHABET|2/	AA, AB, ... ZZ, AAA, AAAB ...

If you have python-roman installed, you can also use /roman(|start)/ pattern
/roman/		I, II, III ...
/roman|5/	V, VI, VII ...

To use original filename or the parent filename ...
/filename/	Original File Name
/name/		/filename/ without extension
/ext/		Only extension
/dir/		Parent Directory

To use Current time in filenames,
/date/		24Sep2008
/year/		2008
/month/		09
/monthname/	September
/monthsimp/	Sep
/day/		24
/dayname/	Wednesday
/daysimp/	Wed

You can also slice /filename/ and /name/, using /name|offset:length/.
Length is optional, and both offset and length can be negative.
When they are negative, they are manipulated backwards (from end).

"123abc.jpg" => /filename|3/ => "abc.jpg"
"123abc.jpg" => /name|-3/  => "abc"
"123abc.jpg" => /name|0:-3/  => "abc"
"123abc.jpg" => /name|-3:3/  => "abc"
"123abc.jpg" => /name|-3:-3/ => "123"
"123abc.jpg" => /name|-3:100/ => "abc"
"123abc.jpg" => /name|-3:-100/ => "123"
</pre>
