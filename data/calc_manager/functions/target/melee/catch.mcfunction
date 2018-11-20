##############################
### 近接攻撃ターゲットを取得する
##############################

### 必ず
### function calc_manager:target/melee/release
### を呼んでお片付けすること

tag @s add MeleePlayer
execute positioned ^ ^ ^5 as @e[distance=..5,tag=Mob] positioned as @s positioned ^ ^ ^1000 facing entity @a[tag=MeleePlayer,limit=1] eyes positioned ^ ^ ^1000 positioned ~-0.5 ~-0.5 ~-0.5 if entity @s[dx=0,dy=0,dz=0] run tag @s add MeleeTargetCand
tag @s remove MeleePlayer

tag @e[tag=MeleeTargetCand,sort=nearest,limit=1] add MeleeTarget
tag @e[tag=MeleeTargetCand] remove MeleeTargetCand
