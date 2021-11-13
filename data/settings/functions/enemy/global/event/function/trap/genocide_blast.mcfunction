### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:marker",Tags:[DelayedData,HasAI,CallOnInit]}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {}
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {Initial:[{Name:"Damage",Damage:{Physical:100,Fire:100,Ice:100,Lightning:100,Light:100,Dark:100},Distance:{Min:0.0d,Max:6.0d}},{Name:"Kill"}]}
#Function
effect give @e[team=Friendly,gamemode=!creative,distance=..6] instant_damage 1 5 true
playsound entity.wither.death master @a[distance=..32] ~ ~ ~ 0.4 0 0.1
playsound entity.blaze.ambient master @a[distance=..32] ~ ~ ~ 3 0
playsound block.end_portal.spawn master @a[distance=..32] ~ ~ ~ 3 1.5
playsound entity.generic.explode master @a[distance=..32] ~ ~ ~ 3 0
playsound block.end_portal_frame.fill master @a[distance=..32] ~ ~ ~ 3 0
playsound block.ender_chest.open master @a[distance=..32] ~ ~ ~ 10 0
particle flame ~ ~0.5 ~ 0.5 0.5 0.5 0.4 100 force @a[tag=ShowParticles]
particle portal ~ ~0.5 ~ 0 0 0 5 100 force @a[tag=ShowParticles]
particle dust -100000000 0 -10 3 ~ ~0.5 ~ 1.7 1.7 1.7 0.7 100 force @a[tag=ShowParticles]
particle dust -1 -100 100000000 4 ~ ~0.5 ~ 3.5 3.5 3.5 1 100 force @a[tag=ShowParticles]
particle dust 1 -100000000 100000000 2 ~ ~0.5 ~ 1.2 1.2 1.2 0.5 100 force @a[tag=ShowParticles]
particle dust 0 0 0 3 ~ ~0.5 ~ 0.2 0.2 0.2 0 100 force @a[tag=ShowParticles]
