scoreboard players add @a shTmr 1
scoreboard players add #shVP shTtm 1
scoreboard players set @a[scores={shHlPrt=500..}] shHlPrt 500
scoreboard players set @a[scores={shHlPrt=..0}] shHlPrt 0
scoreboard players set @a[scores={shHlVc=500..}] shHlVc 500
scoreboard players set @a[scores={shHlVc=..0}] shHlVc 0
scoreboard players set @a[scores={shHlVa=500..}] shHlVa 500
scoreboard players set @a[scores={shHlVa=..0}] shHlVa 0
scoreboard players set @a[scores={shHlFat=..0}] shHlFat 0
scoreboard players set @a[scores={shHlDfb=..0}] shHlDfb 0
scoreboard players set @a[scores={shHlWtr=1500..}] shHlWtr 1500
scoreboard players set @a[scores={shHlWtr=..0}] shHlWtr 0
execute if score #shVP shTtm matches 30.. run function stayhealthy:debuff
execute if score #shVP shTtm matches 30.. run function stayhealthy:reward
execute if score #shVP shTtm matches 30.. run scoreboard players set #shVP shTtm 0