##############################
### キュアフィールド発動
##############################

#最後に設置されていた同スキルを削除
kill @e[type=minecraft:marker,tag=Skill,tag=CureField]

#設置
summon minecraft:marker ~ ~ ~ {Tags:[Skill, CureField]}

#残り時間を設定
scoreboard players set _ _ 16
scoreboard players operation @e[tag=Skill, tag=CureField] CureField = _ _

#レベルをマーカーに設定
scoreboard players operation @e[tag=Skill, tag=CureField] CureFieldLevel = _ Level

#演出
function makeup:skill/act/common/cure_field/act0
