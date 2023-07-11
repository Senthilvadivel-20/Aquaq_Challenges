/ins:"LRDLU"


ins:"LRUDDLRDLLDRUUUURLUDLLDLUDRURRDLUDRDURUURDLRULDULLRDRLLLDRDRRRLLDLRUUUDRLRDRLDRRUURDRLUDUUDUDLLDRULRLDRRLUUURRDDUDRDRURRLRRLLDRUUURLLRLRURRRUDUDURUDRURDRDDDURDLUDDLDUDRULDRULURLUULLLURDRLDUDRDUDRLDDRUULLLULRLDUURUUDRDLLDRRDRLLRUUURLDRULUDDRDDLDRURURR"


L: {(x[1],x[2],x[3],x[0],x[4],x[5])};
/R: {(x[3],x[1],x[2],x[0],x[4],x[5])};
R: {(x[3],x[0],x[1],x[2],x[4],x[5])};
U: {(x[5],x[1],x[4],x[3],x[0],x[2])};
D: {(x[4],x[1],x[5],x[3],x[2],x[0])};


d1:(1 5 6 2 3 4);
d2:(1 4 6 3 2 5);

D1:((enlist d1));
D2:((enlist d2));

{.[`D1;();,;enlist (value (y,(" D1["),(string x),("-1]")))]}'[(1+til count ins);(string(ins))]
{.[`D2;();,;enlist (value (y,(" D2["),(string x),("-1]")))]}'[(1+til count ins);(string(ins))]

/Answer
sum(where ((first each (1_D1)) = (first each (1_D2))))