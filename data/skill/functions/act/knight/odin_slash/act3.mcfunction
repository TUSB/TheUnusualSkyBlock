
### 斬鉄剣発動

function makeup:skill/act/knight/odin_slash/act

# データ復元
execute as @e[tag=OdinSlash0,sort=nearest,limit=1] run function oh_my_dat:please
# レベル
scoreboard players operation _ Level = @e[tag=!Initialized,tag=OdinSlash0,sort=nearest,limit=1] Level
# 装備
data modify storage item: Equipments set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Equipments
# 各種ダメージ
execute as @e[tag=!Initialized,tag=OdinSlash0,sort=nearest,limit=1] run function skill:damage/load

# スキルダメージ
execute if score _ Level matches 1 run data modify storage skill: Damage set from storage skill: Data.Knight[{Name:"斬鉄剣",Level:1}].Damage
execute if score _ Level matches 2 run data modify storage skill: Damage set from storage skill: Data.Knight[{Name:"斬鉄剣",Level:2}].Damage

# ダメージ計算
function skill:damage/add/skill/weapon

# 弾召喚
summon minecraft:armor_stand ~ ~0.8 ~ {Tags:[OdinSlash3,CooldownRequired,NativeTask],PortalCooldown:6,NoGravity:true,Marker:true,Invisible:true}
execute rotated ~18 -30 run tp @e[tag=!Initialized,limit=1] ~ ~0.8 ~ ~ ~

# ダメージ保存
execute as @e[tag=!Initialized,limit=1] run function skill:damage/save
