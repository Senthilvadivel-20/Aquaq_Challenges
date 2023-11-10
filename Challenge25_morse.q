/
Auth: Senthil
Challenge - 29

I don't know you are going to understand this or not!! Just try decode!!


\

inp : 2 cut (" " vs "a| .- b| -... c| -.-. d| -.. e| . f| ..-. g| --. h| .... i| .. j| .--- k| -.- l| .-.. m| -- n| -. o| --- p| .--. q| --.- r| .-. s| ... t| - u| ..- v| ...- w| .-- x| -..- y| -.-- z| --..");

inp:(-1_/:inp@'0)!(inp@'1);

inp:(value inp)!(key inp);

time_frame: (value@/: read0 `:./input/Challenge_25_input.txt);
interval_index: where (value@/: read0 `:./input/Challenge_25_input.txt) = 00:00:00.000;
time_frame: (1_/:(interval_index cut time_frame));


time2delta:{2 cut ((1_deltas x)%00:00:00.717)};

t2d: time2delta'[time_frame];

/ tm: 2 cut (1_deltas value@/:(read0 `:./input/Challenge_25_input.txt))%00:00:00.717

l:" . -";

/ l1:`long$(first@/:tm)
/ l2: (0,({x 1}'[tm]))
/ l2_1: {x 1}'[tm]
/ l3:(0,(where {(x = 3) or (x=7)}'[l2]))


/ word_index: (0,(-1_(({sum(x = "3")}'[("7" vs (raze string l2_1))])+1)))
/ word_index: ((+\)word_index)

/ word: " " sv (word_index cut (raze {inp x}'[(l3 cut l@/:l1)]))


get_word:{[tm;l]
    l1:`long$(first@/:tm);
    l2: (0,({x 1}'[tm]));
    l2_1: {x 1}'[tm];
    l3:(0,(where {(x = 3) or (x=7)}'[l2]));
    /word split index
    word_index: (0,(-1_(({sum(x = "3")}'[("7" vs (raze string l2_1))])+1)));
    word_index: ((+\)word_index);
    word: " " sv (word_index cut (raze {inp x}'[(l3 cut l@/:l1)]));
    :word
        };


sentence: " " sv (get_word[;l]'[t2d]);

show sentence


//answer
//"the first letter of the answer is p the second character is q and the first letter is still p the third alphanumeric element is r and the second letter is now a the fourth is i test line please ignore zxcociquuzeotrwnqyiewmnaxzxcvl the final glyph is the letter following r in the alphabet"


