##############################
### キュアフィールド毎秒処理
##############################

#MP回復量を取得
scoreboard players set _ _ 0
execute if score @s CureFieldLevel matches 1 run scoreboard players set _ _ 1
execute if score @s CureFieldLevel matches 2 run scoreboard players set _ _ 2
execute if score @s CureFieldLevel matches 3 run scoreboard players set _ _ 3
execute if score @s CureFieldLevel matches 4 run scoreboard players set _ _ 4

#効果発動
execute as @a[distance=..8] at @s run function skill:act/common/cure_field/apply

#残り時間減少
scoreboard players remove @s CureField 1

#効果切れ
kill @s[type=minecraft:marker,scores={CureField=..0}]

#演出
function makeup:skill/act/common/cure_field/tick
