/
Auth: Senthil
Date: 12/07/2023


In front of you are two dice. You know the numbers on the front, left, and top faces of each. Through your exquisite knowledge of dice trivia, you are also aware the numbers on opposite faces of a die add up to 7. The faces are like so:

Dice 1:
  Front: 1
  Left:  2
  Top: 3

Dice 2:
  Front: 1
  Left:  3
  Top: 2



You're provided with a series of directions - up (U), down (D), left (L), or right (R), to spin the current front face of each dice. If you spin the dice in the same direction at each step of the input \"LRDLU\", the front faces after each of these five instructions would be:

Ins. Dice1 Dice2
0     5     4
1     1     1
2     3     2
3     5     4
4     1     1



Above, it's clear the front faces match after instruction indices 1 and 4 (starting from 0).

After spinning the dice according to your input instructions, what is the sum of the indices where the front faces match? For the example above the answer would be 5, since the dice show a pair of ones after instruction 1 and instruction 4.

\


/ins:"LRDLU"

/instruction
ins:"LRUDDLRDLLDRUUUURLUDLLDLUDRURRDLUDRDURUURDLRULDULLRDRLLLDRDRRRLLDLRUUUDRLRDRLDRRUURDRLUDUUDUDLLDRULRLDRRLUUURRDDUDRDRURRLRRLLDRUUURLLRLRURRRUDUDURUDRURDRDDDURDLUDDLDUDRULDRULURLUULLLURDRLDUDRDUDRLDDRUULLLULRLDUURUUDRDLLDRRDRLLRUUURLDRULUDDRDDLDRURURR"

/Set of instruction to roll the dice
/Based on instruction there is a change in dice
L: {(x[1],x[2],x[3],x[0],x[4],x[5])};
R: {(x[3],x[0],x[1],x[2],x[4],x[5])};
U: {(x[5],x[1],x[4],x[3],x[0],x[2])};
D: {(x[4],x[1],x[5],x[3],x[2],x[0])};


/Initial position of dice
d1:(1 5 6 2 3 4);
d2:(1 4 6 3 2 5);

/The history of position of dice
D1:((enlist d1));
D2:((enlist d2));

/Function to perform roll the dice with the given instruction
{.[`D1;();,;enlist (value (y,(" D1["),(string x),("-1]")))]}'[(1+til count ins);(string(ins))]
{.[`D2;();,;enlist (value (y,(" D2["),(string x),("-1]")))]}'[(1+til count ins);(string(ins))]

/Answer
sum(where ((first each (1_D1)) = (first each (1_D2))))