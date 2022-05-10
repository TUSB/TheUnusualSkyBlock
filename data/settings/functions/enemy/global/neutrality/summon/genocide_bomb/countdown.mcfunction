### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:skeleton",Tags:[Mob,Enemy,DelayedData,HasAI,CallOnInit,CallOnDamage,HideLevel],CustomName:'{"translate":"Grumm","color":"#000000"}',Silent:true,DeathTime:19s,ActiveEffects:[{Id:14b,Amplifier:127b,Duration:2147483647,ShowParticles:false},{Id:18b,Amplifier:127b,Duration:2147483647,ShowParticles:false}],DeathLootTable:"empty"}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {ArmorDropChances:[-1E40f,-1E40f,-1E40f,-1E40f],ArmorItems:[{},{},{},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;1,0,59,1],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvY2EzOWRjZDNmOTQ5MDU5M2E3OWUyNmM1YzlkYmU4ODY4OTVhNDcwYjgxOGRiZDU1OWE3YmIzZDc0MmUyMWExYiJ9fX0="}]}}}}]}
data modify storage tusb_mob: "即時ステータス"."最大感知範囲" set value 0d
data modify storage tusb_mob: "即時ステータス"."基本移動力" set value 0d
data modify storage tusb_mob: "即時ステータス"."ノックバック耐性" set value 0d
data modify storage tusb_mob: "即時ステータス"."ノックバック力" set value 0d

### 遅延ステータス
# 属性値
data modify storage tusb_mob: "遅延ステータス"."ステータス"."炎属性値" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."氷属性値" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."雷属性値" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."光属性値" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."闇属性値" set value 100
# ステータス
data modify storage tusb_mob: "遅延ステータス"."ステータス"."最大HP" set value 9999
data modify storage tusb_mob: "遅延ステータス"."ステータス"."最大MP" set value 9999
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理攻撃力" set value -100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理防御力" set value 9999
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法攻撃力" set value 0
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法防御力" set value 9999
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {Initial:[{Name:"Spawn",SpawnEntities:[[{Tags:[Global,Neutrality,Summon,GenocideBomb,3CountAec],Level:1}]]}],Damage:[{Settings:[{Name:"Facing",Target:{Look:"Player",Radius:2d,IgnoreBlocks:true}}],Name:"Step",Direction:[180f,-20f],Speed:2.0d}],TurnCount:3,Turn:[{Index:1,Exit:{Time:60,TimeCount:60}},{Index:2,Skill:[{Interval:{Min:60,Max:60,Current:1},Loop:{Max:1,Current:1},Call:[{Name:"Spawn",SpawnEntities:[[{Tags:[Global,Neutrality,Summon,GenocideBomb,2CountAec],Level:1}]]},{Name:"MergeNBT",NBT:{ArmorItems:[{},{},{},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;1,0,59,2],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvM2VjODg1MjI2OTg4ZmE5NjkyYzBhZDc3ZDQ2ZjcwN2EwNDUzZTVjOWIwMDI4MDgyZDZmOGMxZjVkM2QwOTJkYSJ9fX0="}]}}}}]}}],Once:1}],Exit:{Time:60,TimeCount:60}},{Index:3,Skill:[{Interval:{Min:60,Max:60,Current:1},Loop:{Max:1,Current:1},Call:[{Name:"Spawn",SpawnEntities:[[{Tags:[Global,Neutrality,Summon,GenocideBomb,1CountAec],Level:1}]]},{Name:"MergeNBT",NBT:{ArmorItems:[{},{},{},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;1,0,59,3],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZWJkYTcwZjYzZGFlNmQ5YjAwMDQ0OTdkNGRmMmU1ZTQ2ZjhiZjE2NTRjYmRiMWY1ODUyNTk4MGE4NTdhMDg1MyJ9fX0="}]}}}}]}}],Once:1},{Interval:{Min:60,Max:60,Current:60},Loop:{Max:1,Current:1},Call:[{Name:"Spawn",SpawnEntities:[[{Tags:[Global,Neutrality,Summon,GenocideBomb,GenocideBlast],Level:1}]]},{Name:"Kill"}],Once:1}]}]}
#Function
particle item magenta_stained_glass_pane ~ ~0.5 ~ 0.35 0.35 0.35 0.35 40 force @a[tag=ShowParticles]
playsound block.glass.break neutral @a[distance=..32] ~ ~ ~ 0.5 0 0.1
playsound block.beacon.deactivate neutral @a[distance=..32] ~ ~ ~ 1 2 0.1
