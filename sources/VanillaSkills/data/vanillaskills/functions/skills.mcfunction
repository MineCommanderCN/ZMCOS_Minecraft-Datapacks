scoreboard players enable @a vsSkillLock
tellraw @a[scores={vsSkillLock=1..,vsAtAct=-1}] {"translate":"vanillaskills.notifi.skilllock_on","color":"yellow"}
tellraw @a[scores={vsSkillLock=1..,vsAtAct=1}] {"translate":"vanillaskills.notifi.skilllock_off","color":"green"}
scoreboard players set #ConstDummy vsDummy -1
scoreboard players operation @a[scores={vsSkillLock=1..}] vsAtAct *= #ConstDummy vsDummy
scoreboard players set @a[scores={vsSkillLock=1..}] vsSkillLock 0

scoreboard players add #timer vsTimer 1
execute as @a[scores={vsBeekpLvl=20..}] at @s if score #timer vsTimer matches 20.. run execute as @e[type=bee,distance=..4,limit=1] run data merge entity @s {Anger:0}
execute as @a[scores={vsBeekpLvl=50..}] at @s if score #timer vsTimer matches 20.. run execute as @e[type=bee,distance=..6,limit=1] run data merge entity @s {Anger:0}
execute as @a[scores={vsBeekpLvl=75..}] at @s if score #timer vsTimer matches 20.. run execute as @e[type=bee,distance=..8,limit=2] run data merge entity @s {Anger:0}
execute as @a[scores={vsBeekpLvl=100..}] at @s if score #timer vsTimer matches 20.. run execute as @e[type=bee,distance=..10,limit=3] run data merge entity @s {Anger:0}
execute if score #timer vsTimer matches 20.. run scoreboard players set #timer vsTimer 0

scoreboard players remove @a[scores={vsBattleCl=1..}] vsBattleCl 1
scoreboard players remove @a[scores={vsMiningCl=1..}] vsMiningCl 1
scoreboard players remove @a[scores={vsMagicCl=1..}] vsMagicCl 1

tellraw @a[scores={vsSneak=1..,vsBattleCl=0,vsBattleLvl=10..,vsAtAct=-1},tag=vsHoldSwd] [{"translate":"vanillaskills.notifi.act_enable","color":"green"},{"translate":"vanillaskills.act.battle","color":"green"},{"text":"!","color":"green"}]
execute as @a[scores={vsSneak=1..,vsBattleCl=0,vsBattleLvl=10..,vsAtAct=-1},tag=vsHoldSwd] at @s run playsound minecraft:entity.shulker.hurt master @a ~ ~ ~
effect give @a[scores={vsSneak=1..,vsBattleCl=0,vsBattleLvl=10..,vsAtAct=-1},tag=vsHoldSwd] strength 6 2
effect give @a[scores={vsSneak=1..,vsBattleCl=0,vsBattleLvl=20..,vsAtAct=-1},tag=vsHoldSwd] strength 8 2
effect give @a[scores={vsSneak=1..,vsBattleCl=0,vsBattleLvl=50..,vsAtAct=-1},tag=vsHoldSwd] strength 14 3
effect give @a[scores={vsSneak=1..,vsBattleCl=0,vsBattleLvl=75..,vsAtAct=-1},tag=vsHoldSwd] strength 19 4
effect give @a[scores={vsSneak=1..,vsBattleCl=0,vsBattleLvl=100..,vsAtAct=-1},tag=vsHoldSwd] strength 24 5
scoreboard players set @a[scores={vsSneak=1..,vsBattleCl=0,vsBattleLvl=10..,vsAtAct=-1},tag=vsHoldSwd] vsBattleCl 3600
title @a[scores={vsSneak=1..,vsBattleCl=1..3550,vsBattleLvl=10..,vsAtAct=-1},tag=vsHoldSwd] actionbar [{"translate":"vanillaskills.act.battle","color":"red"},{"translate":"vanillaskills.notifi.act_cooling","color":"red"},{"score":{"name":"*","objective":"vsBattleCl"},"color":"red"},{"text":"gt","color":"red"}]
title @a[scores={vsAtAct=1,vsSneak=1..},tag=vsHoldSwd] actionbar [{"translate":"vanillaskills.notifi.skill_locked","color":"gold"},{"text":"/trigger vsSkillLock","color":"yellow"}]
title @a[scores={vsSneak=1..,vsBattleLvl=..9,vsAtAct=-1},tag=vsHoldSwd] actionbar [{"translate":"vanillaskills.skill.battle","color":"red"},{"translate":"vanillaskills.notifi.low_skill_level","color":"red"},{"score":{"name":"*","objective":"vsBattleLvl"},"color":"red"},{"text":"/10","color":"red"}]
tellraw @a[scores={vsBattleCl=1}] [{"translate":"vanillaskills.act.battle","color":"green"},{"translate":"vanillaskills.notifi.skill_ready","color":"green"},{"text":"!","color":"green"}]

tellraw @a[scores={vsSneak=1..,vsMiningCl=0,vsMiningLvl=10..,vsAtAct=-1},tag=vsHoldPic] [{"translate":"vanillaskills.notifi.act_enable","color":"green"},{"translate":"vanillaskills.act.mining","color":"green"},{"text":"!","color":"green"}]
execute as @a[scores={vsSneak=1..,vsMiningCl=0,vsMiningLvl=10..,vsAtAct=-1},tag=vsHoldPic] at @s run playsound minecraft:entity.shulker.hurt master @a ~ ~ ~
effect give @a[scores={vsSneak=1..,vsMiningCl=0,vsMiningLvl=10..,vsAtAct=-1},tag=vsHoldPic] haste 6 2
effect give @a[scores={vsSneak=1..,vsMiningCl=0,vsMiningLvl=20..,vsAtAct=-1},tag=vsHoldPic] haste 8 2
effect give @a[scores={vsSneak=1..,vsMiningCl=0,vsMiningLvl=50..,vsAtAct=-1},tag=vsHoldPic] haste 14 3
effect give @a[scores={vsSneak=1..,vsMiningCl=0,vsMiningLvl=75..,vsAtAct=-1},tag=vsHoldPic] haste 19 4
effect give @a[scores={vsSneak=1..,vsMiningCl=0,vsMiningLvl=100..,vsAtAct=-1},tag=vsHoldPic] haste 24 5
scoreboard players set @a[scores={vsSneak=1..,vsMiningCl=0,vsMiningLvl=10..,vsAtAct=-1},tag=vsHoldPic] vsMiningCl 3600
title @a[scores={vsSneak=1..,vsMiningCl=1..3550,vsMiningLvl=10..,vsAtAct=-1},tag=vsHoldPic] actionbar [{"translate":"vanillaskills.act.mining","color":"red"},{"translate":"vanillaskills.notifi.act_cooling","color":"red"},{"score":{"name":"*","objective":"vsMiningCl"},"color":"red"},{"text":"gt","color":"red"}]
title @a[scores={vsAtAct=1,vsSneak=1..},tag=vsHoldPic] actionbar [{"translate":"vanillaskills.notifi.skill_locked","color":"gold"},{"text":"/trigger vsSkillLock","color":"yellow"}]
title @a[scores={vsSneak=1..,vsMiningLvl=..9,vsAtAct=-1},tag=vsHoldPic] actionbar [{"translate":"vanillaskills.skill.mining","color":"red"},{"translate":"vanillaskills.notifi.low_skill_level","color":"red"},{"score":{"name":"*","objective":"vsBattleLvl"},"color":"red"},{"text":"/10","color":"red"}]
tellraw @a[scores={vsMiningCl=1}] [{"translate":"vanillaskills.act.mining","color":"green"},{"translate":"vanillaskills.notifi.skill_ready","color":"green"},{"text":"!","color":"green"}]

tellraw @a[scores={vsSneak=1..,vsMagicCl=0,vsMagicLvl=10..,vsAtAct=-1},tag=vsHoldBlr] [{"translate":"vanillaskills.notifi.act_enable","color":"green"},{"translate":"vanillaskills.act.magic","color":"green"},{"text":"!","color":"green"}]
execute as @a[scores={vsSneak=1..,vsMagicCl=0,vsMagicLvl=10..,vsAtAct=-1},tag=vsHoldBlr] at @s run playsound minecraft:entity.experience_orb.pickup master @a ~ ~ ~
execute as @a[scores={vsSneak=1..,vsMagicCl=0,vsMagicLvl=10..,vsAtAct=-1},tag=vsHoldBlr] at @s run particle end_rod ~ ~0.1 ~ 1.5 0 1.5 0 20
execute as @a[scores={vsSneak=1..,vsMagicCl=0,vsMagicLvl=20..,vsAtAct=-1},tag=vsHoldBlr] at @s run particle end_rod ~ ~0.1 ~ 2.5 0 2.5 0 20
execute as @a[scores={vsSneak=1..,vsMagicCl=0,vsMagicLvl=50..,vsAtAct=-1},tag=vsHoldBlr] at @s run particle end_rod ~ ~0.1 ~ 4 0 4 0 20
execute as @a[scores={vsSneak=1..,vsMagicCl=0,vsMagicLvl=75..,vsAtAct=-1},tag=vsHoldBlr] at @s run particle end_rod ~ ~0.1 ~ 5 0 5 0 20
execute as @a[scores={vsSneak=1..,vsMagicCl=0,vsMagicLvl=100..,vsAtAct=-1},tag=vsHoldBlr] at @s run particle end_rod ~ ~0.1 ~ 6 0 6 0 20
execute as @a[scores={vsSneak=1..,vsMagicCl=0,vsMagicLvl=10..,vsAtAct=-1},tag=vsHoldBlr] at @s run effect give @a[distance=..3] instant_health 1
execute as @a[scores={vsSneak=1..,vsMagicCl=0,vsMagicLvl=20..,vsAtAct=-1},tag=vsHoldBlr] at @s run effect give @a[distance=..5] instant_health 1
execute as @a[scores={vsSneak=1..,vsMagicCl=0,vsMagicLvl=50..,vsAtAct=-1},tag=vsHoldBlr] at @s run effect give @a[distance=..8] instant_health 1
execute as @a[scores={vsSneak=1..,vsMagicCl=0,vsMagicLvl=75..,vsAtAct=-1},tag=vsHoldBlr] at @s run effect give @a[distance=..10] instant_health 1
execute as @a[scores={vsSneak=1..,vsMagicCl=0,vsMagicLvl=100..,vsAtAct=-1},tag=vsHoldBlr] at @s run effect give @a[distance=..12] instant_health 1
scoreboard players set @a[scores={vsSneak=1..,vsMagicCl=0,vsMagicLvl=10..,vsAtAct=-1},tag=vsHoldBlr] vsMagicCl 1200
title @a[scores={vsSneak=1..,vsMagicCl=1..1150,vsMagicLvl=10..,vsAtAct=-1},tag=vsHoldBlr] actionbar [{"translate":"vanillaskills.act.magic","color":"red"},{"translate":"vanillaskills.notifi.act_cooling","color":"red"},{"score":{"name":"*","objective":"vsMagicCl"},"color":"red"},{"text":"gt","color":"red"}]
title @a[scores={vsAtAct=1,vsSneak=1..},tag=vsHoldBlr] actionbar [{"translate":"vanillaskills.notifi.skill_locked","color":"gold"},{"text":"/trigger vsSkillLock","color":"yellow"}]
title @a[scores={vsSneak=1..,vsMagicLvl=..9,vsAtAct=-1},tag=vsHoldBlr] actionbar [{"translate":"vanillaskills.skill.magic","color":"red"},{"translate":"vanillaskills.notifi.low_skill_level","color":"red"},{"score":{"name":"*","objective":"vsBattleLvl"},"color":"red"},{"text":"/10","color":"red"}]
tellraw @a[scores={vsMagicCl=1}] [{"translate":"vanillaskills.act.magic","color":"green"},{"translate":"vanillaskills.notifi.skill_ready","color":"green"},{"text":"!","color":"green"}]

scoreboard players set @a[scores={vsSneak=1..}] vsSneak 0