t:("***";enlist csv)0: `:./input/Challenge_07_input.txt


Ea: {[Ra;Rb] res: 1%(1+(10 xexp ((Rb-Ra)%400)));:res};

round:{?[(x mod 1) >= 0.5;ceiling x;floor x]};

Elo: {[Ra;Rb] res:Ra+20*(1-Ea[Ra;Rb]);:res};


update_elo:{[win;lose] 
            elo: Elo[score[win];score[lose]] - score[win];
            score[win]+:elo;
            score[lose]-:elo;
            };

winner_bol: {{.[<](get')("-" vs x)}'[x]};

players:(distinct .[,](t`h;t`a));

score:players! (count players)#1200.0



update winner:?[winner_bol score;a;h], loser:?[winner_bol score;h;a] from `t

