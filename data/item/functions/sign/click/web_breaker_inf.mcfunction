##############################
### 蜘蛛の巣粉砕の印版_無限
##############################

function makeup:item/sign/web_breaker_inf

#デバッグ用
clone ~-6 ~-1 ~-6 ~6 ~7 ~6 -32 0 -32 filtered minecraft:cobweb move
fill -32 0 -32 -20 8 -20 minecraft:air destroy
execute as @e[x=-32,y=0,z=-32,dx=12,dy=8,dz=12,type=item] run tp @s @a[limit=1,sort=nearest]

#本番用
#clone ~-6 ~-1 ~-6 ~6 ~7 ~6 -1923 3 -87 filtered minecraft:cobweb move
#fill -1923 3 -87 -1911 11 -75 minecraft:air destroy
#execute as @e[x=-1923,y=3,z=-87,dx=12,dy=8,dz=12,type=item] run tp @s @a[limit=1,sort=nearest]
