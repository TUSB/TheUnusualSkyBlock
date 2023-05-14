##############################
### 断罪発動
##############################

#ダメージデータを取得し、補正を掛ける
execute if score _ Level matches 1 run data modify storage skill: Damage set from storage skill: Data.Common[{Name:"断罪",Level:1}].Damage
function skill:damage/add/skill/weapon

#斬撃を生成
execute anchored eyes run summon minecraft:marker ~ ~ ~ {Tags:["Skill","NativeTask","Condemnation"]}
execute as @e[tag=Condemnation,tag=!Initialized] positioned as @s run tp @s ~ ~ ~ ~180 -60
execute as @e[tag=Condemnation,tag=!Initialized] run function skill:damage/save

#当たり判定
execute at 0-0-0-0-2 as @e[tag=Enemy,distance=..1] at @s run function skill:act/common/condemnation/effect0

#演出
function makeup:skill/act/common/condemnation/act0
