
### フラワーギフト発動

###威力算出
execute anchored eyes if score _ Level matches 1 run summon arrow ^ ^ ^-0.1 {NoGravity:1b,damage:0,Color:-1,Tags:[FlowerGift,FlowerGift1,NativeTask,FlyingRequired,KillInGround]}
execute anchored eyes if score _ Level matches 2 run summon arrow ^ ^ ^-0.1 {NoGravity:1b,damage:0,Color:-1,Tags:[FlowerGift,FlowerGift2,NativeTask,FlyingRequired,KillInGround]}
execute anchored eyes if score _ Level matches 3 run summon arrow ^ ^ ^-0.1 {NoGravity:1b,damage:0,Color:-1,Tags:[FlowerGift,FlowerGift3,NativeTask,FlyingRequired,KillInGround]}
execute anchored eyes if score _ Level matches 4 run summon arrow ^ ^ ^-0.1 {NoGravity:1b,damage:0,Color:-1,Tags:[FlowerGift,FlowerGift4,NativeTask,FlyingRequired,KillInGround]}

### 投擲物発射
execute as @e[distance=..5,type=minecraft:arrow,tag=!Initialized,tag=FlowerGift,sort=nearest,limit=1] positioned 0.0 0.0 0.0 positioned ^ ^ ^1.52 run function calc:throw_projectile/

#演出
function makeup:skill/act/white_mage/flower_gift/act0
