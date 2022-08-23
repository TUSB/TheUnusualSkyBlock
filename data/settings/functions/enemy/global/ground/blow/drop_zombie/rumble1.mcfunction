### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:zombie",Silent:1b,IsBaby:1b,ActiveEffects:[{Id:14b,Amplifier:1b,Duration:2147483647,ShowParticles:0b}],PortalCooldown:5,DeathLootTable:"empty",Tags:[Mob,Enemy,DelayedData,CallOnInit,CallOnTimeOut,CooldownRequired]}
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
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理攻撃力" set value -100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理防御力" set value 0
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法攻撃力" set value 0
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法防御力" set value 0
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {Initial:[{Name:"Damage",Player:{Damage:28d,DeathCause:'[{"translate":"%1$sは%2$sの地鳴りによって転ばせられ頭部の陥没により絶命した。","with":[{"selector":"@s"},{"storage":"mob_data:","nbt":"MobName","interpret":true}]}]'},Distance:{Min:0,Max:1}}],Time:[{Name:"Spawn",SpawnEntities:[[{Tags:[Global,Ground,Blow,DropZombie,Rumble2],Level:1}]],Speed:0.0d,SpeedRange:0.0d,Count:1}]}
#Function
playsound block.composter.fill hostile @a[distance=..20] ~ ~ ~ 0.7 1.5 0
particle block stone ^0 ^ ^-1 0 0 0 0 1 force @a[tag=ShowParticles]
particle block stone ^0.58779 ^ ^-0.80902 0 0 0 0 1 force @a[tag=ShowParticles]
particle block stone ^0.95106 ^ ^-0.30902 0 0 0 0 1 force @a[tag=ShowParticles]
particle block stone ^0.95106 ^ ^0.30902 0 0 0 0 1 force @a[tag=ShowParticles]
particle block stone ^0.58779 ^ ^0.80902 0 0 0 0 1 force @a[tag=ShowParticles]
particle block stone ^0 ^ ^1 0 0 0 0 1 force @a[tag=ShowParticles]
particle block stone ^-0.58779 ^ ^0.80902 0 0 0 0 1 force @a[tag=ShowParticles]
particle block stone ^-0.95106 ^ ^0.30902 0 0 0 0 1 force @a[tag=ShowParticles]
particle block stone ^-0.95106 ^ ^-0.30902 0 0 0 0 1 force @a[tag=ShowParticles]
particle block stone ^-0.58779 ^ ^-0.80902 0 0 0 0 1 force @a[tag=ShowParticles]
