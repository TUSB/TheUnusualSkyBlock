##############################
### チェインアロー発動
##############################

#ダメージ
execute if score _ Level matches 1 run data modify storage skill: Damage set from storage skill: Data.Hunter[{Name:"チェインアロー",Level:1}].Damage
execute if score _ Level matches 2 run data modify storage skill: Damage set from storage skill: Data.Hunter[{Name:"チェインアロー",Level:2}].Damage
execute if score _ Level matches 3 run data modify storage skill: Damage set from storage skill: Data.Hunter[{Name:"チェインアロー",Level:3}].Damage
execute if score _ Level matches 4 run data modify storage skill: Damage set from storage skill: Data.Hunter[{Name:"チェインアロー",Level:4}].Damage
#ダメージ計算
function skill:damage/add/skill/weapon
#タグ一覧
data modify storage skill: Tags set value [Skill,ChainArrow,NativeTask]
execute if score _ Level matches 1 run data modify storage skill: Tags append value "Level1"
execute if score _ Level matches 2 run data modify storage skill: Tags append value "Level2"
execute if score _ Level matches 3 run data modify storage skill: Tags append value "Level3"
execute if score _ Level matches 4 run data modify storage skill: Tags append value "Level4"
#タグ付与
data modify entity @e[distance=..5,type=minecraft:arrow,tag=!Initialized,sort=nearest,limit=1] Tags append from storage skill: Tags[]
#演出
function makeup:skill/act/hunter/chain_arrow/act0
