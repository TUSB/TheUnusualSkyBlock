
### 斬鉄剣発動

function makeup:skill/act/knight/odin_slash/act

scoreboard players set @s OdinSlash 39

# プレイヤーデータ保存
summon armor_stand ~ ~ ~ {Tags:[CooldownRequired,OdinSlash0],PortalCooldown:41,NoGravity:true,Marker:true,Invisible:true}
function oh_my_dat:please
# レベル
scoreboard players operation @e[tag=!Initialized,tag=OdinSlash0,sort=nearest,limit=1] Level = _ Level
# 装備
data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Equipments set from storage item: Equipments
# 各種ダメージ
scoreboard players operation @e[tag=!Initialized,tag=OdinSlash0,sort=nearest,limit=1] Damage = _ Damage
scoreboard players operation @e[tag=!Initialized,tag=OdinSlash0,sort=nearest,limit=1] ElementFire = _ ElementFire
scoreboard players operation @e[tag=!Initialized,tag=OdinSlash0,sort=nearest,limit=1] ElementIce = _ ElementIce
scoreboard players operation @e[tag=!Initialized,tag=OdinSlash0,sort=nearest,limit=1] ElementLightning = _ ElementLightning
scoreboard players operation @e[tag=!Initialized,tag=OdinSlash0,sort=nearest,limit=1] ElementLight = _ ElementLight
scoreboard players operation @e[tag=!Initialized,tag=OdinSlash0,sort=nearest,limit=1] ElementDark = _ ElementDark
