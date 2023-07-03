/

 You're in an oddly shaped room, there are squares on the floor and you move one square at a time. The room looks like this:

  ##
 ####
######
######
 ####
  ##



This is a six-by-six area defined in indices from 0 to 5 on each axis.
You start in the first # in the top row, or position 0 2 in indices, and recieve a series of instructions to step up (U) left (L) right (R) or down (D) on the map above. You can't step outside the # - if you're given an instruction to do so, ignore it, and move on to the next instruction.

For example, with input UDRR, you eventually run out of instructions at position 1 4.

After processing all the movements in your input, what is the sum of the indices of each position you finished on at each step (including steps where you did not move)?

For example, with input UDRR, you would start on 0 2, stay on 0 2 then move through 1 2, 1 3 and 1 4. The sum of these positions is 14 - the first position is not counted.

\

/
U: (0;-1)
D: (0;1)
L: (0;-1)
R: (0;1)
\

/Get the input
inp:"LDRDLRDRDDRLRLDLLLUULURURLDULUUDRRDDRUDDRLRRULRDUDRUDRRLRDLDRULLDUUULDRRLDDLURLURRURLRLRUULDULDLLLUDLULDUUUDLDLLUUULDDLUURDUDDRULRULRULRDULRULULRLRDRDRULLRDRRRULLRDRDDRDULDDDUUDDRDRLRRRUUDDDULULLULURURLURULRDRUDLULRULLRRLLLRRRLRRLUULDUUUULLRDRRUULULURRURDRLDLLRUDULDRULDDRURLDRDLRRULRDRRUDRURULDURRULDLDULRLLLRLUURDLUUURUDLRLUUULULULUDRRDRUDLUDLRUUUDRRDDLLUDLDURDLRRRDRDLRLRRUDLRDRUUDULLDDRRUUDDRDRDLDRLLRRRUDLRDRUDDRURLLLDDLRRDUDDUDULURDLULDDLDRRRLLLRLDUURDUDULDDRRDRDLLDRDRRLLULLLRLURLLDDLDLRDUUUDR"

/Define the positions
pos : ( (0;2);(0;3);(1;1);(1;2);(1;3);(1;4);(2;0);(2;1);(2;2);(2;3);(2;4);(2;5);(3;0);(3;1);(3;2);(3;3);(3;4);(3;5);(4;1);(4;2);(4;3);(4;4);(5;2);(5;3) )

/Make the current position as global variable
cur_pos:: (0;2)

/Define value for each moment
d:("UDLR"!((-1;0);(1;0);(0;-1);(0;1)))

/Create the function for move and validate the positions. if the changed position is in our source position, the cur_position will be change ortherwise it saty on the current position.
mv: {ch_val:cur_pos+d[x];$[ch_val in pos;[ch_val;cur_pos::ch_val];cur_pos]}

/ We get the valid position from mv function, then sum the positions.
sum raze mv'[inp]

