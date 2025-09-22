#> skill:act/ninja/hyoka_ryoran/act0
#
# 氷華繚乱 発動
scoreboard players set @s HyokaRyoranTimer 10

# 演出用アマスタ
summon minecraft:armor_stand ~ ~ ~ {Marker:1b,Invisible:1b,NoGravity:1b,Tags:["Skill","HyokaRyoranStand"]}
rotate @e[limit=1,distance=..0.01,tag=HyokaRyoranStand] ~ 0
# プレイヤー固定用マーカー
summon minecraft:marker ~ ~ ~ {Tags:["Skill","HyokaRyoranMarker"]}
rotate @e[limit=1,distance=..0.01,tag=HyokaRyoranMarker] ~ ~

# ダメージ
execute if score _ Level matches 1 run data modify storage skill: damage set from storage skill: Data.Ninja[{Name:"氷華繚乱",Level:1}].Damage
execute if score _ Level matches 2 run data modify storage skill: damage set from storage skill: Data.Ninja[{Name:"氷華繚乱",Level:2}].Damage
# 接地していなければ跳躍・風切の値を反映
execute if entity @s[nbt={OnGround:0b}] run function skill:act/ninja/hyoka_ryoran/modify_damage
# ダメージをセーブ
execute as @e[limit=1,distance=..0.01,tag=HyokaRyoranMarker] run function skill:damage/save

# 跳躍解除
effect clear @s minecraft:jump_boost
scoreboard players reset @s Choyaku
# 風切解除
scoreboard players operation @e[limit=1,distance=..0.01,tag=HyokaRyoranStand] Kazakiri = @s Kazakiri
effect clear @s minecraft:slow_falling
execute if score @s Kazakiri matches 1.. run function skill:act/ninja/kazakiri/finalize
scoreboard players reset @s Kazakiri

# 演出
execute as @e[limit=1,distance=..0.01,tag=HyokaRyoranStand] at @s run function makeup:skill/act/ninja/hyoka_ryoran/summon_display
