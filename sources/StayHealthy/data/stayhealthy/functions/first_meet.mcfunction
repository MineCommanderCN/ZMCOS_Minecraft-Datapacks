scoreboard players set @a[tag=!shMft] shHlPrt 200
scoreboard players set @a[tag=!shMft] shHlVc 200
scoreboard players set @a[tag=!shMft] shHlVa 200
scoreboard players set @a[tag=!shMft] shHlFat 0
scoreboard players set @a[tag=!shMft] shHlDfb 0
scoreboard players set @a[tag=!shMft] shHlWtr 1500
tag @a[tag=!shMft] add shMft
tag @a[scores={shDeath=1..}] remove shMft
scoreboard players remove @a[scores={shDeath=1..}] shDeath 1