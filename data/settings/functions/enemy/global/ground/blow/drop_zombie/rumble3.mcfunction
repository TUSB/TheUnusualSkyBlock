### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:zombie",Silent:1b,IsBaby:1b,ActiveEffects:[{Id:14b,Amplifier:1b,Duration:2147483647,ShowParticles:0b}],PortalCooldown:5,DeathLootTable:"empty",Tags:[Mob,DelayedData,HasAI,CallOnInit,CallOnTimeOut,CooldownRequired]}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {}
data modify storage tusb_mob: "即時ステータス"."最大感知範囲" set value 0d
data modify storage tusb_mob: "即時ステータス"."基本移動力" set value 0d
data modify storage tusb_mob: "即時ステータス"."ノックバック耐性" set value 0d
data modify storage tusb_mob: "即時ステータス"."ノックバック力" set value 0d

### 遅延ステータス
# 属性値
data modify storage tusb_mob: "遅延ステータス"."ステータス"."炎属性値" set value 0
data modify storage tusb_mob: "遅延ステータス"."ステータス"."氷属性値" set value 0
data modify storage tusb_mob: "遅延ステータス"."ステータス"."雷属性値" set value 0
data modify storage tusb_mob: "遅延ステータス"."ステータス"."光属性値" set value 0
data modify storage tusb_mob: "遅延ステータス"."ステータス"."闇属性値" set value 0
# ステータス
data modify storage tusb_mob: "遅延ステータス"."ステータス"."最大HP" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."最大MP" set value 0
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理攻撃力" set value 0
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理防御力" set value 0
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法攻撃力" set value 0
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法防御力" set value 0
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {Initial:[{Name:"Damage",Player:{Damage:4d,BypassArmor:true},Distance:{Min:0,Max:5}}],Time:[{Name:"Kill"}]}
#Function
playsound block.composter.fill master @a[distance=..20] ~ ~ ~ 1.0 1.5
particle block stone ^0 ^ ^-5 0 0 0 0 1
particle block stone ^0.62667 ^ ^-4.96057 0 0 0 0 1
particle block stone ^1.24345 ^ ^-4.84292 0 0 0 0 1
particle block stone ^1.84062 ^ ^-4.64888 0 0 0 0 1
particle block stone ^2.40877 ^ ^-4.38153 0 0 0 0 1
particle block stone ^2.93893 ^ ^-4.04508 0 0 0 0 1
particle block stone ^3.42274 ^ ^-3.64484 0 0 0 0 1
particle block stone ^3.85257 ^ ^-3.18712 0 0 0 0 1
particle block stone ^4.22164 ^ ^-2.67913 0 0 0 0 1
particle block stone ^4.52414 ^ ^-2.1289 0 0 0 0 1
particle block stone ^4.75528 ^ ^-1.54508 0 0 0 0 1
particle block stone ^4.91144 ^ ^-0.93691 0 0 0 0 1
particle block stone ^4.99013 ^ ^-0.31395 0 0 0 0 1
particle block stone ^4.99013 ^ ^0.31395 0 0 0 0 1
particle block stone ^4.91144 ^ ^0.93691 0 0 0 0 1
particle block stone ^4.75528 ^ ^1.54508 0 0 0 0 1
particle block stone ^4.52414 ^ ^2.1289 0 0 0 0 1
particle block stone ^4.22164 ^ ^2.67913 0 0 0 0 1
particle block stone ^3.85257 ^ ^3.18712 0 0 0 0 1
particle block stone ^3.42274 ^ ^3.64484 0 0 0 0 1
particle block stone ^2.93893 ^ ^4.04508 0 0 0 0 1
particle block stone ^2.40877 ^ ^4.38153 0 0 0 0 1
particle block stone ^1.84062 ^ ^4.64888 0 0 0 0 1
particle block stone ^1.24345 ^ ^4.84292 0 0 0 0 1
particle block stone ^0.62667 ^ ^4.96057 0 0 0 0 1
particle block stone ^0 ^ ^5 0 0 0 0 1
particle block stone ^-0.62667 ^ ^4.96057 0 0 0 0 1
particle block stone ^-1.24345 ^ ^4.84292 0 0 0 0 1
particle block stone ^-1.84062 ^ ^4.64888 0 0 0 0 1
particle block stone ^-2.40877 ^ ^4.38153 0 0 0 0 1
particle block stone ^-2.93893 ^ ^4.04508 0 0 0 0 1
particle block stone ^-3.42274 ^ ^3.64484 0 0 0 0 1
particle block stone ^-3.85257 ^ ^3.18712 0 0 0 0 1
particle block stone ^-4.22164 ^ ^2.67913 0 0 0 0 1
particle block stone ^-4.52414 ^ ^2.1289 0 0 0 0 1
particle block stone ^-4.75528 ^ ^1.54508 0 0 0 0 1
particle block stone ^-4.91144 ^ ^0.93691 0 0 0 0 1
particle block stone ^-4.99013 ^ ^0.31395 0 0 0 0 1
particle block stone ^-4.99013 ^ ^-0.31395 0 0 0 0 1
particle block stone ^-4.91144 ^ ^-0.93691 0 0 0 0 1
particle block stone ^-4.75528 ^ ^-1.54508 0 0 0 0 1
particle block stone ^-4.52414 ^ ^-2.1289 0 0 0 0 1
particle block stone ^-4.22164 ^ ^-2.67913 0 0 0 0 1
particle block stone ^-3.85257 ^ ^-3.18712 0 0 0 0 1
particle block stone ^-3.42274 ^ ^-3.64484 0 0 0 0 1
particle block stone ^-2.93893 ^ ^-4.04508 0 0 0 0 1
particle block stone ^-2.40877 ^ ^-4.38153 0 0 0 0 1
particle block stone ^-1.84062 ^ ^-4.64888 0 0 0 0 1
particle block stone ^-1.24345 ^ ^-4.84292 0 0 0 0 1
particle block stone ^-0.62667 ^ ^-4.96057 0 0 0 0 1
particle block stone ^0 ^ ^-3 0 0 0 0 1
particle block stone ^0.62374 ^ ^-2.93444 0 0 0 0 1
particle block stone ^1.22021 ^ ^-2.74064 0 0 0 0 1
particle block stone ^1.76336 ^ ^-2.42705 0 0 0 0 1
particle block stone ^2.22943 ^ ^-2.00739 0 0 0 0 1
particle block stone ^2.59808 ^ ^-1.5 0 0 0 0 1
particle block stone ^2.85317 ^ ^-0.92705 0 0 0 0 1
particle block stone ^2.98357 ^ ^-0.31359 0 0 0 0 1
particle block stone ^2.98357 ^ ^0.31359 0 0 0 0 1
particle block stone ^2.85317 ^ ^0.92705 0 0 0 0 1
particle block stone ^2.59808 ^ ^1.5 0 0 0 0 1
particle block stone ^2.22943 ^ ^2.00739 0 0 0 0 1
particle block stone ^1.76336 ^ ^2.42705 0 0 0 0 1
particle block stone ^1.22021 ^ ^2.74064 0 0 0 0 1
particle block stone ^0.62374 ^ ^2.93444 0 0 0 0 1
particle block stone ^0 ^ ^3 0 0 0 0 1
particle block stone ^-0.62374 ^ ^2.93444 0 0 0 0 1
particle block stone ^-1.22021 ^ ^2.74064 0 0 0 0 1
particle block stone ^-1.76336 ^ ^2.42705 0 0 0 0 1
particle block stone ^-2.22943 ^ ^2.00739 0 0 0 0 1
particle block stone ^-2.59808 ^ ^1.5 0 0 0 0 1
particle block stone ^-2.85317 ^ ^0.92705 0 0 0 0 1
particle block stone ^-2.98357 ^ ^0.31359 0 0 0 0 1
particle block stone ^-2.98357 ^ ^-0.31359 0 0 0 0 1
particle block stone ^-2.85317 ^ ^-0.92705 0 0 0 0 1
particle block stone ^-2.59808 ^ ^-1.5 0 0 0 0 1
particle block stone ^-2.22943 ^ ^-2.00739 0 0 0 0 1
particle block stone ^-1.76336 ^ ^-2.42705 0 0 0 0 1
particle block stone ^-1.22021 ^ ^-2.74064 0 0 0 0 1
particle block stone ^-0.62374 ^ ^-2.93444 0 0 0 0 1
