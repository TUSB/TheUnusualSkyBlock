##############################
### キュアフィールド発動
##############################

#設置
summon minecraft:marker ~ ~ ~ {Tags:[Skill,NativeTask,CureField]}

#残り時間を設定
scoreboard players set @e[tag=CureField,tag=!Initialized,distance=..0.01] Interval 16

#-(回復量-1) = -(Level*10-1)をマーカーに設定
scoreboard players set _ _ -10
scoreboard players operation _ _ *= _ Level
scoreboard players add _ _ 1
scoreboard players operation @e[tag=CureField,tag=!Initialized,distance=..0.01] MP = _ _

#演出
function makeup:skill/act/common/cure_field/act0
