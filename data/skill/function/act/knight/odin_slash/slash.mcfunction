#> skill:act/knight/odin_slash/slash
#
# 斬鉄剣発動

# データ復元
function #oh_my_dat:please
# レベル
execute store result score _ Level run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].OdinSlash.Level

# スキルダメージ
execute if score _ Level matches 1 run data modify storage skill: damage set from storage skill: Data.Knight[{Name:"斬鉄剣",Level:1}].Damage
execute if score _ Level matches 2 run data modify storage skill: damage set from storage skill: Data.Knight[{Name:"斬鉄剣",Level:2}].Damage

# アマスタ召喚
summon minecraft:armor_stand ~ ~ ~ {Tags:[Skill,OdinSlash,NativeTask,CooldownRequired],NoGravity:true,Marker:true,Invisible:true}

# ダメージ保存
execute as @e[tag=OdinSlash,tag=!Initialized,distance=..0.01] run function skill:damage/save

# tick数保存
scoreboard players operation @e[tag=OdinSlash,tag=!Initialized,distance=..0.01] OdinSlash = @s OdinSlash

# PortalCooldownと位置設定
execute if score @s OdinSlash matches 26 rotated ~60 10 as @e[tag=OdinSlash,tag=!Initialized,distance=..0.01] store success entity @s PortalCooldown int 10 run tp @s ~ ~0.8 ~ ~ ~
execute if score @s OdinSlash matches 13 rotated ~60 -30 as @e[tag=OdinSlash,tag=!Initialized,distance=..0.01] store success entity @s PortalCooldown int 10 run tp @s ~ ~0.8 ~ ~ ~
execute if score @s OdinSlash matches 0 rotated ~60 18 as @e[tag=OdinSlash,tag=!Initialized,distance=..0.01] store success entity @s PortalCooldown int 8 run tp @s ~ ~0.8 ~ ~ ~

# データリセット
execute if score @s OdinSlash matches 0 run data remove storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].OdinSlash
scoreboard players reset @s[scores={OdinSlash=..0}] OdinSlash

# 演出
function makeup:skill/act/knight/odin_slash/act
