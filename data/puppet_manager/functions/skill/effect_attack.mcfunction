##############################
### パペット状態異常攻撃
##############################

###ダメージ付与
execute if score @s PupRecordLevel matches ..199 as @e[distance=..17,tag=Mob,sort=nearest,limit=1] run function puppet_manager:skill/effect/give1
execute if score @s PupRecordLevel matches 200..299 as @e[distance=..17,tag=Mob,sort=nearest,limit=1] run function puppet_manager:skill/effect/give2
execute if score @s PupRecordLevel matches 300.. at @e[distance=..17,tag=Mob,sort=nearest,limit=1] as @e[distance=..6,tag=Mob] run function puppet_manager:skill/effect/give2

###---演出---Start

###---演出---End
