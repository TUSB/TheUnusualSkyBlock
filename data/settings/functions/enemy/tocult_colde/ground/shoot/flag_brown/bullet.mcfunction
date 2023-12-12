### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:armor_stand",CustomName:'{"translate":"コンバットフラッガー・ブラウン","color":"#FFFFFF","bold":true}',Invisible:1b,Invulnerable:1b,PortalCooldown:100,Tags:[DelayedData,HasAI,CallOnDeath,CallOnInit,CallOnBlock,CallOnTick,TickingRequired,SmartMotion,Break,DamageProjectile,EnemyProjectile]}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {ArmorItems:[{},{},{},{}],DisabledSlots:4144959}
### 遅延ステータス
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理攻撃力" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法攻撃力" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス".DeathCause set value '[{"translate":"%1$sは%2$sの凶弾よって撃ち抜かれた。","with":[{"selector":"@s"},{"storage":"mob_data:","nbt":"MobName","interpret":true}]}]'
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {Initial:[{Name:"SmartMotion",TP:1b,Speed:{Set:120}}],Death:[{Name:"Damage",Explosion:4}],Block:[{Name:"Damage",Explosion:4}],Tick:[{Name:"ChangeAI",Tick:[{Name:"MergeNBT",NBT:{ArmorItems:[{},{},{},{id:"minecraft:firework_star",Count:1b,tag:{Explosion:{Type:0b,Colors:[I;16754017]},CustomModelData:125}}],DisabledSlots:4144959}},{Name:"ChangeAI",Tick:[{}]}]}]}
#Function
particle dust 100000000 100000000 2 0.5 ^-0.0 ^0.5 ^-0.0 0.0 0.0 0.0 0.5 1 force @a[distance=..64]
particle dust 100000000 100000000 2 0.5 ^0.13 ^0.48 ^-0.0 0.0 0.0 0.0 0.5 1 force @a[distance=..64]
particle dust 100000000 100000000 2 0.5 ^0.25 ^0.43 ^-0.0 0.0 0.0 0.0 0.5 1 force @a[distance=..64]
particle dust 100000000 100000000 2 0.5 ^0.35 ^0.35 ^-0.0 0.0 0.0 0.0 0.5 1 force @a[distance=..64]
particle dust 100000000 100000000 2 0.5 ^0.43 ^0.25 ^-0.0 0.0 0.0 0.0 0.5 1 force @a[distance=..64]
particle dust 100000000 100000000 2 0.5 ^0.48 ^0.13 ^-0.0 0.0 0.0 0.0 0.5 1 force @a[distance=..64]
particle dust 100000000 100000000 2 0.5 ^0.5 ^-0.0 ^-0.0 0.0 0.0 0.0 0.5 1 force @a[distance=..64]
particle dust 100000000 100000000 2 0.5 ^0.48 ^-0.13 ^0.0 0.0 0.0 0.0 0.5 1 force @a[distance=..64]
particle dust 100000000 100000000 2 0.5 ^0.43 ^-0.25 ^0.0 0.0 0.0 0.0 0.5 1 force @a[distance=..64]
particle dust 100000000 100000000 2 0.5 ^0.35 ^-0.35 ^0.0 0.0 0.0 0.0 0.5 1 force @a[distance=..64]
particle dust 100000000 100000000 2 0.5 ^0.25 ^-0.43 ^0.0 0.0 0.0 0.0 0.5 1 force @a[distance=..64]
particle dust 100000000 100000000 2 0.5 ^0.13 ^-0.48 ^0.0 0.0 0.0 0.0 0.5 1 force @a[distance=..64]
particle dust 100000000 100000000 2 0.5 ^-0.0 ^-0.5 ^0.0 0.0 0.0 0.0 0.5 1 force @a[distance=..64]
particle dust 100000000 100000000 2 0.5 ^-0.13 ^-0.48 ^0.0 0.0 0.0 0.0 0.5 1 force @a[distance=..64]
particle dust 100000000 100000000 2 0.5 ^-0.25 ^-0.43 ^0.0 0.0 0.0 0.0 0.5 1 force @a[distance=..64]
particle dust 100000000 100000000 2 0.5 ^-0.35 ^-0.35 ^0.0 0.0 0.0 0.0 0.5 1 force @a[distance=..64]
particle dust 100000000 100000000 2 0.5 ^-0.43 ^-0.25 ^0.0 0.0 0.0 0.0 0.5 1 force @a[distance=..64]
particle dust 100000000 100000000 2 0.5 ^-0.48 ^-0.13 ^0.0 0.0 0.0 0.0 0.5 1 force @a[distance=..64]
particle dust 100000000 100000000 2 0.5 ^-0.5 ^-0.0 ^-0.0 0.0 0.0 0.0 0.5 1 force @a[distance=..64]
particle dust 100000000 100000000 2 0.5 ^-0.48 ^0.13 ^-0.0 0.0 0.0 0.0 0.5 1 force @a[distance=..64]
particle dust 100000000 100000000 2 0.5 ^-0.43 ^0.25 ^-0.0 0.0 0.0 0.0 0.5 1 force @a[distance=..64]
particle dust 100000000 100000000 2 0.5 ^-0.35 ^0.35 ^-0.0 0.0 0.0 0.0 0.5 1 force @a[distance=..64]
particle dust 100000000 100000000 2 0.5 ^-0.25 ^0.43 ^-0.0 0.0 0.0 0.0 0.5 1 force @a[distance=..64]
particle dust 100000000 100000000 2 0.5 ^-0.13 ^0.48 ^-0.0 0.0 0.0 0.0 0.5 1 force @a[distance=..64]
particle end_rod ^-0.0 ^0.0 ^0.0 0.0 0.0 0.0 0.5 1 force @a[distance=..64]
