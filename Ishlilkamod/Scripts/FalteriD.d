BEGIN FalteriD


IF ~NumTimesTalkedTo(0)~  FalteriItsOn
SAY ~I really must insist this item be delivered to me at once. I have reason to believe they have already taken our southern contact and-~
= ~Wait, someone approaches! I would know that antimagic aura anywhere! DIE!~ 
IF ~~ THEN 
DO ~Enemy() SetGlobal("ishfalteritalk","GLOBAL",1)~
EXIT 
END
