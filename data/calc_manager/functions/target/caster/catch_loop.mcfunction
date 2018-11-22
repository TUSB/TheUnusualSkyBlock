##############################
### 遠隔攻撃ターゲットを取得するサブルーチン
##############################

#### 残り深さをデクリメント
scoreboard players remove $Depth Global 1
### １０ｍまで探索
execute positioned ^ ^ ^5 as @e[distance=..5,tag=Mob] positioned as @s positioned ^ ^ ^1000 facing entity @a[tag=CasterPlayer,limit=1] eyes positioned ^ ^ ^1000 positioned ~-0.5 ~-0.5 ~-0.5 if entity @s[dx=0,dy=0,dz=0] run tag @s add CasterTargetCand
tag @e[tag=CasterTargetCand,sort=nearest,limit=1] add CasterTarget
tag @e[tag=CasterTargetCand] remove CasterTargetCand
### ヒットしなかったら更に１０ｍ先を探索
execute if score $Depth Global matches 1.. unless entity @e[tag=CasterTarget,limit=1] positioned ^ ^ ^10 run function calc_manager:target/caster/catch_loop
