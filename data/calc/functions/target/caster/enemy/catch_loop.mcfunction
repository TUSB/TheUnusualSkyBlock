
### 遠隔攻撃ターゲットを取得するサブルーチン

# 残り深さをデクリメント
execute store result storage calc: Depth int 1 run data get storage calc: Depth 0.9999999999
# 探索
execute positioned ^ ^ ^5 as @e[distance=..5,tag=Enemy] positioned as @s positioned ^ ^ ^2000 facing entity @a[tag=CasterPlayer,limit=1] eyes positioned ^ ^ ^2000 positioned ~-0.5 ~-0.5 ~-0.5 if entity @s[dx=0,dy=0,dz=0] run tag @s add CasterTargetCand
tag @e[tag=CasterTargetCand,sort=nearest,limit=1] add CasterTarget
tag @e[tag=CasterTargetCand] remove CasterTargetCand
# ヒットしなかったら更に先を探索
execute unless data storage calc: {Depth:0} unless entity @e[tag=CasterTarget,limit=1] positioned ^ ^ ^10 run function calc:target/caster/enemy/catch_loop
