BEGIN JuleskD


IF ~NumTimesTalkedTo(0)~  ItsOn
SAY @11500 /* You! I know why you are here! Your daddy sends his little girl to do his dirty work, eh? You'll not be takin' me alive, ye won't! */ 
IF ~~ THEN 
DO ~Enemy()~
EXIT 
END
