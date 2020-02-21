scoreboard players add @a[scores={vsMiningXp=500..}] vsMiningLvl 1
execute as @a[scores={vsMiningXp=500..}] at @s run playsound entity.player.levelup ambient @s
scoreboard players remove @a[scores={vsMiningXp=500..}] vsMiningXp 500
scoreboard players add @a[scores={vsBattleXp=500..}] vsBattleLvl 1
execute as @a[scores={vsBattleXp=500..}] at @s run playsound entity.player.levelup ambient @s
scoreboard players remove @a[scores={vsBattleXp=500..}] vsBattleXp 500
scoreboard players add @a[scores={vsHerbalXp=500..}] vsHerbalLvl 1
execute as @a[scores={vsHerbalXp=500..}] at @s run playsound entity.player.levelup ambient @s
scoreboard players remove @a[scores={vsHerbalXp=500..}] vsHerbalXp 500
scoreboard players add @a[scores={vsFishingXp=500..}] vsFishingLvl 1
execute as @a[scores={vsFishingXp=500..}] at @s run playsound entity.player.levelup ambient @s
scoreboard players remove @a[scores={vsFishingXp=500..}] vsFishingXp 500
scoreboard players add @a[scores={vsMagicXp=500..}] vsMagicLvl 1
execute as @a[scores={vsMagicXp=500..}] at @s run playsound entity.player.levelup ambient @s
scoreboard players remove @a[scores={vsMagicXp=500..}] vsMagicXp 500
scoreboard players add @a[scores={vsBeekpXp=500..}] vsBeekpLvl 1
execute as @a[scores={vsBeekpXp=500..}] at @s run playsound entity.player.levelup ambient @s
scoreboard players remove @a[scores={vsBeekpXp=500..}] vsBeekpXp 500

title @a[scores={vsHerbalTel=1..}] actionbar ["",{"text":"草药学 Lv.","color":"green","bold":true},{"score":{"name":"*","objective":"vsHerbalLvl"},"color":"green","bold":true},{"text":" "},{"score":{"name":"*","objective":"vsHerbalXp"},"color":"green"},{"text":"/500","color":"green"}]
scoreboard players remove @a[scores={vsHerbalTel=1..}] vsHerbalTel 1
title @a[scores={vsBattleTel=1..}] actionbar ["",{"text":"战斗 Lv.","color":"blue","bold":true},{"score":{"name":"*","objective":"vsBattleLvl"},"color":"blue","bold":true},{"text":" "},{"score":{"name":"*","objective":"vsBattleXp"},"color":"blue"},{"text":"/500","color":"blue"}]
scoreboard players remove @a[scores={vsBattleTel=1..}] vsBattleTel 1
title @a[scores={vsMiningTel=1..}] actionbar ["",{"text":"挖矿 Lv.","color":"gold","bold":true},{"score":{"name":"*","objective":"vsMiningLvl"},"color":"gold","bold":true},{"text":" "},{"score":{"name":"*","objective":"vsMiningXp"},"color":"gold"},{"text":"/500","color":"gold"}]
scoreboard players remove @a[scores={vsMiningTel=1..}] vsMiningTel 1
title @a[scores={vsFishingTel=1..}] actionbar ["",{"text":"钓鱼 Lv.","color":"aqua","bold":true},{"score":{"name":"*","objective":"vsFishingLvl"},"color":"aqua","bold":true},{"text":" "},{"score":{"name":"*","objective":"vsFishingXp"},"color":"aqua"},{"text":"/500","color":"aqua"}]
scoreboard players remove @a[scores={vsFishingTel=1..}] vsFishingTel 1
title @a[scores={vsMagicTel=1..}] actionbar ["",{"text":"魔法 Lv.","color":"dark_purple","bold":true},{"score":{"name":"*","objective":"vsMagicLvl"},"color":"dark_purple","bold":true},{"text":" "},{"score":{"name":"*","objective":"vsMagicXp"},"color":"dark_purple"},{"text":"/500","color":"dark_purple"}]
scoreboard players remove @a[scores={vsMagicTel=1..}] vsMagicTel 1
title @a[scores={vsBeekpTel=1..}] actionbar ["",{"text":"养蜂 Lv.","color":"yellow","bold":true},{"score":{"name":"*","objective":"vsBeekpLvl"},"color":"yellow","bold":true},{"text":" ","color":"none","bold":false},{"score":{"name":"*","objective":"vsBeekpXp"},"color":"yellow"},{"text":"/500","color":"yellow"}]
scoreboard players remove @a[scores={vsBeekpTel=1..}] vsBeekpTel 1

scoreboard players enable @a vsBattleTel
scoreboard players enable @a vsMiningTel
scoreboard players enable @a vsMagicTel
scoreboard players enable @a vsHerbalTel
scoreboard players enable @a vsBeekpTel
scoreboard players enable @a vsFishingTel
