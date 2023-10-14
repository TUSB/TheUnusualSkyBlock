### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:marker",CustomName:'{"translate":"トゲの床ばら撒き","color":"#FF8000","bold":true}',Tags:[DelayedData,HasAI]}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {}
### 遅延ステータス
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理攻撃力" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法攻撃力" set value 100
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {TurnCount:1,Turn:[{Index:1,Skill:[{Interval:{Min:1,Max:1,Current:1},Loop:{Max:7,Current:7},Call:[{Settings:[{Name:"Rotation",Direction:[180f,-30f],DirectionRange:[-360f,30f]},{Name:"Direction",Speed:8d,SpeedRange:8d}],Name:"Spawn",Count:1,SpawnEntities:[[{Tags:[Global,Ground,Blow,ThornFloorTrap,Main],Level:15}]]}],Once:1},{Interval:{Min:1,Max:1,Current:1},Loop:{Max:5,Current:5},Call:[{Condition:[{Name:"RandomChance",Chance:0.2d}],Name:"Kill"},{Settings:[{Name:"Rotation",Direction:[180f,-30f],DirectionRange:[-360f,30f]},{Name:"Direction",Speed:8d,SpeedRange:8d}],Name:"Spawn",Count:1,SpawnEntities:[[{Tags:[Global,Ground,Blow,ThornFloorTrap,Main],Level:15}]]}],Once:1}]}]}
#Function
# Circle
particle squid_ink ^-0.0 ^0.0 ^0.07 ^6.98 ^0.0 ^1000000000.0 0.00000000045 0 normal
particle squid_ink ^0.02 ^0.0 ^0.07 ^258819040.0 ^0.0 ^965925824.0 0.00000000045 0 normal
particle squid_ink ^0.04 ^0.0 ^0.06 ^499999968.0 ^0.0 ^866025408.0 0.00000000045 0 normal
particle squid_ink ^0.05 ^0.0 ^0.05 ^707106816.0 ^0.0 ^707106816.0 0.00000000045 0 normal
particle squid_ink ^0.06 ^0.0 ^0.04 ^866025408.0 ^0.0 ^499999968.0 0.00000000045 0 normal
particle squid_ink ^0.07 ^0.0 ^0.02 ^965925824.0 ^0.0 ^258819040.0 0.00000000045 0 normal
particle squid_ink ^0.07 ^0.0 ^0.0 ^1000000000.0 ^0.0 ^-3.1 0.00000000045 0 normal
particle squid_ink ^0.07 ^0.0 ^-0.02 ^965925824.0 ^0.0 ^-258819040.0 0.00000000045 0 normal
particle squid_ink ^0.06 ^0.0 ^-0.04 ^866025408.0 ^0.0 ^-499999968.0 0.00000000045 0 normal
particle squid_ink ^0.05 ^0.0 ^-0.05 ^707106816.0 ^0.0 ^-707106816.0 0.00000000045 0 normal
particle squid_ink ^0.04 ^0.0 ^-0.06 ^499999968.0 ^0.0 ^-866025408.0 0.00000000045 0 normal
particle squid_ink ^0.02 ^0.0 ^-0.07 ^258819040.0 ^0.0 ^-965925824.0 0.00000000045 0 normal
particle squid_ink ^-0.0 ^0.0 ^-0.07 ^6.98 ^0.0 ^-1000000000.0 0.00000000045 0 normal
particle squid_ink ^-0.02 ^0.0 ^-0.07 ^-258819040.0 ^0.0 ^-965925824.0 0.00000000045 0 normal
particle squid_ink ^-0.04 ^0.0 ^-0.06 ^-499999968.0 ^0.0 ^-866025408.0 0.00000000045 0 normal
particle squid_ink ^-0.05 ^0.0 ^-0.05 ^-707106816.0 ^0.0 ^-707106816.0 0.00000000045 0 normal
particle squid_ink ^-0.06 ^0.0 ^-0.04 ^-866025408.0 ^0.0 ^-499999968.0 0.00000000045 0 normal
particle squid_ink ^-0.07 ^0.0 ^-0.02 ^-965925824.0 ^0.0 ^-258819040.0 0.00000000045 0 normal
particle squid_ink ^-0.07 ^0.0 ^0.0 ^-1000000000.0 ^0.0 ^-3.1 0.00000000045 0 normal
particle squid_ink ^-0.07 ^0.0 ^0.02 ^-965925824.0 ^0.0 ^258819040.0 0.00000000045 0 normal
particle squid_ink ^-0.06 ^0.0 ^0.04 ^-866025408.0 ^0.0 ^499999968.0 0.00000000045 0 normal
particle squid_ink ^-0.05 ^0.0 ^0.05 ^-707106816.0 ^0.0 ^707106816.0 0.00000000045 0 normal
particle squid_ink ^-0.04 ^0.0 ^0.06 ^-499999968.0 ^0.0 ^866025408.0 0.00000000045 0 normal
particle squid_ink ^-0.02 ^0.0 ^0.07 ^-258819040.0 ^0.0 ^965925824.0 0.00000000045 0 normal
