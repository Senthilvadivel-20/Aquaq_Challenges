
/Read the input file
t:("***";enlist csv)0: `:./input/Challenge_07_input.txt

/Win ration based on head to head 
Ea: {[Ra;Rb] res: 1%(1+(10 xexp ((Rb-Ra)%400)));:res};

/Round off the number floor or ceiling
round:{?[(x mod 1) >= 0.5;ceiling x;floor x]};

/Updated Elo score will return 
Elo: {[Ra;Rb] res:Ra+20*(1-Ea[Ra;Rb]);:res};

/Wrapper function for evaluate the Elo score
update_elo:{[win;lose] 
            elo: Elo[score[win];score[lose]] - score[win];
            score[win]+:elo;
            score[lose]-:elo;
            };

/Find the winner
winner_bol: {{.[<](get')("-" vs x)}'[x]};

/Get the distinct player name
players:(distinct .[,](t`h;t`a));

/Create diction having player name and their initial score
score:players! (count players)#1200.0;


/update the winner and loser in the table
update winner:?[winner_bol score;a;h], loser:?[winner_bol score;h;a] from `t;

/update the elo score for the players
update_elo'[t`winner;t`loser];

/Find the difference between max Elo score and min Elo score
show ((round max score) - (round min score))