execute as @e[type=item,nbt={Item:{id:"minecraft:glass_bottle"}}] at @s unless block ~ ~-0.2 ~ #brokenbottle:broken_bottle_whitelist run playsound block.glass.break block @a
execute as @e[type=item,nbt={Item:{id:"minecraft:glass_bottle"}}] at @s unless block ~ ~-0.2 ~ #brokenbottle:broken_bottle_whitelist run particle minecraft:item minecraft:glass_bottle ~ ~0.2 ~ 0.3 0.3 0.3 0 8
execute as @e[type=item,nbt={Item:{id:"minecraft:glass_bottle"}}] at @s unless block ~ ~-0.2 ~ #brokenbottle:broken_bottle_whitelist run kill @s

execute as @e[type=item,nbt={Item:{id:"minecraft:potion"}}] at @s unless block ~ ~-0.2 ~ #brokenbottle:broken_bottle_whitelist run playsound block.glass.break block @a
execute as @e[type=item,nbt={Item:{id:"minecraft:potion"}}] at @s unless block ~ ~-0.2 ~ #brokenbottle:broken_bottle_whitelist run particle minecraft:item minecraft:glass_bottle ~ ~0.2 ~ 0.3 0.3 0.3 0 8
execute as @e[type=item,nbt={Item:{id:"minecraft:potion"}}] at @s unless block ~ ~-0.2 ~ #brokenbottle:broken_bottle_whitelist run kill @s