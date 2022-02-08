##############################
### 金タライ発動
##############################

#タライ召喚
execute as @e[distance=..15,tag=Mob] at @s anchored eyes positioned ^ ^ ^ run summon minecraft:falling_block ~ ~2 ~ {BlockState:{Name:"minecraft:light_weighted_pressure_plate"},Time:540,Tags:[NeverRemain,KanaTarai,NativeTask]}
#ダメージ
execute if score _ Level matches 1 run data modify storage skill: Damage set from storage skill: Data.Summoner[{Name:"金タライ",Level:1}].Damage
execute if score _ Level matches 2 run data modify storage skill: Damage set from storage skill: Data.Summoner[{Name:"金タライ",Level:2}].Damage
function skill:damage/add/skill/magic
#ダメージを保存
execute as @e[tag=KanaTarai,tag=!Initialized] run function skill:damage/save
#演出
function makeup:skill/act/summoner/kana_tarai/act0
