effect give @a[scores={shHlVc=450..}] regeneration 5 0 true
effect give @a[scores={shHlVa=450..}] resistance 5 0 true
tag @a[scores={shHeal=..15,shHlPrt=450..}] add shHlt
effect give @a[tag=shHlt] instant_health 
scoreboard players remove @a[tag=shHlt] shHlPrt 100
tag @a[tag=shHlt] remove shHlt
tag @a[scores={shHlDfb=1..,shHlFat=1..}] add shFatRdc
scoreboard players remove @a[tag=shFatRdc] shHlFat 10
scoreboard players remove @a[tag=shFatRdc] shHlDfb 1
tag @a[tag=shFatRdc] remove shFatRdc