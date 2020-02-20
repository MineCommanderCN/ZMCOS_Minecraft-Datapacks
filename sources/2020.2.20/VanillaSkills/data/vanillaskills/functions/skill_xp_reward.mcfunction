scoreboard players add @a[nbt={Inventory:[{tag:{ExpBook:"Herbal"}}]}] vsHerbalXp 20
execute as @a[nbt={Inventory:[{tag:{ExpBook:"Herbal"}}]}] at @s run playsound entity.experience_orb.pickup ambient @s
scoreboard players add @a[nbt={Inventory:[{tag:{ExpBook:"Herbal"}}]}] vsHerbalTel 1
clear @a[nbt={Inventory:[{tag:{ExpBook:"Herbal"}}]}] enchanted_book{ExpBook:"Herbal"} 1

scoreboard players set #ConstDummy vsDummy 3
scoreboard players operation @a[scores={vsDmgDlt=10..}] vsDmgDlt /= #ConstDummy vsDummy
execute as @a[scores={vsDmgDlt=10..}] run scoreboard players operation @s vsBattleXp += @s vsDmgDlt
scoreboard players set @a[scores={vsDmgDlt=10..}] vsBattleTel 1
scoreboard players add @a[nbt={Inventory:[{tag:{ExpBook:"Battle"}}]}] vsBattleXp 50
execute as @a[nbt={Inventory:[{tag:{ExpBook:"Battle"}}]}] at @s run playsound entity.experience_orb.pickup ambient @s
scoreboard players add @a[nbt={Inventory:[{tag:{ExpBook:"Battle"}}]}] vsBattleTel 1
clear @a[nbt={Inventory:[{tag:{ExpBook:"Battle"}}]}] enchanted_book{ExpBook:"Battle"} 1

scoreboard players add @a[scores={vsMineStone=1..},nbt=!{SelectedItem:{tag:{Enchantments:[{id:"minecraft:silk_touch"}]}}}] vsMiningXp 1
scoreboard players add @a[scores={vsMineStone=1..},nbt=!{SelectedItem:{tag:{Enchantments:[{id:"minecraft:silk_touch"}]}}}] vsMiningTel 1
scoreboard players remove @a[scores={vsMineStone=1..}] vsMineStone 1
scoreboard players add @a[scores={vsMineRst=1..},nbt=!{SelectedItem:{tag:{Enchantments:[{id:"minecraft:silk_touch"}]}}}] vsMiningXp 40
scoreboard players add @a[scores={vsMineRst=1..},nbt=!{SelectedItem:{tag:{Enchantments:[{id:"minecraft:silk_touch"}]}}}] vsMiningTel 1
scoreboard players remove @a[scores={vsMineRst=1..}] vsMineRst 1
scoreboard players add @a[scores={vsMineCoal=1..},nbt=!{SelectedItem:{tag:{Enchantments:[{id:"minecraft:silk_touch"}]}}}] vsMiningXp 5
scoreboard players add @a[scores={vsMineCoal=1..},nbt=!{SelectedItem:{tag:{Enchantments:[{id:"minecraft:silk_touch"}]}}}] vsMiningTel 1
scoreboard players remove @a[scores={vsMineCoal=1..}] vsMineCoal 1
scoreboard players add @a[scores={vsMineLapis=1..},nbt=!{SelectedItem:{tag:{Enchantments:[{id:"minecraft:silk_touch"}]}}}] vsMiningXp 20
scoreboard players add @a[scores={vsMineLapis=1..},nbt=!{SelectedItem:{tag:{Enchantments:[{id:"minecraft:silk_touch"}]}}}] vsMiningTel 1
scoreboard players remove @a[scores={vsMineLapis=1..}] vsMineLapis 1
scoreboard players add @a[scores={vsMineEme=1..},nbt=!{SelectedItem:{tag:{Enchantments:[{id:"minecraft:silk_touch"}]}}}] vsMiningXp 100
scoreboard players add @a[scores={vsMineEme=1..},nbt=!{SelectedItem:{tag:{Enchantments:[{id:"minecraft:silk_touch"}]}}}] vsMiningTel 1
scoreboard players remove @a[scores={vsMineEme=1..}] vsMineEme 1
scoreboard players add @a[scores={vsMineDia=1..},nbt=!{SelectedItem:{tag:{Enchantments:[{id:"minecraft:silk_touch"}]}}}] vsMiningXp 100
scoreboard players add @a[scores={vsMineDia=1..},nbt=!{SelectedItem:{tag:{Enchantments:[{id:"minecraft:silk_touch"}]}}}] vsMiningTel 1
scoreboard players remove @a[scores={vsMineDia=1..}] vsMineDia 1
scoreboard players add @a[scores={vsMineQtz=1..},nbt=!{SelectedItem:{tag:{Enchantments:[{id:"minecraft:silk_touch"}]}}}] vsMiningXp 15
scoreboard players add @a[scores={vsMineQtz=1..},nbt=!{SelectedItem:{tag:{Enchantments:[{id:"minecraft:silk_touch"}]}}}] vsMiningTel 1
scoreboard players remove @a[scores={vsMineQtz=1..}] vsMineQtz 1
scoreboard players add @a[nbt={Inventory:[{tag:{ExpBook:"Mining"}}]}] vsMiningXp 50
execute as @a[nbt={Inventory:[{tag:{ExpBook:"Mining"}}]}] at @s run playsound entity.experience_orb.pickup ambient @s
scoreboard players add @a[nbt={Inventory:[{tag:{ExpBook:"Mining"}}]}] vsMiningTel 1
clear @a[nbt={Inventory:[{tag:{ExpBook:"Mining"}}]}] enchanted_book{ExpBook:"Mining"} 1

scoreboard players add @a[scores={vsFished=1..}] vsFishingXp 15
scoreboard players add @a[scores={vsFished=1..}] vsFishingTel 1
scoreboard players remove @a[scores={vsFished=1..}] vsFished 1
scoreboard players add @a[nbt={Inventory:[{tag:{ExpBook:"Fishing"}}]}] vsFishingXp 50
execute as @a[nbt={Inventory:[{tag:{ExpBook:"Fishing"}}]}] at @s run playsound entity.experience_orb.pickup ambient @s
scoreboard players add @a[nbt={Inventory:[{tag:{ExpBook:"Fishing"}}]}] vsFishingTel 1
clear @a[nbt={Inventory:[{tag:{ExpBook:"Fishing"}}]}] enchanted_book{ExpBook:"Fishing"} 1

scoreboard players add @a[scores={vsEnchItem=1..}] vsMagicXp 40
scoreboard players add @a[scores={vsEnchItem=1..}] vsMagicTel 1
give @a[scores={vsEnchItem=1..,vsMagicLvl=50..}] lapis_lazuli 1
scoreboard players remove @a[scores={vsEnchItem=1..}] vsEnchItem 1
scoreboard players add @a[nbt={Inventory:[{tag:{ExpBook:"Magic"}}]}] vsMagicXp 50
execute as @a[nbt={Inventory:[{tag:{ExpBook:"Magic"}}]}] at @s run playsound entity.experience_orb.pickup ambient @s
scoreboard players add @a[nbt={Inventory:[{tag:{ExpBook:"Magic"}}]}] vsMagicTel 1
clear @a[nbt={Inventory:[{tag:{ExpBook:"Magic"}}]}] enchanted_book{ExpBook:"Magic"} 1