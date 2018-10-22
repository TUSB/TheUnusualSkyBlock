##############################
### 蜘蛛の巣粉砕の印版_無限
##############################

playsound minecraft:entity.mooshroom.shear master @a[distance=..16] ~ ~ ~ 1 0.9
playsound minecraft:entity.mooshroom.shear master @a[distance=..16] ~ ~ ~ 1 1
playsound minecraft:entity.mooshroom.shear master @a[distance=..16] ~ ~ ~ 1 1.1
particle minecraft:item minecraft:cobweb ~ ~3 ~ 6 3 6 0.05 300 force
particle minecraft:crit ~ ~3 ~ 6 3 6 0 200 force

#デバッグ用
clone ~-6 ~-1 ~-6 ~6 ~7 ~6 -32 0 -32 filtered minecraft:cobweb move
fill -32 0 -32 -14 8 -14 minecraft:air destroy
execute as @e[x=0,y=30,z=0,dx=12,dy=8,dz=12,type=item] run tp @s @a[limit=1,sort=nearest]

#本番用
#clone ~-6 ~-1 ~-6 ~6 ~7 ~6 -1923 3 -87 filtered minecraft:cobweb move
#fill -1923 3 -87 -1911 11 -75 minecraft:air destroy
#execute as @e[x=-1923,y=3,z=-87,dx=12,dy=8,dz=12,type=item] run tp @s @a[limit=1,sort=nearest]
