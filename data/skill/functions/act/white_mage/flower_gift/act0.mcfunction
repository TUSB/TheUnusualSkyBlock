
### フラワーギフト発動

###威力算出
execute anchored eyes if score _ Level matches 1 run scoreboard players set _ _ 40
execute anchored eyes if score _ Level matches 2 run scoreboard players set _ _ 30
execute anchored eyes if score _ Level matches 3 run scoreboard players set _ _ 20
execute anchored eyes if score _ Level matches 4 run scoreboard players set _ _ 10

### 投擲物発射
execute anchored eyes run summon arrow ^ ^ ^-0.1 {damage:0,Color:-1,Tags:[FlowerGift,NativeTask,FlyingRequired,KillInGround]}
execute anchored eyes positioned ^ ^ ^-0.1 run scoreboard players operation @e[distance=..0.01,tag=!Initialized,tag=FlowerGift,sort=nearest,limit=1] Level = _ _
execute anchored eyes positioned ^ ^ ^-0.1 as @e[distance=..0.01,tag=!Initialized,tag=FlowerGift,sort=nearest,limit=1] positioned 0.0 0.0 0.0 positioned ^ ^ ^1.52 run function calc:throw_projectile/

#演出
function makeup:skill/act/white_mage/flower_gift/act0
