##############################
### 鍛冶
##############################

###Damageタグを持つかどうか
execute store success score $Success Global store result score $Damage Global run data get entity @s SelectedItem.tag.Damage
###設定するダメージ値取得
scoreboard players remove $Damage Global 50
scoreboard players operation $Damage Global > $0 Const

###乱数によってロスト率を算出
function calc_manager:update_random
scoreboard players operation $Random Global %= $10 Const
execute unless entity @s[nbt=!{SelectedItem:{id:"minecraft:iron_sword"}},nbt=!{SelectedItem:{id:"minecraft:iron_shovel"}},nbt=!{SelectedItem:{id:"minecraft:iron_pickaxe"}},nbt=!{SelectedItem:{id:"minecraft:iron_axe"}},nbt=!{SelectedItem:{id:"minecraft:iron_hoe"}},nbt=!{SelectedItem:{id:"minecraft:iron_helmet"}},nbt=!{SelectedItem:{id:"minecraft:iron_chestplate"}},nbt=!{SelectedItem:{id:"minecraft:iron_leggings"}},nbt=!{SelectedItem:{id:"minecraft:iron_boots"}},nbt=!{SelectedItem:{id:"minecraft:chainmail_helmet"}},nbt=!{SelectedItem:{id:"minecraft:chainmail_chestplate"}},nbt=!{SelectedItem:{id:"minecraft:chainmail_leggings"}},nbt=!{SelectedItem:{id:"minecraft:chainmail_boots"}},nbt=!{SelectedItem:{id:"minecraft:shears"}},nbt=!{SelectedItem:{id:"minecraft:flint_and_steel"}},nbt=!{SelectedItem:{id:"minecraft:golden_sword"}},nbt=!{SelectedItem:{id:"minecraft:golden_shovel"}},nbt=!{SelectedItem:{id:"minecraft:golden_pickaxe"}},nbt=!{SelectedItem:{id:"minecraft:golden_axe"}},nbt=!{SelectedItem:{id:"minecraft:golden_hoe"}},nbt=!{SelectedItem:{id:"minecraft:golden_helmet"}},nbt=!{SelectedItem:{id:"minecraft:golden_chestplate"}},nbt=!{SelectedItem:{id:"minecraft:golden_leggings"}},nbt=!{SelectedItem:{id:"minecraft:golden_boots"}}] run scoreboard players add $Random Global 10
execute unless entity @s[nbt=!{SelectedItem:{id:"minecraft:stone_sword"}},nbt=!{SelectedItem:{id:"minecraft:stone_shovel"}},nbt=!{SelectedItem:{id:"minecraft:stone_pickaxe"}},nbt=!{SelectedItem:{id:"minecraft:stone_axe"}},nbt=!{SelectedItem:{id:"minecraft:stone_hoe"}}] run scoreboard players add $Random Global 7
execute unless entity @s[nbt=!{SelectedItem:{id:"minecraft:wooden_sword"}},nbt=!{SelectedItem:{id:"minecraft:wooden_shovel"}},nbt=!{SelectedItem:{id:"minecraft:wooden_pickaxe"}},nbt=!{SelectedItem:{id:"minecraft:wooden_axe"}},nbt=!{SelectedItem:{id:"minecraft:wooden_hoe"}},nbt=!{SelectedItem:{id:"minecraft:leather_helmet"}},nbt=!{SelectedItem:{id:"minecraft:leather_chestplate"}},nbt=!{SelectedItem:{id:"minecraft:leather_leggings"}},nbt=!{SelectedItem:{id:"minecraft:leather_boots"}},nbt=!{SelectedItem:{id:"minecraft:fishing_rod"}},nbt=!{SelectedItem:{id:"minecraft:carrot_on_a_stick"}},nbt=!{SelectedItem:{id:"minecraft:shield"}},nbt=!{SelectedItem:{id:"minecraft:bow"}}] run scoreboard players add $Random Global 4
execute unless entity @s[nbt=!{SelectedItem:{id:"minecraft:diamond_sword"}},nbt=!{SelectedItem:{id:"minecraft:diamond_shovel"}},nbt=!{SelectedItem:{id:"minecraft:diamond_pickaxe"}},nbt=!{SelectedItem:{id:"minecraft:diamond_axe"}},nbt=!{SelectedItem:{id:"minecraft:diamond_hoe"}},nbt=!{SelectedItem:{id:"minecraft:leather_helmet"}},nbt=!{SelectedItem:{id:"minecraft:leather_chestplate"}},nbt=!{SelectedItem:{id:"minecraft:leather_leggings"}},nbt=!{SelectedItem:{id:"minecraft:leather_boots"}}] run scoreboard players add $Random Global 1
execute unless entity @s[nbt=!{SelectedItem:{id:"minecraft:elytra"}},nbt=!{SelectedItem:{id:"minecraft:trident"}}] run scoreboard players add $Random Global 0
execute if score @s SupportSkill matches 12032 run scoreboard players add $Random Global 6

###エラー
execute if score $Success Global matches ..0 run function skill_manager:knight/blacksmith/error
###成功
execute if score $Success Global matches 1.. if score $Random Global matches 10.. run function skill_manager:knight/blacksmith/success
###失敗
execute if score $Success Global matches 1.. if score $Random Global matches ..9 run function skill_manager:knight/blacksmith/failure
