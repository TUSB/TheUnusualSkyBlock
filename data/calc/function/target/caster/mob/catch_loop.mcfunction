#> calc:target/caster/mob/catch_loop
### 遠隔攻撃ターゲットを取得するサブルーチン

# 残り深さをデクリメント
execute store result storage calc: Depth int 1 run data get storage calc: Depth 0.9999999999
# 探索
execute positioned ^ ^ ^5 as @e[distance=..5,tag=Mob] positioned as @s positioned ^ ^ ^2000 facing entity 0-0-0-0-0 feet positioned ^ ^ ^2000 positioned ~-0.5 ~-0.5 ~-0.5 run tag @s[dx=0,dy=0,dz=0] add CasterTargetCand
execute positioned ^ ^ ^5 store success storage calc: Success byte 1 run tp 0-0-0-0-0 @e[tag=CasterTargetCand,distance=..5,sort=nearest,limit=1]
execute positioned ^ ^ ^5 run tag @e[tag=CasterTargetCand,distance=..5] remove CasterTargetCand

# ヒットしなかったら更に先を探索
execute unless data storage calc: {Depth:0} unless data storage calc: {Success:1b} positioned ^ ^ ^10 run function calc:target/caster/mob/catch_loop
