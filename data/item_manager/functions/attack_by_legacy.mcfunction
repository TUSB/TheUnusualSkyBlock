##############################
### レガシー更新
##############################

###耐久取得
execute store result score $LegacyDurability Global run data get entity @s SelectedItem.tag.Legacy[1].Durability 1000
###スタック時用カウント取得
execute store result score $LegacyCount Global run data get entity @s SelectedItem.Count
scoreboard players set $Legacy1000 Global 1000
execute store result score $LegacyCount Global run scoreboard players operation $Legacy1000 Global /= $LegacyCount Global
###耐久変化計算
scoreboard players operation $LegacyDurability Global -= $LegacyCount Global
###耐久変化反映
execute store result entity @s SelectedItem.tag.Legacy[1].Durability double 0.001 run scoreboard players get $LegacyDurability Global

###０以下壊れる
execute if score $LegacyDurability Global matches ..0 run replaceitem entity @s weapon.mainhand minecraft:air
###耐久変化後表示
scoreboard players operation $LegacyDurability Global /= $1000 Const

###演出
execute if score $LegacyDurability Global matches 4.. at @s run playsound minecraft:entity.wither.death master @s ~ ~ ~ 0.5 2
execute if score $LegacyDurability Global matches 3 at @s run playsound minecraft:entity.wither.death master @s ~ ~ ~ 0.5 1.6
execute if score $LegacyDurability Global matches 2 at @s run playsound minecraft:entity.wither.death master @s ~ ~ ~ 0.5 1.2
execute if score $LegacyDurability Global matches 1 at @s run playsound minecraft:entity.wither.death master @s ~ ~ ~ 0.5 0.8
execute if score $LegacyDurability Global matches ..0 at @s run playsound minecraft:entity.wither.death master @s ~ ~ ~ 0.5 0.6

###進捗トリガーリセット
advancement revoke @s only item_manager:attack_by_legacy
