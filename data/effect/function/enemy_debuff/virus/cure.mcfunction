#> effect:enemy_debuff/virus/cure
#
# 敵病気解除

# 防御復元
function #oh_my_dat:please
execute store result score @s Defense run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].VirusDefense
execute store result score @s MagicDefense run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].VirusMagicDefense

tag @s remove EnemyVirus
scoreboard players reset @s VirusTimer
