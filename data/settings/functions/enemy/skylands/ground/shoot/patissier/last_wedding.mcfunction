### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:armor_stand",CustomName:'{"translate":"ラスト・ウエディング","color":"#FF0000","bold":true}',Tags:[Mob,Enemy,DelayedData,HasAI,CallOnInit,CallOnBlock,TickingRequired,SmartMotion,Break,AnalyseLog,HideLevel],Small:1b,Invisible:1b,Invulnerable:1b,PortalCooldown:700}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {ArmorItems:[{},{},{},{}],DisabledSlots:4144959}
data modify storage tusb_mob: "即時ステータス"."最大感知範囲" set value 0d
data modify storage tusb_mob: "即時ステータス"."基本移動力" set value 0d
data modify storage tusb_mob: "即時ステータス"."ノックバック耐性" set value 0d
data modify storage tusb_mob: "即時ステータス"."ノックバック力" set value 0d

### 遅延ステータス
# 属性値
data modify storage tusb_mob: "遅延ステータス"."ステータス"."炎属性値" set value -100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."氷属性値" set value -100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."雷属性値" set value -100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."光属性値" set value -100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."闇属性値" set value -100
# ステータス
data modify storage tusb_mob: "遅延ステータス"."ステータス"."最大HP" set value 10000
data modify storage tusb_mob: "遅延ステータス"."ステータス"."最大MP" set value 10000
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理攻撃力" set value 10000
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理防御力" set value 10000
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法攻撃力" set value 10000
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法防御力" set value 10000
data modify storage tusb_mob: "遅延ステータス"."ステータス".AnalyseLog set value '[{"translate":"強度...測定不能！ ※当たったらもれなく死にます。"}]'
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {Initial:[{Name:"SmartMotion",TP:true,Start:true,Gravity:{Set:0d}}],Block:[{Name:"Damage",Player:{DamageType:[Global],BypassArmor:true,BypassResistance:true,DeathCause:'[{"translate":"「ﾍﾞﾁｬﾘ」%1$sは%2$sの測定不能の強度によりストロベリージャムになった。","with":[{"selector":"@s"},{"storage":"mob_data:","nbt":"MobName","interpret":true}]}]'},Distance:{Max:4d},Explosion:-1},{Name:"Spawn",SpawnEntities:[[{Tags:[Skylands,Ground,Shoot,Patissier,HugeExplosion],Level:1}]]}],TurnCount:2,Turn:[{Index:1,Skill:[{Interval:{Min:80,Max:80,Current:80},Call:[{}]}],Exit:{Loop:{Max:1,Current:1}}},{Index:2,Skill:[{Interval:{Min:2,Max:2,Current:2},Call:[{Name:"SmartMotion",Gravity:{Add:5d}}]}]}]}
#Function
playsound block.enchantment_table.use_3 hostile @a[distance=..32] ~ ~ ~ 3.0 1.0 0
playsound minecraft:ambient.crimson_forest.shine_1 hostile @a[distance=..32] ~ ~ ~ 0.8 1.8 0
playsound minecraft:ambient.crimson_forest.shine_2 hostile @a[distance=..32] ~ ~ ~ 0.8 1.7 0
playsound minecraft:ambient.crimson_forest.shine_1 hostile @a[distance=..32] ~ ~ ~ 0.8 1.4 0
playsound minecraft:ambient.nether_waste.mood_3 hostile @a[distance=..32] ~ ~ ~ 1.0 1.7 0
playsound minecraft:ambient.nether_waste.mood_3 hostile @a[distance=..32] ~ ~ ~ 1.0 1.1 0
playsound minecraft:ambient.crimson_forest.shine_3 hostile @a[distance=..32] ~ ~ ~ 0.8 0.8 0
# Sample_01--Icosphere
particle end_rod ^-0.0 ^-2.85 ^-0.0 ^1.42 ^1000000000.0 ^4.97 0.00000000026 0 force @a[distance=..32]
particle end_rod ^-2.06 ^-1.27 ^-1.5 ^723607360.0 ^447219552.0 ^525725376.0 0.00000000026 0 force @a[distance=..32]
particle end_rod ^0.79 ^-1.27 ^-2.42 ^-276388032.0 ^447219872.0 ^850649216.0 0.00000000026 0 force @a[distance=..32]
particle end_rod ^2.55 ^-1.27 ^-0.0 ^-894426240.0 ^447215584.0 ^4.97 0.00000000026 0 force @a[distance=..32]
particle end_rod ^0.79 ^-1.27 ^2.42 ^-276388032.0 ^447219872.0 ^-850649216.0 0.00000000026 0 force @a[distance=..32]
particle end_rod ^-2.06 ^-1.27 ^1.5 ^723607360.0 ^447219552.0 ^-525725312.0 0.00000000026 0 force @a[distance=..32]
particle end_rod ^-0.79 ^1.27 ^-2.42 ^276388032.0 ^-447219872.0 ^850649216.0 0.00000000026 0 force @a[distance=..32]
particle end_rod ^2.06 ^1.27 ^-1.5 ^-723607360.0 ^-447219552.0 ^525725376.0 0.00000000026 0 force @a[distance=..32]
particle end_rod ^2.06 ^1.27 ^1.5 ^-723607360.0 ^-447219552.0 ^-525725312.0 0.00000000026 0 force @a[distance=..32]
particle end_rod ^-0.79 ^1.27 ^2.42 ^276388032.0 ^-447219872.0 ^-850649216.0 0.00000000026 0 force @a[distance=..32]
particle end_rod ^-2.55 ^1.27 ^-0.0 ^894426240.0 ^-447215584.0 ^4.97 0.00000000026 0 force @a[distance=..32]
particle end_rod ^-0.0 ^2.85 ^-0.0 ^1.42 ^-1000000000.0 ^4.97 0.00000000026 0 force @a[distance=..32]
particle end_rod ^0.46 ^-2.42 ^-1.42 ^-162455568.0 ^850654400.0 ^499995296.0 0.00000000026 0 force @a[distance=..32]
particle end_rod ^-1.21 ^-2.42 ^-0.88 ^425322752.0 ^850654272.0 ^309011424.0 0.00000000026 0 force @a[distance=..32]
particle end_rod ^-0.75 ^-1.5 ^-2.3 ^262868848.0 ^525737696.0 ^809011648.0 0.00000000026 0 force @a[distance=..32]
particle end_rod ^-2.42 ^-1.5 ^-0.0 ^850647872.0 ^525735840.0 ^4.97 0.00000000026 0 force @a[distance=..32]
particle end_rod ^-1.21 ^-2.42 ^0.88 ^425322752.0 ^850654272.0 ^-309011424.0 0.00000000026 0 force @a[distance=..32]
particle end_rod ^1.5 ^-2.42 ^-0.0 ^-525729760.0 ^850651648.0 ^4.97 0.00000000026 0 force @a[distance=..32]
particle end_rod ^1.96 ^-1.5 ^-1.42 ^-688189376.0 ^525736160.0 ^499996896.0 0.00000000026 0 force @a[distance=..32]
particle end_rod ^0.46 ^-2.42 ^1.42 ^-162455568.0 ^850654400.0 ^-499995296.0 0.00000000026 0 force @a[distance=..32]
particle end_rod ^1.96 ^-1.5 ^1.42 ^-688189376.0 ^525736160.0 ^-499996896.0 0.00000000026 0 force @a[distance=..32]
particle end_rod ^-0.75 ^-1.5 ^2.3 ^262868848.0 ^525737696.0 ^-809011648.0 0.00000000026 0 force @a[distance=..32]
particle end_rod ^-2.71 ^-0.0 ^-0.88 ^951057920.0 ^1.42 ^309012672.0 0.00000000026 0 force @a[distance=..32]
particle end_rod ^-2.71 ^-0.0 ^0.88 ^951057920.0 ^1.42 ^-309012672.0 0.00000000026 0 force @a[distance=..32]
particle end_rod ^-0.0 ^-0.0 ^-2.85 ^1.42 ^1.42 ^1000000000.0 0.00000000026 0 force @a[distance=..32]
particle end_rod ^-1.67 ^-0.0 ^-2.3 ^587785600.0 ^1.42 ^809016768.0 0.00000000026 0 force @a[distance=..32]
particle end_rod ^2.71 ^-0.0 ^-0.88 ^-951057920.0 ^1.42 ^309012672.0 0.00000000026 0 force @a[distance=..32]
particle end_rod ^1.67 ^-0.0 ^-2.3 ^-587785600.0 ^1.42 ^809016768.0 0.00000000026 0 force @a[distance=..32]
particle end_rod ^1.67 ^-0.0 ^2.3 ^-587785600.0 ^1.42 ^-809016768.0 0.00000000026 0 force @a[distance=..32]
particle end_rod ^2.71 ^-0.0 ^0.88 ^-951057920.0 ^1.42 ^-309012672.0 0.00000000026 0 force @a[distance=..32]
particle end_rod ^-1.67 ^-0.0 ^2.3 ^587785600.0 ^1.42 ^-809016768.0 0.00000000026 0 force @a[distance=..32]
particle end_rod ^-0.0 ^-0.0 ^2.85 ^1.42 ^1.42 ^-1000000000.0 0.00000000026 0 force @a[distance=..32]
particle end_rod ^-1.96 ^1.5 ^-1.42 ^688189376.0 ^-525736160.0 ^499996896.0 0.00000000026 0 force @a[distance=..32]
particle end_rod ^0.75 ^1.5 ^-2.3 ^-262868848.0 ^-525737696.0 ^809011648.0 0.00000000026 0 force @a[distance=..32]
particle end_rod ^2.42 ^1.5 ^-0.0 ^-850647872.0 ^-525735840.0 ^4.97 0.00000000026 0 force @a[distance=..32]
particle end_rod ^0.75 ^1.5 ^2.3 ^-262868848.0 ^-525737696.0 ^-809011648.0 0.00000000026 0 force @a[distance=..32]
particle end_rod ^-1.96 ^1.5 ^1.42 ^688189376.0 ^-525736160.0 ^-499996896.0 0.00000000026 0 force @a[distance=..32]
particle end_rod ^-0.46 ^2.42 ^-1.42 ^162455568.0 ^-850654400.0 ^499995328.0 0.00000000026 0 force @a[distance=..32]
particle end_rod ^-1.5 ^2.42 ^-0.0 ^525729760.0 ^-850651648.0 ^4.97 0.00000000026 0 force @a[distance=..32]
particle end_rod ^1.21 ^2.42 ^-0.88 ^-425322752.0 ^-850654272.0 ^309011424.0 0.00000000026 0 force @a[distance=..32]
particle end_rod ^1.21 ^2.42 ^0.88 ^-425322752.0 ^-850654272.0 ^-309011424.0 0.00000000026 0 force @a[distance=..32]
particle end_rod ^-0.46 ^2.42 ^1.42 ^162455568.0 ^-850654400.0 ^-499995328.0 0.00000000026 0 force @a[distance=..32]
