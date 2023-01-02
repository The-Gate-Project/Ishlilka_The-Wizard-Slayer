BEGIN BISHY


CHAIN 
IF ~InParty("#Ishy")
InParty("Edwin")
!StateCheck("Edwin",CD_STATE_NOTVALID)
!StateCheck("#Ishy",CD_STATE_NOTVALID)
Global("Ishdwin2","GLOBAL",0)~ THEN BEDWIN Ishdwin2
~Explain yourself, orc. ~
DO ~SetGlobal("Ishdwin2","GLOBAL",1)~
== BISHY ~What are you on about this time, Edwin?~
== BEDWIN ~Don't play coy with me, girl. You are weak and pathetic mind could never aspire to cast even the simplest cantrip. So what are these magical protections you possess? (Yes, I will pry any information she has from her...)~
== BISHY ~I don't know what you're talking about, and even if I did, I certainly wouldn't tell *you*.~
EXIT


CHAIN 
IF ~InParty("#Ishy")
See("#Ishy")
!StateCheck("Jaheira",CD_STATE_NOTVALID)
!StateCheck("#Ishy",CD_STATE_NOTVALID)
Global("Ishydruid","GLOBAL",0)~ THEN BJAHEI Ishydruid
~ I've been watching you for a time, Ishlilka. Honorable....associates that I work with would greatly value your skills.~
DO ~SetGlobal("Ishydruid","GLOBAL",1)~
== BISHY  ~ Would they? I work for my father, however. I appreciate the offer though. ~
== BJAHEI ~ As you like, girl. ~
EXIT


CHAIN IF ~InParty("#Ishy")
!StateCheck("Viconia",CD_STATE_NOTVALID)
!StateCheck("#Ishy",CD_STATE_NOTVALID)
Global("ISHYVICCY1","GLOBAL",0) 
InParty("Viconia")~ THEN BISHY ISHYVICCY1
~Viconia, I don't mind you. I see us as a lot alike, in fact.~
DO ~SetGlobal("ISHYVICCY1","GLOBAL",1)~ 
== BVICON ~Ugh. A half breed orc a lot alike to a drow? You are as a dog to me. Away with you. ~
== BISHY ~Whatever.~
EXIT

CHAIN IF ~InParty("#Ishy")
InParty("Quayle")
!StateCheck("Quayle",CD_STATE_NOTVALID)
!StateCheck("#Ishy",CD_STATE_NOTVALID)
Global("ISHYQU1","GLOBAL",0)~ THEN BQUAYL ISHYQU1
~Many of your low-brained heritage don't appreciate my supieror intelligence for what it is. I hope you'll prove yourself different.~
DO ~SetGlobal("ISHYQU1","GLOBAL",1)~
== BISHY ~I'll start appreciating it when you can show me an example of this intelligence, Quayle.~
== BQUAYL ~You think that's funny? Your primitive attempts at humor fail to impress.~
== BISHY ~Or maybe you are just too stupid to understand the humor.~
== BQUAYL ~What?! I am not stupid, you dummy!~
== BISHY ~Oh, nice one. Very clever.~
EXIT


CHAIN IF ~InParty("#Ishy")
!StateCheck("Viconia",CD_STATE_NOTVALID)
!StateCheck("#Ishy",CD_STATE_NOTVALID)
Global("ISHYVICCY1","GLOBAL",1)
Global("ISHYVICCY2","GLOBAL",0)
InParty("Viconia")~ THEN BVICON ISHYVICCY2
~Perhaps I was wrong about you at first. You a certainly a strong woman. And I can respect that.~
DO ~SetGlobal("ISHYVICCY2","GLOBAL",1)~ 
== BISHY ~Really? I mean, thanks. So are you. ~
== BVICON ~Hmph. Don't make me regret what I just said.~
EXIT

CHAIN IF ~InParty("#Ishy")
!StateCheck("Viconia",CD_STATE_NOTVALID)
!StateCheck("#Ishy",CD_STATE_NOTVALID)
Global("ISHYVICCY1","GLOBAL",1)
Global("ISHYVICCY2","GLOBAL",1)
Global("ISHYVICCY3","GLOBAL",0)
See("Viconia")~ THEN BISHY ISHYVICCY3
~It must have been difficult, fleeing the Underdark all alone.~
DO ~SetGlobal("ISHYVICCY3","GLOBAL",1)~ 
== BVICON ~Yes. The horrors of that realm are unlike anything your mind can imagine. Now speak of it no more. ~
== BISHY ~Right...sorry.~
EXIT


CHAIN IF ~InParty("#Ishy")
InParty("Alora")
!StateCheck("Alora",CD_STATE_NOTVALID)
!StateCheck("#Ishy",CD_STATE_NOTVALID)
Global("IshyAloraBanter1","GLOBAL",0) 
~ THEN BALORA ISHYALORABANTER1
~Hey Ishy!~
DO ~SetGlobal("IshyAloraBanter1","GLOBAL",1)~
== BALORA ~What is that weird necklace you have! I've never seen a symbol like it before. Is it valuable?~
== BISHY ~No, not really. It's mostly just sentimental. A gift from my parents...hey, wait! I don't ever wear it! How do you know I even have it!~
== BALORA ~Um...anyway, it was pretty! Let's catch up now!~
EXIT


CHAIN IF ~InParty("#Ishy")
InParty("Alora")
!StateCheck("Alora",CD_STATE_NOTVALID)
!StateCheck("#Ishy",CD_STATE_NOTVALID)
Global("IshyAloraBanter2","GLOBAL",0)~ THEN BISHY ISHYALORABANTER2
~You're always so cheery, Alora. I wish I could be like that.~
DO ~SetGlobal("IshyAloraBanter2","GLOBAL",1)~
== BALORA ~Well thank you kindly! Somebody has to lift the spirits of the grumpyguts in this party!~
== BISHY ~Aren't there any times when you feel sad? When putting on a smile is just too hard!~
== BALORA ~Of course I feel sad sometimes. But it's never to hard to smile, silly! You'll never learn to feel better if you can't smile through the bad times!~
== BISHY ~Well...maybe you're right. That was almost wise. I didn't know you had it in you, Alora.~
== BALORA ~Hmph!~
EXIT

CHAIN IF ~InParty("#Ishy")
InParty("Kagain")
!StateCheck("Kagain",CD_STATE_NOTVALID)
!StateCheck("#Ishy",CD_STATE_NOTVALID)
Global("IshyKagainBanter1","GLOBAL",0)~ THEN BKAGAI ISHYKAGAINBANTER1
~I don't trust orclings. Even the lady ones.~
DO ~SetGlobal("IshyKagainBanter1","GLOBAL",1)~
== BKAGAI ~I've never known one of your kind I didn't want to split with my axe.~
== BISHY ~You're welcome to try, stumpy. Otherwise, leave me alone. ~
EXIT

CHAIN
IF ~InParty("#Ishy")
InParty("IMOEN")
!Global("IshyRomanceActive","GLOBAL",0)
!StateCheck("Imoen",CD_STATE_NOTVALID)
!StateCheck("#Ishy",CD_STATE_NOTVALID)
Global("IshyImoenR","GLOBAL",0)~ THEN BISHY IshyImoenR
~Imoen, can you tell me more about <CHARNAME>? What he was like, before all this started, I mean?~
DO ~SetGlobal("IshyImoenR","GLOBAL",1)~
== BIMOEN ~Why ya asking about <CHARNAME>? You think he's cute or somethin'?~
== BISHY ~I didn't say that!~
== BIMOEN ~But you do! I can see it on your face! Ha!~
== BISHY ~Imoen, I swear, if you say anything...~
== BIMOEN ~Don't worry, my lips are sealed. Just between us girls, right?~
EXIT

CHAIN
IF ~InParty("#Ishy")
InParty("Imoen")
Global("IshyRomanceActive","GLOBAL",2)
!StateCheck("Imoen",CD_STATE_NOTVALID)
!StateCheck("#Ishy",CD_STATE_NOTVALID)
Global("Ishyimoencharnametalk","GLOBAL",0)~ THEN BISHY IshyImoenR1
~Imoen, I need some advice...~
DO ~SetGlobal("Ishyimoencharnametalk","GLOBAL",1)~
== BIMOEN ~Of course, Ishy! Always here to help, like a regular big sister, I am.~
== BISHY ~Right...so, how can I get <CHARNAME> to like me?~
== BIMOEN ~Ha! He's a pretty simple guy, you know? Not very smart or sophisticated or anything. Just lay on the charms?~
== BISHY ~Lay on...the charms?~
== BIMOEN ~Yup, we're definitely gonna have the Talk.~
EXIT


CHAIN
IF ~InParty("#Ishy")
InParty("IMOEN")
Global("IshyImoen1","GLOBAL",0)~ THEN BIMOEN IshyImoen1
~Heya Ishy!~
== BISHY ~"Ishy?"~
DO ~SetGlobal("IshyImoen1","GLOBAL",1)~
== BIMOEN ~Yeah! "Ishlilka" is sucha mouthful, isn't it? Mind if I just call ya Ishy instead?~
== BISHY ~A little late to be asking that, isn't it? ~
== BIMOEN ~Yeah, yeah. So why are you here anyway? You know, being an adventurer and stuff!~
== BISHY ~My father is a great Antimagic Knight, Imoen. I want to live up to his example, and perhaps even lead men and women into battle on my own as well.~
== BIMOEN ~You mean be a real leader, like <CHARNAME>?~
== BISHY ~Something like that, yes.~
EXIT


CHAIN
IF ~InParty("#Ishy")
InParty("Coran")
!StateCheck("Coran",CD_STATE_NOTVALID)
!StateCheck("#Ishy",CD_STATE_NOTVALID)
Global("IshyCoran1","GLOBAL",0)~ THEN BCORAN IshyCoran1
~I'm not opposed to the company of orc women, you know. Provided I am sufficiently drunk that is. ~
DO ~SetGlobal("IshyCoran1","GLOBAL",1)~
== BISHY ~Stow it, you creep. I am always opposed to the company of perverts.~
== BCORAN ~You wound me. It was only an innocent comment.~ 
EXIT

CHAIN 
IF ~InParty("#Ishy")
InParty("Coran")
Global("ishcoranbow","GLOBAL",0)~ THEN BISHY IshCoranBow
~I hate to admit it, but I don't think i'd last a minute against your archery. It's outstanding, truly.~
== BCORAN ~What's this? Am I getting a compliment from Ishlilka now? Finally warming up to me, are you?~
== BISHY ~Well, I certainly wouldn't want you as my enemy.~
== BCORAN ~Nobody does, my dear.~
EXIT 


CHAIN 
IF ~InParty("#Ishy")
!StateCheck("Coran",CD_STATE_NOTVALID)
!StateCheck("#Ishy",CD_STATE_NOTVALID)
Global("IshySafana1","GLOBAL",0)~ THEN BSAFAN IshySafana1
~Hm...yes. My dear, you are certainly passable. ~
DO ~SetGlobal("IshySafana1","GLOBAL",1)~
== BISHY ~What are you talking about, Safana?~
== BSAFAN ~I mean your looks aren't so far gone that you can't aspire to a small amount of beauty if you tried, dear. Let me teach you some things.~ 
== BISHY ~Um...well, sure. It couldn't hurt, right?~
EXIT

CHAIN
IF ~InParty("#Ishy")
!StateCheck("Branwen",CD_STATE_NOTVALID)
!StateCheck("#Ishy",CD_STATE_NOTVALID)
Global("IshyBranwen1","GLOBAL",0)~ THEN BBRANW IshyBranwen1
~Ishlilka, was it?~
DO ~SetGlobal("IshyBranwen1","GLOBAL",1)~
== BISHY ~Uh...yeah.~
== BBRANW ~Hold your head up, girl. You are too proud a warrior to act like such a mewling kitten.~
== BISHY ~Right. I'll try.~
== BBRANW ~*Sigh*~
EXIT

CHAIN IF ~InParty("#Ishy")
InParty("Branwen")
Global("BranwenIshy","GLOBAL",0)~ THEN BISHY IshyBranwen2
~For a priest you fight well, Branwen. My father's mercenaries might have need of someone like you.~
DO ~SetGlobal("BranwenIshy","GLOBAL",1)~ 
== BBRANW ~I once did such a thing and there was no honor in it, but you seem a different sort. Let's have a drink tonight and talk it over more.~
== BISHY ~I'd like that.~
EXIT 

CHAIN
IF ~InParty("#Ishy")
InParty("Edwin")
!StateCheck("Edwin",CD_STATE_NOTVALID)
!StateCheck("#Ishy",CD_STATE_NOTVALID)
Global("IshyEdwin1","GLOBAL",0)~ THEN BEDWIN IshyEdwin1
~(Damn demi-human incompetent...) Excuse me, Ishlilka. Have you ever noticed that even mongrel specimens of orcs such as yourself excel in no other area except the most primitive forms of violence? ~
DO ~SetGlobal("IshyEdwin1","GLOBAL",1)~
== BISHY ~That's not true at all, Edwin. My mother once wielded divine magic well enough to match even your power.~
== BEDWIN ~Oh, your mommy is it? Very intimidating, girl. (It's amazing her mother isn't some bumbling beast...)~
EXIT

CHAIN 
IF ~InParty("#Ishy")
InParty("Edwin")
!StateCheck("Edwin",CD_STATE_NOTVALID)
!StateCheck("#Ishy",CD_STATE_NOTVALID)
Global("IshyEdwin2","GLOBAL",0)~ THEN BISHY IshyEdwin2
~If <CHARNAME> didn't suffer your company, i'd have taken you down by now. ~
DO ~SetGlobal("IshyEdwin2","GLOBAL",1)~
== BEDWIN ~Stow it, girl, and do not test my patience further. Your pathetic skills are nothing compared to mine. (I shall have to watch this one carefully...)~
== BISHY ~Allow me to bear witness to your evil, and the red on your robes won't be from the fabric.~
== BEDWIN ~Oh, very clever! As if every Red Wizard hasn't heard that one before.~
EXIT



CHAIN
IF ~InParty("#Ishy")
!StateCheck("Minsc",CD_STATE_NOTVALID)
!StateCheck("#Ishy",CD_STATE_NOTVALID)
Global("IshyMinsc1","GLOBAL",0)~ THEN BMINSC IshyMinsc1
~Ishlilka! You are a noble warrior indeed. See how Boo swells with pride in your presence? ~
== BISHY ~Well, thank you Minsc. And you too, little Boo.~
== BMINSC ~Have you ever considered becoming a ranger? Think of the benefits! You could have a miniature giant space hamster of your very own!~
== BISHY ~That's certainly tempting, i'll admit. He's so cute! Aren't you, Boo? ~
== BMINSC ~*squeak*~ 
EXIT


CHAIN
IF ~InParty("#Ishy")
!StateCheck("SHARTEEL",CD_STATE_NOTVALID)
!StateCheck("#Ishy",CD_STATE_NOTVALID)
Global("IshyShar1","GLOBAL",0)~ THEN BSHART IshyShar1
~ Don't worry about what any man says about you, Ishlilka. They are intimidated by strong women like us. ~
DO ~SetGlobal("IshyShar1","GLOBAL",1)~
== BISHY ~ I think that was a compliment, so i'll take it. ~
== BSHART ~ It was. Powerful women should stick together. All the better to stick it to the men who cross us. ~
EXIT

CHAIN
IF ~InParty("#Ishy")
Global("IshyRomanceActive","GLOBAL",2)
!StateCheck("SHARTEEL",CD_STATE_NOTVALID)
!StateCheck("#Ishy",CD_STATE_NOTVALID)
Global("IshyShar2","GLOBAL",0)~ THEN BSHART IshyShar2
~So, you've started bedding <CHARNAME>, is it?~
DO ~SetGlobal("IshyShar2","GLOBAL",1)~
== BISHY ~What?! No, it's not like that...~
== BSHART ~Oh please. Just make sure not to get attatched. Men can't be trusted, and aren't worth it anyways.~
== BISHY ~I am really sorry you feel that way. One day, I hope the pain inside you can be healed.~
== BSHART ~Pfeh. I don't need "healing."~
EXIT


CHAIN
IF ~InParty("Montaron")
See("Montaron")
!StateCheck("Montaron",STATE_SLEEPING)
CombatCounter(0)
!See([ENEMY])
Global("IshyMont","GLOBAL",0)
!Dead("Xzar")~ THEN BMONTA IshyMontaron1
~Mage-bleeder, I have need of ye.~
== BISHY ~For what exactly?~
DO ~SetGlobal("IshyMont","GLOBAL",1)~
== BMONTA ~How much would it cost? Ya know, to off my mad little "partner", quiet like.~ 
== BISHY ~Why couldn't you just do such a thing yourself?~
== BMONTA ~Never know who's watching, aye...magical or otherwise. Agh, forget it. Ye've not the stomach for it, weakling.~
EXIT 
	
CHAIN
IF ~InParty("Montaron")
!StateCheck("Montaron",STATE_SLEEPING)
CombatCounter(0)
!See([ENEMY])
Global("IshyMont1","GLOBAL",0)~ THEN BISHY IshyMontaron2
~I've never seen a halfing fight like that. Quite impressive.~
DO ~SetGlobal("IshyMont1","GLOBAL",1)~
== BMONTA ~Ach, speak to me again like that, and ye will be the next one I bleed.~
== BISHY ~There's no need to be like that. It was only a compliment.~
== BMONTA ~Ye may be a mite taller than me, girlie, but I can end ye before ye blink. Never forget that.~
EXIT 

CHAIN IF 
~InParty("Ajantis")
!StateCheck("Montaron",STATE_SLEEPING)
CombatCounter(0)
!See([ENEMY])
Global("IshyAjantis","GLOBAL",0)~ THEN BAJANT IshyAjantis1
~I have heard of the Spears of Argath, you know.~
DO ~SetGlobal("IshyAjantis","GLOBAL",1)~
== BISHY ~Oh? I hope their reputation precedes them in a good way.~
== BAJANT ~Indeed it does, milady. Even the Order respects them for their deeds of valor. ~
== BISHY ~Well, it's a reputation to live up to at least. Battle for coin doesn't always attract the most reputable sort, however.~
== BAJANT ~There is always knighthood.~
EXIT 	

CHAIN IF 
~InParty("Ajantis")
!StateCheck("Montaron",STATE_SLEEPING)
CombatCounter(0)
!See([ENEMY])
Global("IshyAjantis1","GLOBAL",0)~ THEN BAJANT IshyAjantis1
~I think you woul make a fine Paladin.~
DO ~SetGlobal("IshyAjantis1","GLOBAL",1)~
== BISHY ~If I wasn't an orc, you mean? Has there ever been such a thing?~
== BAJANT ~Well...i'm not sure, truth be told. Perhaps you could be the first. ~
== BISHY ~I appreciate the thought, but i'm fine where I am. ~
EXIT 	
	
CHAIN
IF ~InParty("Garrick")
InParty("#Ishy")
!StateCheck("Garrick",CD_STATE_NOTVALID)
!StateCheck("#Ishy",CD_STATE_NOTVALID)
Global("IshyGar1","GLOBAL",0)~ THEN BISHY IshyGar1
~ Garrick, this may be an odd request, but do you know any songs regarding orcs? That aren't about a bloodbath of some kind? ~
DO ~SetGlobal("IshyGar1","GLOBAL",1)~
== BGARRI ~Um...no, my lady.~
== BISHY ~ That's a shame. Your music is always so pleasing to hear. I'd hoped there be a tale I could relate to. ~
== BGARRI ~ Well, thank you, my lady! If I come across any, I will be sure to learn them! ~
== BISHY ~I've never heard of any, so don't burden yourself searching on my account.~
EXIT

CHAIN 
IF ~InParty("#Ishy")
InParty("Garrick")
!StateCheck("Garrick",CD_STATE_NOTVALID)
!StateCheck("#Ishy",CD_STATE_NOTVALID)
Global("Ishygarnight","GLOBAL",0)~ THEN BISHY Ishygarnight
~Haha! Garrick, that was wonderful! Play another song!~
DO ~SetGlobal("Ishygarnight","GLOBAL",1)~
== BGARRI ~My lady, I think you've had enough to drink...~
== BISHY ~What? I'm fine! The sun has set, we're enjoying the great outdoors. What's wrong with a little drink?~
== BGARRI ~Well, my lady, it's just that I wouldn't it a "little" when you start to stumble. ~
== BISHY ~Garrick....~
== BGARRI ~Um...yes, Ishlilka?~
== BISHY ~Do you think <CHARNAME>...likes me?~
== BGARRI ~Ah, love! Just the thing that will brighten up my tales of these adventures!~
== BISHY ~Garrick!~
== BGARRI ~Oh! Right. Um, I suppose it is possible, yes.~
== BISHY ~Ugh, forget it! ...But thanks anyway, Garrick.~
EXIT

CHAIN
IF ~InParty("#Ishy")
InParty("Yeslick")
!StateCheck("Yeslick",CD_STATE_NOTVALID)
!StateCheck("#Ishy",CD_STATE_NOTVALID)
Global("IshyYes1","GLOBAL",0)~ THEN BYESLI IshyYes1
~ You know, in all my years I have seen many half orcs. Not many were as kind as you, lady. ~
DO ~SetGlobal("IshyYes1","GLOBAL",1)~
== BISHY ~Well, thank you Yeslick. That was very kind.~
== BYESLI ~ I just hope the harshness of the world doesn't dull your kind nature in time.  ~
EXIT

CHAIN
IF ~InParty("#Ishy")
InParty("Yeslick")
!StateCheck("Yeslick",CD_STATE_NOTVALID)
!StateCheck("#Ishy",CD_STATE_NOTVALID)
Global("IshyYes2","GLOBAL",0)~ THEN BISHY IshyYes2
~ I'm really sorry about what happened, Yeslick. You know, to your clan and it's home. ~
DO ~SetGlobal("IshyYes2","GLOBAL",1)~
== BYESLI ~I prefer not to think of it overmuch, if you don't mind. But still. I appreciate the sentiment. ~
== BYESLI ~ The beating we gave those filth in return is as much a reward as i'm going to get, I figure. That will have to be enough for me. ~
EXIT

CHAIN
IF ~InParty("#Ishy")
!StateCheck("Kivan",CD_STATE_NOTVALID)
!StateCheck("#Ishy",CD_STATE_NOTVALID)
Global("IshyKiv","GLOBAL",0)~ THEN BKIVAN IshyKiv1
~ Have you ever spent much time in the wilderness, Ishlilka? ~
DO ~SetGlobal("IshyKiv","GLOBAL",1)~
== BISHY ~Well, yes, in fact, i've spent a good deal of time stalking the wilderness areas. The town I lived in was not always kind to me. Sometimes it was easier to be alone.  ~
== BKIVAN ~I understand. The solitude of forested lands can be intoxicating. But it is no excuse to run from ones problems. ~
EXIT

CHAIN
IF ~InParty("#Ishy")
InParty("KIVAN")
!StateCheck("KIVAN",CD_STATE_NOTVALID)
!StateCheck("#Ishy",CD_STATE_NOTVALID)
Global("IshyKiv2","GLOBAL",0)~ THEN BKIVAN IshyKiv2
~ Be careful, Ishlilka. ~
DO ~SetGlobal("IshyKiv2","GLOBAL",1)~
== BISHY ~Hm? What do you mean?  ~
== BKIVAN ~You hunt down criminal mages for a living, yes? Be wary that the hunter does not become the hunted. Mages are highly unpredictable prey, and you are still coming into your own power.~
== BISHY ~Thank you for the advice, Kivan. I'm not too worried, however. I've got <CHARNAME> to back me up, right?~
== BKIVAN ~Indeed. That one shows much potential.~
EXIT


CHAIN
IF ~InParty("#Ishy")
InParty("Kivan")
!StateCheck("Kivan",CD_STATE_NOTVALID)
!StateCheck("#Ishy",CD_STATE_NOTVALID)
Global("IshyKiv3","GLOBAL",0)~ THEN BKIVAN IshyKiv3
~You wield a bow with skill, Ishlilka, but I feel with some more practice you could easily grow twice as effective. Would you care for me to teach you sometime, perhaps?~
DO ~SetGlobal("IshyKiv3","GLOBAL",1)~
== BISHY ~I'd like that, Kivan. You're certainly much better handling a bow than I am. I guess that's to be expected from an elf, however. Especially a ranger.~
== BKIVAN ~Perhaps that is true, although it certainly did not come to me so easily. Many hours did I have to practice in order to gain the skills that I have.~
== BKIVAN ~However little good it did me in the end.~
EXIT




CHAIN 
IF ~InParty("#Ishy")
InParty("Tiax")
!StateCheck("Tiax",CD_STATE_NOTVALID)
!StateCheck("#Ishy",CD_STATE_NOTVALID)
Global("IshyTiax","GLOBAL",0)~ THEN BTIAX IshyTiax1
~ Yes...you will make the perfect minion for Tiax's army when he rules all!  ~
DO ~SetGlobal("IshyTiax1","GLOBAL",1)~
== BISHY ~ Are you going on about this again? Honestly, <CHARNAME>, I have no idea why you keep him around.  ~
== BTIAX ~Silence, disobediant wench! Or you will feel the future wrath of mighty Tiax! ~
== BISHY ~Well I certainly wouldn't want that to happen, would I?~
EXIT

CHAIN
IF ~InParty("#Ishy")
InParty("Tiax")
See("#Ishy")
!StateCheck("Tiax",CD_STATE_NOTVALID)
!StateCheck("#Ishy",CD_STATE_NOTVALID)
Global("IshyTiax1","GLOBAL",0)~ THEN BTIAX IshyTiax2
~Great news, unworthy one!~
DO ~SetGlobal("IshyTiax2","GLOBAL",1)~
== BISHY ~What is is this time?~
== BTIAX ~The great Tiax has decided your life will be spared under his impending rule, and you may even have a position one of my personal guards!~
== BISHY ~When you finally "conquer all", as you say, i'd be glad to perform that role. Good luck with that.~
EXIT

CHAIN 
IF ~InParty("Eldoth")
InParty("Skie")
!StateCheck("Eldoth",CD_STATE_NOTVALID)
!StateCheck("#Ishy",CD_STATE_NOTVALID)
Global("IshyEl1","GLOBAL",0)~ THEN BISHY IshyEl1
~ I dislike the way you treat Skye. You think you're so charming. I can see right through you.  ~
DO ~SetGlobal("IshyEl1","GLOBAL",1)~
== BELDOT  ~ What would you know of charming, hideous orc thing? You were not born to be one of the beautiful people. I imagine concepts of "charm" elude your simple mind. ~
== BISHY ~ If you hurt her, you better be far from here when you do it. ~
EXIT

CHAIN 
IF ~InParty("Eldoth")
InParty("#Ishy")
Global("IshyEl2","GLOBAL",0)~ THEN BELDOT IshyEl2
~You are too friendly with Skie. You think your bumbling self can make her believe she can do better? Don't be ridiculous.~ DO ~SetGlobal("IshyEl2","GLOBAL",1)~
== BISHY ~I don't need to do anything, she will realize it soon enough. In the meantime, keep your slimey self away from me.~
== BELDOT ~Gladly...orc bitch.~
EXIT

CHAIN 
IF ~InParty("Eldoth")
InParty("Skie")
!StateCheck("Skie",CD_STATE_NOTVALID)
!StateCheck("#Ishy",CD_STATE_NOTVALID)
Global("IshySk6","GLOBAL",0)~ THEN BISHY IshySk1
~ Skye, you're a nice girl. But with all due respect, you're being a bit naive. Eldoth is using you! Why do you stay with that jerk? He's just going to hurt you and abandon you in the end.  ~
DO ~SetGlobal("IshySk6","GLOBAL",1)~ 
== BSKIE ~ Again, Ishlilka? I thank you for your concern, because you have always been kind to me. But I am an adult, and I can handle myself, thank you. Besides, he loves me. I know it.  ~
== BISHY ~*sigh* ~
EXIT

CHAIN 
IF ~InParty("Skie")
InParty("#Ishy")
!Global("IshyRomanceActive","GLOBAL",0)
Global("IshySk1","GLOBAL",0)~ THEN BSKIE IshySk90
~<CHARNAME> is so nice to you, you know.~ DO ~SetGlobal("IshySk1","GLOBAL",1)~
== BISHY ~Yes, he's been very sweet. I didn't meet him until after he set out on the road, but I think the loss of his father really hit him hard.~
== BSKIE ~I wish Eldoth was as nice to me. Nobody questions that <CHARNAME> cares about you, after all.~
== BISHY ~Well, they might have a-~
== BSKIE ~You too? Please, let's change the subject.~
EXIT

CHAIN
IF ~InParty("#Ishy")
InParty("Skie")
Global("IshySk9","GLOBAL",0)
Global("IshySk99","GLOBAL",0)~ THEN BSKIE IshySK9
~You're so impressive in battle, Ishlilka. Like a real adventurer. I wish I was that brave.~ DO ~SetGlobal("IshySk9","GLOBAL",1)~
== BISHY ~Thanks Skie, but don't worry, you have skills I could never do.~
== BSKIE ~The others aren't always nice to me. They say I complain too much. But i'm glad you're here with us!~
EXIT


CHAIN
IF ~InParty("#Ishy")
InParty("Skie")
Global("IshySk99","GLOBAL",0)
InParty("Imoen")
Global("IshySk9","GLOBAL",0)~ THEN BSKIE IshSK99
~You're so impressive in battle, Ishy. Like a real adventurer. I wish I was that brave.~ DO ~SetGlobal("IshySk99","GLOBAL",1)~
== BISHY ~Now you too? Did you get that from Imoen?~
== BSKIE ~I take it you don't like it very much? I'll stick with Ishlilka, then. I wouldn't want for you to be rude to me as well.~
== BISHY ~Well, gee...now you made me feel bad about it.~
EXIT


CHAIN 
IF ~InParty("Khalid")
InParty("#Ishy")
!StateCheck("Khalid",CD_STATE_NOTVALID)
!StateCheck("#Ishy",CD_STATE_NOTVALID)
Global("IshyKh2","GLOBAL",0)~ THEN BKHALI IshyKh2
~I hope you are not o-offended by this question, but are your parents as n-noble as you are?~
== BISHY ~Well, my father was and still does work in a reuptable mercenary company, and he's always been fair to everyone he met. My mother...well, she's certainly a good person now. But her past is more...colorful. ~
== BKHALI ~I-I see. We will speak of it no more then. ~
EXIT

CHAIN 
IF ~InParty("#Ishy")
InParty("Khalid")
!StateCheck("Khalid",CD_STATE_NOTVALID)
!StateCheck("#Ishy",CD_STATE_NOTVALID)
Global("IshyKh1","GLOBAL",0)~ THEN BKHALI IshyKh1
~ W-w-where did you learn the arts of weapons, Ishlilka? Your technique is r-rather impressive...  ~
DO ~SetGlobal("IshyKh1","GLOBAL",1)~
== BISHY  ~ My father taught me. We would always train until I could barely take it anymore. ~
== BISHY ~After one particularly brutal session, he told me "I love you, Ishlilka. And I won't always be there to protect you. So you have to get strong now. You will understand later." For some reason, that always stuck with me. ~
== BKHALI ~W-wise words, considering where we are now. ~
EXIT



CHAIN 
IF ~InParty("#Ishy")
See("#Ishy")
!StateCheck("Jaheira",CD_STATE_NOTVALID)
!StateCheck("#Ishy",CD_STATE_NOTVALID)
Global("IshyRomanceActive","GLOBAL",2)
Global("IshyJa1","GLOBAL",0)~ THEN BJAHEI IshyJa1
~ Ishlilka, <CHARNAME> is going through some very hard times right now, you understand?  ~
DO ~SetGlobal("IshyJa1","GLOBAL",1)~
== BISHY  ~ Of course. Why are you telling me this. ~
== BJAHEI ~ No big reason. You two are growing close of late. I merely wanted to let you that he may not be ready for what you may be seeking. ~
== BISHY ~ I'm sure we will be survive without your advice. ~
EXIT

CHAIN 
IF ~InParty("#Ishy")
See("#Ishy")
!StateCheck("Jaheira",CD_STATE_NOTVALID)
!StateCheck("#Ishy",CD_STATE_NOTVALID)
Global("IshyJa2","GLOBAL",0)~ THEN BJAHEI IshyJa2
~ Hold your head up, girl. It is unbecoming of a warrior to be so timid.  ~
DO ~SetGlobal("IshyJa2","GLOBAL",1)~
== BISHY  ~ Timid, like Khalid? ~
== BJAHEI ~ Very funny. I was only trying to give you some advice.  ~
== BISHY ~ I can look after myself, thank you. ~
EXIT

CHAIN
IF ~InParty("#Ishy")
See("#Ishy")
!StateCheck("Dynaheir",CD_STATE_NOTVALID)
!StateCheck("#Ishy",CD_STATE_NOTVALID)
Global("IshyDyna1","GLOBAL",0)~ THEN BDYNAH IshyDyna1
~ Thy ferociousness in combat is admirable, my noble friend. Rashemi beserkers value such courage in battle. ~
DO ~SetGlobal("IshyDyna1","GLOBAL",1)~
== BISHY ~I'm not sure how I feel about being compared to a barbarian...but thank you. ~
== BDYNAH ~Twas meant as a compliment, and I should note that one should not be ashamed of what they are good at, no matter how others view it.~
== BDYNAH ~And please...don't take Minsc as an example. Our beserkers are not often...quite so touched in the head.~
EXIT

CHAIN 
IF ~InParty("#Ishy")
See("#Ishy")
InParty("Xan")
!StateCheck("Xan",CD_STATE_NOTVALID)
!StateCheck("#Ishy",CD_STATE_NOTVALID)
Global("IshyXan1","GLOBAL",0)~ THEN BXANNN IshyXan1
~ Oh, gods above...another deary day filled with reckless combat, plunging use inevitably towards our ultimate doom. ~
DO ~SetGlobal("IshyXan1","GLOBAL",1)~
== BISHY ~ Hey, <CHARNAME>, I know magic is very helpful in combat...but can we please get a less whiny mage? ~
== BXANNN ~I heard that, orcess! Oh...what do I care. We'll all be dead soon anyway. ~
EXIT

CHAIN IF ~InParty("Faldorn")
InParty("#Ishy")
!StateCheck("Faldorn",CD_STATE_NOTVALID)
!StateCheck("#Ishy",CD_STATE_NOTVALID)
Global("IshyFal1","GLOBAL",0)~ THEN BISHY ishyfaldo1
~Why the Shadow Druids instead of the ordinary druids? Surely you can not gain much from conflict from within your own order.~
DO ~SetGlobal("IshyFal1","GLOBAL",1)~
== BFALDO ~Hss! Do not presume to speak to me about matters in which you know nothing.~
= ~The enemies of nature torture the Mother with their tools of civilization, ripping and tearing away her precious gifts. To not act with violence in turn is to turn your back on her.~
== BISHY ~On second thought...i'm not sure I want to have this conversation.~
EXIT 

CHAIN 
IF ~InParty("#Ishy")
See("Xan")
!StateCheck("Xan",CD_STATE_NOTVALID)
!StateCheck("#Ishy",CD_STATE_NOTVALID)
Global("IshyXan2","GLOBAL",0)~ THEN BISHY IshyXan2
~ Xan, you want said you were a Greycloak of Evereska, right? Would you mind telling me more about the place? It must have been wonderful. ~
DO ~SetGlobal("IshyXan2","GLOBAL",1)~
== BXANNN ~Not at the moment, i'm sorry. I'm feeling far too depressed, you see, being away from my homeland so long. Talking about it would only make it worse. ~
== BISHY ~Well, gee...i'm sorry for bringing it up then. But still Xan, all this constant groaning will get you nowhere.~
EXIT

CHAIN
IF ~InParty("#Ishy")
See("#Ishy")
!StateCheck("Dynaheir",CD_STATE_NOTVALID)
!StateCheck("#Ishy",CD_STATE_NOTVALID)
Global("IshyRomanceActive","GLOBAL",2)
Global("IshyDynaR","GLOBAL",0)~ THEN BDYNAH IshyDynaR
~ Ishlilka, may I speak with thee a moment? ~
DO ~SetGlobal("IshyDynaR","GLOBAL",1)~
== BISHY ~Uh..sure. What's going on, Dynaheir? ~
== BDYNAH ~ Art thou...becoming close with <CHARNAME>? Thou talk often, of late.~
== BISHY ~ I don't think that's any of your buisness! ~
== BDYNAH ~ There is no need to be defensive, but if that is how thou will be, I will speak of it no more. ~
EXIT

CHAIN
IF ~InParty("#Ishy")
InParty("dorn")
See("#Ishy")
!StateCheck("dorn",CD_STATE_NOTVALID)
!StateCheck("#Ishy",CD_STATE_NOTVALID)
Global("IshyDorn1","GLOBAL",0)~ THEN BDORN IshyDorn1
~Ishlilka, was it? You fight quite well for a woman, even an orc one. And you are quite attractive, besides.~
DO ~SetGlobal("IshyDorn1","GLOBAL",1)~
== BISHY ~You're a monster, Dorn, and I don't know why <CHARNAME> even allows you to stay. ~
== BDORN ~He keeps me because I prove my worth, girl. As he keeps you. And I like it when they...struggle.~
== BISHY ~*ugh!*~
EXIT

CHAIN 
IF ~InParty("#Ishy")
InParty("neera")
See("#Ishy")
!StateCheck("neera",CD_STATE_NOTVALID)
!StateCheck("#Ishy",CD_STATE_NOTVALID)
Global("IshyNer1","GLOBAL",0)~ THEN BNEERA IshyNer1
~So, you're trained to hunt people like me, huh?~
DO ~SetGlobal("IshyNer1","GLOBAL",1)~
== BISHY ~Well...yes. I guess so. I hope you don't take it personally. I have nothing against mages, even wild ones.~
== BNEERA ~Oh, don't worry, I don't. You wouldn't be the first to try to hunt me, trust me.~
== BISHY ~Really? But you seem so nice.~
== BNEERA ~Well that doesn't matter much when you go on a wild surge and set half the town ablaze, but...ya know.~
EXIT

// sod version 


CHAIN
IF ~ InParty("#Ishy")
InParty("rasaad")
See("#Ishy")
!StateCheck("rasaad",CD_STATE_NOTVALID)
!StateCheck("#Ishy",CD_STATE_NOTVALID)
Global("IshyRas1","GLOBAL",0)~ THEN BISHY IshyRas1
~I've never seen anyone fight armed opponenets with their bare hands before.~
DO ~SetGlobal("IshyRas1","GLOBAL",1)~
== BRASAAD ~My art is not intended for violence. I seek perfection of the body, mind, and soul. But still, I thank you for the compliment.~
== BISHY ~So what does that even mean, anyway?~
== BRASAAD ~Well, in general, I practice my martial arts as a means as a means to achieve greater discipline, mental awareness, and as a means to spread the will of my godess Selune. Does that make more sense? ~
== BISHY ~Well...I guess so. Thanks.~
== BRASAAD ~Of course, Ishlilka. You may ask me more anytime.~
EXIT

// sod version
 
CHAIN
IF ~ InParty("#Ishy")
InParty("rasaad")
See("#Ishy")
Global("endofbg1","GLOBAL",1)
!StateCheck("rasaad",CD_STATE_NOTVALID)
!StateCheck("#Ishy",CD_STATE_NOTVALID)
Global("IshyRas1","GLOBAL",0)~ THEN BISHY IshyRas11
~I've never seen anyone fight armed opponenets with their bare hands before.~
DO ~SetGlobal("IshyRas1","GLOBAL",1)~
== BDRASAAB ~My art is not intended for violence. I seek perfection of the body, mind, and soul. But still, I thank you for the compliment.~
== BISHY ~So what does that even mean, anyway?~
== BDRASAAB ~Well, in general, I practice my martial arts as a means as a means to achieve greater discipline, mental awareness, and as a means to spread the will of my godess Selune. Does that make more sense? ~
== BISHY ~Well...I guess so. Thanks.~
== BDRASAAB ~Of course, Ishlilka. You may ask me more anytime.~
EXIT

 
CHAIN
IF ~ InParty("#Ishy")
InParty("rasaad")
See("#Ishy")
Global("endofbg1","GLOBAL",1)
!StateCheck("rasaad",CD_STATE_NOTVALID)
!StateCheck("#Ishy",CD_STATE_NOTVALID)
Global("IshyRas2","GLOBAL",0)~ THEN BISHY IshyRas12
~Is it really proper for a monk to be on a quest for vengeance? ~ 
DO ~SetGlobal("IshyRas2","GLOBAL",1)~ 
== BDRASAAB ~I do not do this for vengeance. I seek only justice for those slain without cause.~
== BISHY ~Right...but are seeking them out for justice or seeking them out for revenge really any different?~ 
== BDRASAAB ~I think so. The point is motive. I do not allow hate or anger to cloud my heart as I pursue them on this journey.~
== BISHY ~I...suppose that makes sense.~
EXIT 


CHAIN
IF ~ InParty("#Ishy")
InParty("Xzar")
See("#Ishy")
!StateCheck("Xzar",CD_STATE_NOTVALID)
!StateCheck("#Ishy",CD_STATE_NOTVALID)
Global("IshyXzar1","GLOBAL",0)~ THEN BXZAR IshyXzar1
~My dear Ishlilka...~
DO ~SetGlobal("IshyXzar1","GLOBAL",1)~
== BISHY ~I'm not your "dear", but go on.~
== BXZAR ~Regardless. My employers would be very interested in someone of your skill.~
== BISHY ~I wouldn't be interested in working for anyone who hires someone as crazy as you. Well, <CHARNAME> excluded. Who do you work for, anyway? ~
== BXZAR ~Oh, Ishlilka. You are naive yet, but like a juicy plum can be turned to dark if left to ripe over time, yes?~
== BISHY ~What are you babbling about?~
EXIT

CHAIN
IF ~InParty("#Ishy")
InParty("dorn")
Global("IshyRomanceActive","GLOBAL",2)
Global("IshyDornRho","GLOBAL",0)
!Race(Player1,HALFORC)~ THEN BDORN IshyDorn11
~So, you've taken to <CHARNAME> so quickly, have you? Have you no pride as an orc?~
DO ~SetGlobal("IshyDornRho","GLOBAL",1)~
== BISHY ~Have you no pride at all? Actions are worth far more than blood, Dorn. ~
== BDORN ~So you say. But don't forget that many of his kind would see you dead just for being who you are.~
== BISHY ~He isn't one of them, and i'm sure you would see many of his kind in the same light.~
EXIT

// sod version 

CHAIN
IF ~InParty("#Ishy")
Global("endofbg1","GLOBAL",1)
InParty("dorn")
Global("IshyRomanceActive","GLOBAL",2)
Global("IshyDornRho","GLOBAL",0)
!Race(Player1,HALFORC)~ THEN BDDORNB IshyDorn111
~So, you've taken to <CHARNAME> so quickly, have you? Have you no pride as an orc?~
DO ~SetGlobal("IshyDornRho","GLOBAL",1)~
== BISHY ~Have you no pride at all? Actions are worth far more than blood, Dorn. ~
== BDDORNB ~So you say. But don't forget that many of his kind would see you dead just for being who you are.~
== BISHY ~He isn't one of them, and i'm sure you would see many of his kind in the same light.~
EXIT

//

CHAIN
IF ~InParty("#Ishy")
InParty("dorn")
Global("IshyRomanceActive","GLOBAL",2)
Global("IshyDornRho","GLOBAL",0)
Race(Player1,HALFORC)~ THEN BDORN IshyDorn1
~I concede that <CHARNAME> is a fine choice. The blood of an orc runs through him. That is enough.~
DO ~SetGlobal("IshyDornRho","GLOBAL",1)~
= ~Still, have you ever need of a real man, you know where to find me...~
== BISHY ~Shut UP, Dorn! ~
EXIT

//sod version 
CHAIN
IF ~InParty("#Ishy")
Global("IshyDornRhosod","GLOBAL",0)
InParty("dorn")
Global("IshyRomanceActive","GLOBAL",2)
!Global("IshyDornRho","GLOBAL",1)
Race(Player1,HALFORC)
Global("endofbg1","GLOBAL",1)~ THEN BDDORNB IshyDorn222
~I concede that <CHARNAME> is a fine choice. The blood of an orc runs through him. That is enough.~
DO ~SetGlobal("IshyDornRhosod","GLOBAL",1)~
= ~Still, have you ever need of a real man, you know where to find me...~
== BISHY ~Shut UP, Dorn! ~
EXIT




CHAIN 
IF ~InParty("#Ishy")
!Global("IshyQuest","GLOBAL",2)
InParty("dorn")
!Global("IshyQuest","GLOBAL",0)
Global("P!thisonesannoying","GLOBAL",0)
!Global("IshyQuest","GLOBAL",1)
~ THEN BDORN IshyDornQ
~How did it feel, girl?~
== BISHY ~How did *what* feel, Dorn?~
DO ~SetGlobal("P!thisonesannoying","GLOBAL",1)~
== BDORN ~Hunting your hapless prey, of course. Letting him drown in a pool of his own blood. Satisfying, is it not?~
== BISHY ~Satisfying that justice was done, maybe. Not in the bloodshed. Not leave me be.~
EXIT


CHAIN IF ~InParty("#Ishy")
InParty("Viconia")
Global("sodishvicon","GLOBAL",0)~ THEN BISHY ishviconsod
~So, what were you doing with that duergar, anyway?~
DO ~SetGlobal("sodishvicon","GLOBAL",1)~
== BDVICONB ~Must you be so insufferably talkative? My secrets are my own.~
== BISHY ~If you think i'm going to let you get away with anything just because you are <CHARNAME>'s ally...~
== BDVICONB ~And you think you could stop me if you wanted? That's rich.~
EXIT 
 
 
/////////////////////////////////
//////////////////////////////////
///////////////////////////////////


CHAIN IF ~InParty("#Ishy")
InParty("MKHIIN")
Global("sodishmkhiin1","GLOBAL",0)~ THEN BISHY mkhiinish
~<CHARNAME> certainly is an understanding one, isn't <PRO_HESHE> ?~
DO ~SetGlobal("sodishmkhiin1","GLOBAL",1)~
== BDMKHIIB ~What are you talking about?~
== BISHY ~Most people wouldn't be caught dead with a goblin and a half orc as friends. But <PRO_HESHE> doesn't mind at all, does <PRO_HESHE> ?~
== BDMKHIIB ~You're right. <PRO_HESHE> 's not so bad, I guess.~
EXIT 


CHAIN IF ~InParty("#Ishy")
InParty("MKHIIN")
Global("sodishmkhiin2","GLOBAL",0)~ THEN BISHY mkhiinishgreet
~*Ishlilka bows deeply to M'khiin, much to her apparent surprise*~
DO ~SetGlobal("sodishmkhiin2","GLOBAL",1)~
= ~It is an honor to travel with you, M'khiin. My mother told me much about shamans. Above all, to respect them.~
== BDMKHIIB ~That's stupid. But i'll take it.~
EXIT 

CHAIN IF ~InParty("#Ishy")
InParty("MKHIIN")
Race(Player1,HalfOrc)
InParty("Dorn")
Global("sodishmkhiin3","GLOBAL",0)~ THEN BISHY mkhiinish
~The Hero of Baldurs Gate. A Half Orc. With two other half orcs by his side, as well as a goblin. These are truly interesting time for the realms. It is my perhaps that this may breed a new era of good relationships between the humans and demihuman races.~
== BDMKHIIB ~What is she talking about?~
DO ~SetGlobal("sodishmkhiin3","GLOBAL",2)~
== BDDORNB ~She's a fool. Pay her no mind.~
== BDMKHIIB ~I can see that.~
== BDDORNB ~Though we serve the humans purposes now, an armed band looking as we do would sooner be put to the sword than spoken to.~
EXIT 

CHAIN IF ~InParty("#Ishy")
Global("IshyRomanceActive","GLOBAL",2)
InParty("Corwin")
Global("sodishcorwinb","GLOBAL",0)~ THEN BDCORWIB ishcorwinwork2
~So. The Hero of Baldurs Gate, huh?~
== BISHY ~Uh...what about him?~
DO ~SetGlobal("sodishcorwinb","GLOBAL",1)~
== BDCORWIB ~You could certainly do worse, I mean.~
== BISHY ~It's...it's not like that!~
== BDCORWIB ~Right, right.~
EXIT

CHAIN IF ~InParty("#Ishy")
InParty("Corwin")
Global("IshyCor3","GLOBAL",0)~ THEN BDCORWIB ishcorwinwork
~Your service around here is appreciated, Ishlilka.~
DO ~SetGlobal("IshyCor3","GLOBAL",1)~
== BISHY ~Thank you, Corwin. I've been glad to help.~
== BDCORWIB ~Having a close ally of the Hero of Baldur's Gate aiding our ranks greatly improved morale. Don't underestimate how much you've helped.~
== BISHY ~Right. But it will be for nothing if we don't stop Argent.~
== BDCORWIB ~Can't disagree there.~
EXIT 

CHAIN IF ~InParty("#Ishy")
Global("IshySaf1","GLOBAL",0)
InParty("SAFANA")
Global("IshyRomanceActive","GLOBAL",2)
~ THEN BDSAFANB ishsafanchar
~There's no need to be so defensive.~
DO ~SetGlobal("IshySaf1","GLOBAL",1)~
== BISHY ~What are you talking about?~
== BDSAFANB ~I have no interest in <CHARNAME>...at the moment. He's yours for as long as you can keep him.~
== BISHY ~I never...I never accused you of anything like that!~
== BDSAFANB ~My dear, it's written all over your face.~
EXIT 

CHAIN IF ~InParty("#Ishy")
Global("IshySafan2","GLOBAL",0)
InParty("SAFANA")~
THEN BISHY ishsafanchar1 
~I didn't expect you to aid in this matter, Safana. To be honest, you didn't seem much the type for anything beyond money.~
DO ~SetGlobal("IshySafan2","GLOBAL",1)~ 
== BDSAFANB ~My dear, i'm full of surprises. Best not to forget, for your own good. And besides, who said there isn't anything to gain out here?~
== BISHY ~Now that's the Safana I know.~
EXIT  



CHAIN IF ~InParty("Minsc")
Global("Sodishminsc","GLOBAL",0)~ THEN BDMINSCB ishyminsc
~Ishlilka, Boo tells me that something is concerning you. See how his whiskers quiver!~
DO ~SetGlobal("Sodishminsc","GLOBAL",1)~
== BISHY ~Huh? I'm fine, Minsc...but thank you. You're...more observant than you put on sometimes.~
== BDMINSCB ~I leave the observations to Boo, and he leaves the swords to me. It is much better that way.~
== BISHY ~Well you can tell Boo that I appreciate it.~
EXIT 

CHAIN IF ~InParty("#Ishy")
InParty("Dynaheir")
Global("sodishdynah","GLOBAL",0)~ THEN BDDYNAHB ishdynahsod1
~Child, if thou wilt allow it, i'd like for thee to accompany me for a time when I return to Rasheman.~
DO ~SetGlobal("sodishdynah","GLOBAL",1)~ 
== BISHY ~That's...a very kind offer, Dynaheir. What brings this on?~
== BDDYNAHB ~Your unique training makes you the bane of mages, and ever art my people on guard against the machinations of Thay. If thou would, perhaps, share thine training with our more skilled beserkers...~
== BISHY ~You're right...maybe I will take you up on that offer.~ 
EXIT 

CHAIN IF ~InParty("#Ishy")
InParty("VOGHILN")
Global("sodishvoggy","GLOBAL",0)~ THEN BDVOGHIB ishvoggy1
~You know, Ishlilka, few women I have ever met can match your skill in battle. Truly impressive, ja. Witnessing it fills me with creative inspiration!~
DO ~SetGlobal("sodishvoggy","GLOBAL",1)~
== BISHY ~Why do I have a feeling there's a motive to these compliments...~
== BDVOGHIB ~You wound me, my friend. I merely wished to pay respect to your battle prowess.~
== BISHY ~Well, gee, now you made me feel bad...~ 
EXIT 

CHAIN IF ~InParty("#Ishy")
InParty("Neera")
Global("endofbg1","GLOBAL",1)
Global("neeraishsod","GLOBAL",0)~ THEN BISHY neerasod1
~Wow, a person in your head, huh? Wild magic really is wild sometimes.~ 
DO ~SetGlobal("neeraishsod","GLOBAL",1)~
== BDNEERAB ~It's - SHUT UP! - not funny. ~
== BISHY ~You're right, I shouldn't make fun of you right now.~ 
EXIT 


CHAIN IF ~InParty("#Ishy")
InParty("VOGHILN")
Global("sodishvoggy1","GLOBAL",0)~ THEN BDVOGHIB ishvoggy1
~Ishlilka, the bane of casters everywhere! I see a legend in the making, ja.~
DO ~SetGlobal("sodishvoggy1","GLOBAL",1)~
== BISHY ~A legend that would swiftly be undone by foolish risk-taking.~
== BDVOGHIB ~And the sense to go with the skill! Now only if I had a drink, I could begin crafting the tale.~
EXIT 

CHAIN IF ~InParty("#Ishy")
InParty("Glint")
Global("sodishglint","GLOBAL",0)~ THEN BDGLINTB ishglint
~Have you ever considered letting me ride on your shoulders, Ishlilka? Imagine how fierce we would be. You, the tall one, charging into battle, with me cracking skulls above you!~
DO ~SetGlobal("sodishglint","GLOBAL",1)~
== BISHY ~I think you would just be a target for arrows up there.~
== BDGLINTB ~Hm...I guess you're right. Maybe a pony?~
EXIT 


////////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////////
// The Interjects, for various points in the game. Confirmed to WORK!! /////////////
////////////////////////////////////////////////////////////////////////////////////






INTERJECT KHALID 3 sayhiish
  == BISHY IF ~IsValidForPartyDialog("#Ishy")~ THEN
    ~I think we should bring them along, <CHARNAME>. They seem trustworthy.~
	END JAHEIR 5

INTERJECT_COPY_TRANS SLAVE 0 ishseeslave
 == BISHY IF ~IsValidForPartyDialog("#Ishy")~ THEN 
 ~Oh, you poor thing...<CHARNAME>, what are we going to do?~
 END
 
 INTERJECT_COPY_TRANS SLAVE2 0 ishseeslave2
 == BISHY IF ~IsValidForPartyDialog("#Ishy")~ THEN 
 ~Oh, you poor thing...<CHARNAME>, what are we going to do?~
 END
 
 INTERJECT_COPY_TRANS2 SLAVFREE 0 ishseeslave3
 == BISHY IF ~IsValidForPartyDialog("#Ishy")~ THEN 
 ~I am so glad we were able to free them, <CHARNAME>. Nobody deserves such horrible treatment.~
 END
 
 INTERJECT_COPY_TRANS2 SAFANA 5 ishsafsure
 == BISHY IF ~IsValidForPartyDialog("#Ishy")
 Global("IshyRomanceActive","GLOBAL",1)~ THEN 
 ~Are you...sure about this? I don't...trust her.~
== BISHY IF ~IsValidForPartyDialog("#Ishy")
 Global("IshyRomanceActive","GLOBAL",1)~ THEN 
 ~*You notice Ishlilka seems to be walking in between you two as you head off.*~
   == BISHY IF ~IsValidForPartyDialog("#Ishy")
 Global("IshyRomanceActive","GLOBAL",2)~ THEN 
 ~Are you...sure about this? I don't...trust her.~
== BISHY IF ~IsValidForPartyDialog("#Ishy")
 Global("IshyRomanceActive","GLOBAL",2)~ THEN 
 ~*You notice Ishlilka seems to be walking in between you two as you head off.*~
END

 INTERJECT_COPY_TRANS2 SAFANA 10 ishsafsure
 == BISHY IF ~IsValidForPartyDialog("#Ishy")
 Global("IshyRomanceActive","GLOBAL",1)~ THEN 
 ~Are you...sure about this? I don't...trust her.~
== BISHY IF ~IsValidForPartyDialog("#Ishy")
 Global("IshyRomanceActive","GLOBAL",1)~ THEN 
 ~*You notice Ishlilka seems to be walking in between you two as you head off.*~
  == BISHY IF ~IsValidForPartyDialog("#Ishy")
 Global("IshyRomanceActive","GLOBAL",2)~ THEN 
 ~Are you...sure about this? I don't...trust her.~
== BISHY IF ~IsValidForPartyDialog("#Ishy")
 Global("IshyRomanceActive","GLOBAL",2)~ THEN 
 ~*You notice Ishlilka seems to be walking in between you two as you head off.*~
END 


INTERJECT_COPY_TRANS GIRLBE 2 wowyuradicksaysish
== BISHY IF ~IsValidForPartyDialogue("#Ishy")~ THEN
~<CHARNAME>! What is wrong with you!~
END 

INTERJECT_COPY_TRANS GATEWA2 5 ishyarrested
== BISHY IF ~IsValidForPartyDialogue("#Ishy")
!Dead("RIELTAR")~ THEN
~I can't believe this is happening! We are completely innocent!~
== BISHY IF ~IsValidForPartyDialogue("#Ishy")
Dead("RIELTAR")~ THEN
~What?! But they deserved it! Do you have any idea what they've done?!~
END                                                                                                                                                                                                                                                                                                                                             

INTERJECT_COPY_TRANS2 DUNKIN 4 Ishymarlapprove
== BISHY IF ~IsValidForPartyDialogue("#Ishy")~ THEN 
~You handled that very well, <CHARNAME>. As my father once taught me, those too quick to violence have no right to wield a sword at all.~
END

INTERJECT_COPY_TRANS2 DENFUCK 2 ishitson1
== BISHY IF ~IsValidForPartyDialogue("#Ishy")~ THEN
~Red Wizards?! This is what i've trained for! Your misuse of power ends here!~
END 

INTERJECT_COPY_TRANS2 DENFUCK 3 ishitson9
== BISHY IF ~IsValidForPartyDialogue("#Ishy")~ THEN
~Red Wizards?! This is what i've trained for! Your misuse of power ends here!~
END 


INTERJECT_COPY_TRANS2 ZHALIM 0 ishitson2
== BISHY IF ~IsValidForPartyDialogue("#Ishy")~ THEN
~It's over for you, fools! <CHARNAME> can take on any one of you!~
END 

INTERJECT_COPY_TRANS2 ZHALIM 1 ishitson3
== BISHY IF ~IsValidForPartyDialogue("#Ishy")~ THEN
~It's over for you, fools! <CHARNAME> can take on any one of you!~
END

INTERJECT_COPY_TRANS2 ZHALIM 2 ishitson4
== BISHY IF ~IsValidForPartyDialogue("#Ishy")~ THEN
~It's over for you, fools! <CHARNAME> can take on any one of you!~
END

INTERJECT_COPY_TRANS2 MULAHE 2 ishvsmulahey
== BISHY IF ~IsValidForPartyDialogue("#Ishy")~ THEN
~Your kind are a disgrace to half-orcs everywhere. Prepare yourself!~
END

INTERJECT_COPY_TRANS2 MULAHE 6 ishvsmulahey2
== BISHY IF ~IsValidForPartyDialogue("#Ishy")~ THEN
~I would expect no less than treachery from you.~
END

INTERJECT_COPY_TRANS2 FARMBR 15 ishfarmbr
== BISHY IF ~IsValidForPartyDialogue("#Ishy")~ THEN
~That was incredibly kind of you, <CHARNAME>. I should strive to learn from your example.~
END

INTERJECT_COPY_TRANS2 NOOBER 4 ishjesusfuckingchristshutup
== BISHY IF ~IsValidForPartyDialogue("#Ishy")~ THEN
~I don't want to be rude, but this guy is really getting on my nerves. Can you tell him to go away already?~
END

INTERJECT DORN 6 ishdornhello
== DORN IF ~IsValidForPartyDialogue("#Ishy")~ THEN
~Ah, and I spy a pretty little half orc by your side. What is your name, girl?~
== BISHY IF ~IsValidForPartyDialogue("#Ishy")~ THEN
~Ugh. Do not look at me that way.~ 
END DORN 8

INTERJECT_COPY_TRANS2 MTOWNAZ 0 ishquestask0
== BISHY IF ~Global("IshyQuest","GLOBAL",2)
IsValidForPartyDialogue("#Ishy")~ THEN ~Excuse me, you haven't seen any gnomes around here, have you? Likely in mages robes?~
== MTOWNAZ IF ~Global("IshyQuest","GLOBAL",2)
IsValidForPartyDialogue("#Ishy")~ THEN ~I ain't seen nothin' like that, i'm afraid. Sorry I can't help such fine heroes!~
END

INTERJECT_COPY_TRANS2 MTOWNAZ 1 ishquestask1
== BISHY IF ~Global("IshyQuest","GLOBAL",2)
IsValidForPartyDialogue("#Ishy")~ THEN ~Excuse me, you haven't seen any gnomes around here, have you? Likely in mages robes?~
== MTOWNAZ IF ~Global("IshyQuest","GLOBAL",2)
IsValidForPartyDialogue("#Ishy")~ THEN ~I ain't seen nothin' like that, i'm afraid.~
END

INTERJECT_COPY_TRANS2 MTOWNAZ 4 ishquestask4
== BISHY IF ~Global("IshyQuest","GLOBAL",2)
IsValidForPartyDialogue("#Ishy")~ THEN ~Excuse me, you haven't seen any gnomes around here, have you? Likely in mages robes?~
== MTOWNAZ IF ~Global("IshyQuest","GLOBAL",2)
IsValidForPartyDialogue("#Ishy")~ THEN ~I ain't seen nothin' like that, i'm afraid.~
END

INTERJECT_COPY_TRANS2 MTOWNAZ 7 ishquestask2
== BISHY IF ~Global("IshyQuest","GLOBAL",2)
IsValidForPartyDialogue("#Ishy")~ THEN ~Excuse me, you haven't seen any gnomes around here, have you? Likely in mages robes?~
== MTOWNAZ IF ~Global("IshyQuest","GLOBAL",2)
IsValidForPartyDialogue("#Ishy")~ THEN  ~I ain't seen nothin' like that, i'm afraid. Sorry I can't help such fine heroes! If that really was you, that is.~
END

INTERJECT_COPY_TRANS BEGGNA 2 ishquesttask3
== BISHY IF ~Global("IshyQuest","GLOBAL",2)
IsValidForPartyDialogue("#Ishy")
Global("ishquestextra","GLOBAL",0)~ THEN ~Excuse me, have you seen any gnomes around here lately? Short temper, probably in mages robes?~
== BEGGNA IF ~Global("IshyQuest","GLOBAL",2)
IsValidForPartyDialogue("#Ishy")
Global("ishquestextra","GLOBAL",0)~ THEN ~Heh heh...maybe I did, maybe I did...but I can't quite recall at the moment...~
== BISHY IF ~Global("IshyQuest","GLOBAL",2)
IsValidForPartyDialogue("#Ishy")
Global("ishquestextra","GLOBAL",0)~ THEN ~Oh, fine, here's 20 gold. Now, please tell me anything you know. This is important.~
== BEGGNA IF ~Global("IshyQuest","GLOBAL",2)
IsValidForPartyDialogue("#Ishy")
Global("ishquestextra","GLOBAL",0)~ THEN ~Right. Thank you, miss. Your kind aren't always so bad. Anyway, I seen the one you speak of, so I did. Came here drinking a little less than a fortnight ago. Bragged about having bribed and charmed his way into leading a band of ogres. What's more, the fool was drunk enough to say where his hideout was. I think he said he was just eastword of some old fort over-run by gnolls.~
== BISHY IF ~Global("IshyQuest","GLOBAL",2)
IsValidForPartyDialogue("#Ishy")
Global("ishquestextra","GLOBAL",0)~ THEN ~I thank you for this. We should go at once, <CHARNAME>~ DO ~SetGlobal("ishquestextra","GLOBAL",1)~
END 

INTERJECT_COPY_TRANS BEGGNA 1 ishquesttask4
== BISHY IF ~Global("IshyQuest","GLOBAL",2)
IsValidForPartyDialogue("#Ishy")
Global("ishquestextra","GLOBAL",0)~ THEN ~Excuse me, have you seen any gnomes around here lately? Short temper, probably in mages robes?~
== BEGGNA IF ~Global("IshyQuest","GLOBAL",2)
IsValidForPartyDialogue("#Ishy")
Global("ishquestextra","GLOBAL",0)~ THEN ~Heh heh...maybe I did, maybe I did...but I can't quite recall at the moment...~
== BISHY IF ~Global("IshyQuest","GLOBAL",2)
IsValidForPartyDialogue("#Ishy")
Global("ishquestextra","GLOBAL",0)~ THEN ~Oh, fine, here's 20 gold. Now, please tell me anything you know. This is important.~
== BEGGNA IF ~Global("IshyQuest","GLOBAL",2)
IsValidForPartyDialogue("#Ishy")
Global("ishquestextra","GLOBAL",0)~ THEN ~Right. Thank you, miss. Your kind aren't always so bad. Anyway, I seen the one you speak of, so I did. Came here drinking a little less than a fortnight ago. Bragged about having bribed and charmed his way into leading a band of ogres. What's more, the fool was drunk enough to say where his hideout was. I think he said he was just eastword of some old fort over-run by gnolls.~
== BISHY IF ~Global("IshyQuest","GLOBAL",2)
IsValidForPartyDialogue("#Ishy")
Global("ishquestextra","GLOBAL",0)~ THEN ~I thank you for this. We should go at once, <CHARNAME>~ DO ~SetGlobal("ishquestextra","GLOBAL",1)~
END 

INTERJECT_COPY_TRANS BEGGNA 0 ishquesttask4
== BISHY IF ~Global("IshyQuest","GLOBAL",2)
IsValidForPartyDialogue("#Ishy")
Global("ishquestextra","GLOBAL",0)~ THEN ~Excuse me, have you seen any gnomes around here lately? Short temper, probably in mages robes?~
== BEGGNA IF ~Global("IshyQuest","GLOBAL",2)
IsValidForPartyDialogue("#Ishy")
Global("ishquestextra","GLOBAL",0)~ THEN ~Heh heh...maybe I did, maybe I did...but I can't quite recall at the moment...~
== BISHY IF ~Global("IshyQuest","GLOBAL",2)
IsValidForPartyDialogue("#Ishy")
Global("ishquestextra","GLOBAL",0)~ THEN ~Oh, fine, here's 20 gold. Now, please tell me anything you know. This is important.~
== BEGGNA IF ~Global("IshyQuest","GLOBAL",2)
IsValidForPartyDialogue("#Ishy")
Global("ishquestextra","GLOBAL",0)~ THEN ~Right. Thank you, miss. Your kind aren't always so bad. Anyway, I seen the one you speak of, so I did. Came here drinking a little less than a fortnight ago. Bragged about having bribed and charmed his way into leading a band of ogres. What's more, the fool was drunk enough to say where his hideout was. I think he said he was just eastword of some old fort over-run by gnolls.~
== BISHY IF ~Global("IshyQuest","GLOBAL",2)
IsValidForPartyDialogue("#Ishy")
Global("ishquestextra","GLOBAL",0)~ THEN ~I thank you for this. We should go at once, <CHARNAME>~ DO ~SetGlobal("ishquestextra","GLOBAL",1)~
END 

INTERJECT_COPY_TRANS BEGGNA 3 ishquesttask5
== BISHY IF ~Global("IshyQuest","GLOBAL",2)
IsValidForPartyDialogue("#Ishy")
Global("ishquestextra","GLOBAL",0)~ THEN ~Excuse me, have you seen any gnomes around here lately? Short temper, probably in mages robes?~
== BEGGNA IF ~Global("IshyQuest","GLOBAL",2)
IsValidForPartyDialogue("#Ishy")
Global("ishquestextra","GLOBAL",0)~ THEN ~Heh heh...maybe I did, maybe I did...but I can't quite recall at the moment...~
== BISHY IF ~Global("IshyQuest","GLOBAL",2)
IsValidForPartyDialogue("#Ishy")
Global("ishquestextra","GLOBAL",0)~ THEN ~Oh, fine, here's 20 gold. Now, please tell me anything you know. This is important.~
== BEGGNA IF ~Global("IshyQuest","GLOBAL",2)
IsValidForPartyDialogue("#Ishy")
Global("ishquestextra","GLOBAL",0)~ THEN ~Right. Thank you, miss. Your kind aren't always so bad. Anyway, I seen the one you speak of, so I did. Came here drinking a little less than a fortnight ago. Bragged about having bribed and charmed his way into leading a band of ogres. What's more, the fool was drunk enough to say where his hideout was. I think he said he was just eastword of some old fort over-run by gnolls.~
== BISHY IF ~Global("IshyQuest","GLOBAL",2)
IsValidForPartyDialogue("#Ishy")
Global("ishquestextra","GLOBAL",0)~ THEN ~I thank you for this. We should go at once, <CHARNAME>~ DO ~SetGlobal("ishquestextra","GLOBAL",1)~
END 

INTERJECT_COPY_TRANS BEGGNA 4 ishquesttask6
== BISHY IF ~Global("IshyQuest","GLOBAL",2)
IsValidForPartyDialogue("#Ishy")
Global("ishquestextra","GLOBAL",0)~ THEN ~Excuse me, have you seen any gnomes around here lately? Short temper, probably in mages robes?~
== BEGGNA IF ~Global("IshyQuest","GLOBAL",2)
IsValidForPartyDialogue("#Ishy")
Global("ishquestextra","GLOBAL",0)~ THEN ~Heh heh...maybe I did, maybe I did...but I can't quite recall at the moment...~
== BISHY IF ~Global("IshyQuest","GLOBAL",2)
IsValidForPartyDialogue("#Ishy")
Global("ishquestextra","GLOBAL",0)~ THEN ~Oh, fine, here's 20 gold. Now, please tell me anything you know. This is important.~
== BEGGNA IF ~Global("IshyQuest","GLOBAL",2)
IsValidForPartyDialogue("#Ishy")
Global("ishquestextra","GLOBAL",0)~ THEN ~Right. Thank you, miss. Your kind aren't always so bad. Anyway, I seen the one you speak of, so I did. Came here drinking a little less than a fortnight ago. Bragged about having bribed and charmed his way into leading a band of ogres. What's more, the fool was drunk enough to say where his hideout was. I think he said he was just eastword of some old fort over-run by gnolls.~
== BISHY IF ~Global("IshyQuest","GLOBAL",2)
IsValidForPartyDialogue("#Ishy")
Global("ishquestextra","GLOBAL",0)~ THEN ~I thank you for this. We should go at once, <CHARNAME>~ DO ~SetGlobal("ishquestextra","GLOBAL",1)~
END 

INTERJECT VAI 0 ishvaihi
== VAI IF ~!Global("IshyQuest","GLOBAL",1)
IsValidForPartyDialogue("#Ishy")
!Global("IshyQuest","GLOBAL",0)~ THEN
~Ah, Ishlilka. Keeping good company I see.~
== BISHY IF ~!Global("IshyQuest","GLOBAL",1)
IsValidForPartyDialogue("#Ishy")
!Global("IshyQuest","GLOBAL",0)~ THEN
~Thank you, Officer Vai. I had to get the Flaming Fists approval before I went out hunting Juleska, <CHARNAME>.~
END VAI 4 

INTERJECT DENAK 0 bitchimacutu
== BISHY IF ~IsValidForPartyDialogue("#Ishy")~ THEN
~Red Wizards?! This is the sort of thing i've trained for! You'll not leave here alive!~ 
END DENAK 2 

INTERJECT_COPY_TRANS WINTHR2 2 ishhiwinthrop
== BISHY IF ~IsValidForPartyDialogue("#Ishy")
!InParty("Imoen")
Global("IshyRomanceActive","GLOBAL",2)~ THEN
 ~Hello there! Winthrop, was it? I'm Ishlilka. <CHARNAME>'s...well, <CHARNAME>'s friend.~
== WINTHR2 IF ~IsValidForPartyDialogue("#Ishy")~ THEN ~Picked yerself up a little girlie, did ye? I should have expected!~ DO ~StartStore("Inn2616",LastTalkedToBy(Myself))~
END 

INTERJECT_COPY_TRANS WINTHR2 5 ishhiwinthrop
== BISHY IF ~IsValidForPartyDialogue("#Ishy")
!InParty("Imoen")
Global("IshyRomanceActive","GLOBAL",2)~ THEN
 ~Hello there! Winthrop, was it? I'm Ishlilka. <CHARNAME>'s...well, <CHARNAME>'s friend.~
== WINTHR2 IF ~IsValidForPartyDialogue("#Ishy")~ THEN ~Picked yerself up a little girlie, did ye? I should have expected!~ DO ~StartStore("Inn2616",LastTalkedToBy(Myself))~
END 

INTERJECT_COPY_TRANS WINTHR2 6 ishhiwinthrop
== BISHY IF ~IsValidForPartyDialogue("#Ishy")
!InParty("Imoen")
Global("IshyRomanceActive","GLOBAL",2)~ THEN
 ~Hello there! Winthrop, was it? I'm Ishlilka. <CHARNAME>'s...well, <CHARNAME>'s friend.~
== WINTHR2 IF ~IsValidForPartyDialogue("#Ishy")~ THEN ~Picked yerself up a little girlie, did ye? I should have expected!~ DO ~StartStore("Inn2616",LastTalkedToBy(Myself))~
END 

INTERJECT_COPY_TRANS WINTHR2 5 ishhiwinthrop
== BIMOEN IF ~IsValidForPartyDialogue("#Ishy")
InParty("Imoen")~ THEN
~And this here is Ishy!~ 
== BISHY IF ~IsValidForPartyDialogue("#Ishy")~ THEN ~Uh, yes. Hi there, Winthrop. Imoen has told me a lot about you.~
== WINTHR2 IF ~IsValidForPartyDialogue("#Ishy")~ THEN ~Ah, a good thing to see the little girl makin' friends, it is.~ DO ~StartStore("Inn2616",LastTalkedToBy(Myself))~
END 

INTERJECT_COPY_TRANS WINTHR2 2 ishhiwinthrop
== BIMOEN IF ~IsValidForPartyDialogue("#Ishy")
InParty("Imoen")~ THEN
~And this here is Ishy!~
== BISHY IF ~IsValidForPartyDialogue("#Ishy")~ THEN ~Uh, yes. Hi there, Winthrop. Imoen has told me a lot about you.~
== WINTHR2 IF ~IsValidForPartyDialogue("#Ishy")~ THEN ~Ah, a good thing to see the little girl makin' friends, it is.~ DO ~StartStore("Inn2616",LastTalkedToBy(Myself))~
END 

INTERJECT_COPY_TRANS WINTHR2 6 ishhiwinthrop
== BIMOEN IF ~IsValidForPartyDialogue("#Ishy")
InParty("Imoen")~ THEN
~And this here is Ishy!~
== BISHY IF ~IsValidForPartyDialogue("#Ishy")~ THEN ~Uh, yes. Hi there, Winthrop. Imoen has told me a lot about you.~
== WINTHR2 IF ~IsValidForPartyDialogue("#Ishy")~ THEN ~Ah, a good thing to see the little girl makin' friends, it is.~ DO ~StartStore("Inn2616",LastTalkedToBy(Myself))~
END 


INTERJECT_COPY_TRANS WINTHR2 3 ishhiwinthrop
== BIMOEN IF ~IsValidForPartyDialogue("#Ishy")
InParty("Imoen")~ THEN
~And this here is Ishy!~
== BISHY ~Uh, yes. Hi there, Winthrop. Imoen has told me a lot about you.~
== WINTHR2 ~Ah, a good thing to see the little girl makin' friends, it is.~ DO ~StartStore("Inn2616",LastTalkedToBy(Myself))~
END 

INTERJECT_COPY_TRANS WINTHR2 3 ishhiwinthrop
== BISHY IF ~IsValidForPartyDialogue("#Ishy")
!InParty("Imoen")
Global("IshyRomanceActive","GLOBAL",2)~ THEN
 ~Hello there! Winthrop, was it? I'm Ishlilka. <CHARNAME>'s...well, <CHARNAME>'s friend.~
== WINTHR2 IF ~IsValidForPartyDialogue("#Ishy")~ THEN ~Picked yerself up a little girlie, did ye? I should have expected!~ DO ~StartStore("Inn2616",LastTalkedToBy(Myself))~
END 

INTERJECT_COPY_TRANS WILLIA 2 ishembarassingstoriesyay
== BISHY IF ~IsValidForPartyDialogue("#Ishy")~ THEN ~Now this should be interesting. Please, go on.~
END

INTERJECT BDSCHAEL 39 soddontforgetish
== BDSCHAEL IF ~Global("IshyRomanceActive","GLOBAL",2)~ THEN ~Oh, and your ally Ishlilka has been helping the Flaming Fists keep order around the Palace. She doesn't stop talking about you either.~
END BDSCHAEL 40 

INTERJECT BDSCHAEL 39 soddontforgetish
== BDSCHAEL IF ~!Global("IshyRomanceActive","GLOBAL",2)~ THEN ~Oh, and your ally Ishlilka has been helping the Flaming Fists keep order around the Palace. She's been a great help.~
END BDSCHAEL 40 

INTERJECT_COPY_TRANS BDSTYSIC 2 sodwizardslayerish2
== BISHY IF ~IsValidForPartyDialogue("#Ishy")~ THEN 
~Right! With this many of us we can't lose! The mages of the Crusade are nothing!~ 
END 


