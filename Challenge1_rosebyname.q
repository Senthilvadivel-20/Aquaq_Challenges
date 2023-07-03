/
Setting a colour attribute on your webpage can be much more interesting than it appears - HTML/CSS will take any string and convert it into a hexadecimal representation for use in a webpage. For instance, text with tag:

body bgcolor="kdb4life"


produces a nice blue colour.
The conversion process happens like so:


  Set the string's non-hexadecimal characters to 0.
  Pad the string length to the next multiple of 3.
  Split the result into 3 equal sections.
  The first two digits of each remaining section are the hex components.


Above, "kdb4life" as an input string becomes

0d40fe


What is the six-character colour hex output of your input string?

\

/input text
inp: "do you think that maybe like, 1 in 10 people could be actually robots?"

/Define hexa decimal characters
hex:((.Q.n),(6#(.Q.a)))

/ Change 0 for non hexa decemal character
inp: {$[x in hex;x;"0"]}'[inp]

/The n3 function returns the number of leading zeros that need to be added and the remaining number required to become a multiple of 3.
n3:{md:x mod 3;$[md<>0;(3 - md);md]}

/Add the n number of leading zeros
inp : inp,((n3(count i))#"0")

/get the 2 character from each section
raze 2#/:(3 0N#inp)
