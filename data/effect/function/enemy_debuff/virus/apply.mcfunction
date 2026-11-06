#> effect:enemy_debuff/virus/apply
#
# 敵病気付与

#（病気耐性値）%の確率で失敗
execute store result score _ _ run random value 1..100
execute unless score @s VirusResistance < _ _ run return fail

tag @s add EnemyVirus
scoreboard players set @s VirusTimer 20

# 防御力を保存
function #oh_my_dat:please
execute store result storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].VirusDefense int 1 run scoreboard players get @s Defense 
execute store result storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].VirusMagicDefense int 1 run scoreboard players get @s MagicDefense 

# 防御割合減少処理
scoreboard players set _ _ 0
scoreboard players operation @s Defense *= _ _
scoreboard players operation @s MagicDefense *= _ _

function makeup:effect/enemy_debuff/virus/apply
