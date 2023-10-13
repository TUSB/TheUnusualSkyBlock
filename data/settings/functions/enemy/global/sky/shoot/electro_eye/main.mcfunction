### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:zombie",CustomName:'{"translate":"エレクトロアイ","color":"#FF0000","bold":true}',Silent:1b,ActiveEffects:[{Id:14,Amplifier:127b,Duration:-1,ShowParticles:0b},{Id:28,Amplifier:1b,Duration:-1,ShowParticles:0b},{Id:12,Amplifier:1b,Duration:-1,ShowParticles:0b}],IsBaby:1b,NoGravity:1b,DrownedConversionTime:2147483647,PortalCooldown:3000,DeathLootTable:"empty",Tags:[Mob,Enemy,DelayedData,HasAI,CallOnTick,TickingRequired,HasLootTable]}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {ArmorItems:[{},{},{},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;1,0,65,0],Properties:{textures:[{Value:"ewogICJ0aW1lc3RhbXAiIDogMTY3MDgyMjY3NzM5NCwKICAicHJvZmlsZUlkIiA6ICJiNmQyZTEyNGRkMjg0ZGM2ODQzNDg0OTgzZWZkYmFlNSIsCiAgInByb2ZpbGVOYW1lIiA6ICJQYTFmeSIsCiAgInRleHR1cmVzIiA6IHsKICAgICJTS0lOIiA6IHsKICAgICAgInVybCIgOiAiaHR0cDovL3RleHR1cmVzLm1pbmVjcmFmdC5uZXQvdGV4dHVyZS8yOTE0ODIxZDVkZDRmZTU4NGYzZWY3ODMwNGFjNDAwNjdjZTYzYzg1YTliMGUzNTEzMjIwYTE5YjE4ZWViMWI2IgogICAgfQogIH0KfQ=="}]}}}}],ArmorDropChances:[-1E40f,-1E40f,-1E40f,-1E40f]}
data modify storage tusb_mob: "即時ステータス"."最大感知範囲" set value 0d
data modify storage tusb_mob: "即時ステータス"."基本移動力" set value 0.25d
data modify storage tusb_mob: "即時ステータス"."ノックバック耐性" set value 4d
data modify storage tusb_mob: "即時ステータス"."ノックバック力" set value 0d

### 遅延ステータス
# 属性値
data modify storage tusb_mob: "遅延ステータス"."ステータス"."炎属性値" set value 75
data modify storage tusb_mob: "遅延ステータス"."ステータス"."氷属性値" set value 150
data modify storage tusb_mob: "遅延ステータス"."ステータス"."雷属性値" set value -50
data modify storage tusb_mob: "遅延ステータス"."ステータス"."光属性値" set value 150
data modify storage tusb_mob: "遅延ステータス"."ステータス"."闇属性値" set value 50
# ステータス
data modify storage tusb_mob: "遅延ステータス"."ステータス"."最大HP" set value 50
data modify storage tusb_mob: "遅延ステータス"."ステータス"."最大MP" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理攻撃力" set value 50
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理防御力" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法攻撃力" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法防御力" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス".LootTable set value [{Loot:"item:group/drop_item/tier4/common",Count:1,Chance:0.25d}]
data modify storage tusb_mob: "遅延ステータス"."ステータス".DeathCause set value '[{"translate":"「ﾋﾞﾘﾘｯ」%1$sは%2$sの放った電撃により、感電してしまった。","with":[{"selector":"@s"},{"storage":"mob_data:","nbt":"MobName","interpret":true}]}]'
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {Tick:[{Name:"Function",Tags:[Global,Sky,Shoot,ElectroEye,Direction]},{Name:"Function",Tags:[Global,Sky,Shoot,ElectroEye,Tp]}],Passenger:{Type:"down",Check:true,Call:[{Name:"Function",Tags:[Global,Event,Function,CommonExe,SearchAndDestroy]}]},TurnCount:6,Turn:[{Index:1,Skill:[{Interval:{Min:30,Max:50,Current:40},Loop:{Max:1,Current:1},Call:[{Condition:[{Name:"HasTarget",Target:{Look:"Player",Radius:32d,IgnoreBlocks:true}}],Name:"Function",Tags:[Global,Sky,Shoot,ElectroEye,ChangeTurn]},{Condition:[{Name:"HasTarget",Target:{Look:"Player",Radius:64d,MinRadius:32d,IgnoreBlocks:true}}],Settings:[{Name:"Direction",Target:{Look:"Player",Radius:64d,IgnoreBlocks:true},Direction:[-180f,-90f],DirectionRange:[360f,80f],Speed:8d,SpeedRange:4d}],Name:"Teleport",Message:true}]}]},{Index:2,Skill:[{Interval:{Min:3,Max:6,Current:5},Loop:{Max:3,Current:3},Call:[{Name:"Function",Tags:[Global,Event,Function,Spread,Main],MaxSpeed:2d,MinSpeed:1d,CheckBlock:1b},{Name:"Function",Tags:[Global,Sky,Shoot,ElectroEye,TeleportSound]}]},{Interval:{Min:1,Max:1,Current:1},Loop:{Max:1,Current:1},Call:[{Name:"ChangeTurn",Set:1}]}]},{Index:3,Skill:[{Interval:{Min:1,Max:1,Current:1},Loop:{Max:1,Current:1},Call:[{Name:"MergeNBT",NBT:{NoAI:true}},{Settings:[{Name:"Facing",Target:{Look:"Player",Radius:32d,IgnoreBlocks:true}},{Name:"Direction",Target:{Look:"Player",Radius:32d,IgnoreBlocks:true},Direction:[-15f,45f],DirectionRange:[30f,15f],Speed:-6d,SpeedRange:1d,Absolute:{Vertical:true}}],Name:"Teleport"},{Name:"ChangeAI",Tick:[{Name:"Function",Tags:[Global,Sky,Shoot,ElectroEye,Direction]}]}]},{Interval:{Min:1,Max:1,Current:1},Loop:{Max:1,Current:1},Call:[{Name:"Function",Tags:[Global,Sky,Shoot,ElectroEye,TeleportSound]}]},{Interval:{Min:5,Max:5,Current:5},Loop:{Max:1,Current:1},Call:[{Settings:[{Name:"Facing",Target:{Look:"Player",Radius:32d,IgnoreBlocks:true},Anchor:"Eyes"},{Name:"Rotation",Direction:[0f,0f],DirectionRange:[0f,4f]}],Name:"Function",Tags:[Global,Event,Function,CommonExe,TpWithRotation]}]},{Interval:{Min:1,Max:1,Current:1},Loop:{Max:1,Current:1},Call:[{Name:"Function",Tags:[Global,Sky,Shoot,ElectroEye,LaserStart]}]},{Interval:{Min:2,Max:2,Current:2},Loop:{Max:15,Current:15},Call:[{Name:"Function",Tags:[Global,Sky,Shoot,ElectroEye,LaserMain]}]},{Interval:{Min:1,Max:1,Current:1},Loop:{Max:1,Current:1},Call:[{Name:"ChangeTurn",Set:1},{Name:"MergeNBT",NBT:{NoAI:false}},{Name:"ChangeAI",Tick:[{Name:"Function",Tags:[Global,Sky,Shoot,ElectroEye,Direction]},{Name:"Function",Tags:[Global,Sky,Shoot,ElectroEye,Tp]}]}]}]},{Index:4,Skill:[{Interval:{Min:1,Max:1,Current:1},Loop:{Max:1,Current:1},Call:[{Name:"Function",Tags:[Global,Sky,Shoot,ElectroEye,BulletOn]},{Settings:[{Name:"Facing",Target:{Look:"Player",Radius:32d,IgnoreBlocks:true}},{Name:"Direction",Target:{Look:"Player",Radius:32d,IgnoreBlocks:true},Direction:[-40f,15f],DirectionRange:[80f,15f],Speed:-8d,SpeedRange:2d,Absolute:{Vertical:true}}],Name:"Teleport"},{Name:"ChangeAI",Tick:[{Name:"Function",Tags:[Global,Sky,Shoot,ElectroEye,Direction]}]}]},{Interval:{Min:1,Max:1,Current:1},Loop:{Max:1,Current:1},Call:[{Settings:[{Name:"Facing",Target:{Look:"Player",Radius:32d,IgnoreBlocks:true},Anchor:"Eyes"},{Name:"Rotation",Direction:[0f,0f],DirectionRange:[0f,2f]}],Name:"Function",Tags:[Global,Event,Function,CommonExe,TpWithRotation]},{Name:"ChangeTurn",Set:5},{Name:"MergeNBT",NBT:{NoAI:true}},{Name:"ChangeAI",Tick:[{Name:"Function",Tags:[Global,Sky,Shoot,ElectroEye,Tackle],Set:6},{Name:"Function",Tags:[Global,Sky,Shoot,ElectroEye,TackleDirection]}]},{Name:"Function",Tags:[Global,Sky,Shoot,ElectroEye,TackleSound]}]}]},{Index:5,Skill:[{Interval:{Min:2,Max:2,Current:2},Loop:{Max:1,Current:1},Call:[{Name:"Damage",Player:{DamageType:[Global],EPF:10,Effectiveness:30,DeathCause:'[{"translate":"「ﾋﾞﾘﾘｯ」%1$sは%2$sの放った電撃により、感電してしまった。","with":[{"selector":"@s"},{"storage":"mob_data:","nbt":"MobName","interpret":true}]}]'},MP:{MP:2,Percent:true},Distance:{Max:2d}},{Condition:[{Name:"RandomChance",Chance:0.1d}],Name:"Function",Tags:[Global,Sky,Shoot,ElectroEye,Palsy]}]}],Exit:{Time:40,TimeCount:40}},{Index:6,Skill:[{Interval:{Min:1,Max:1,Current:1},Loop:{Max:1,Current:1},Call:[{Settings:[{Name:"Direction",Target:{Look:"Player",Radius:64d,IgnoreBlocks:true},Direction:[-180f,-45f],DirectionRange:[360f,20f],Speed:6d,SpeedRange:2d,Absolute:{Vertical:true}}],Name:"Teleport"},{Name:"ChangeAI",Tick:[{Name:"Function",Tags:[Global,Sky,Shoot,ElectroEye,Direction]},{Name:"Function",Tags:[Global,Sky,Shoot,ElectroEye,Tp]}]},{Name:"ChangeTurn",Set:1},{Name:"Function",Tags:[Global,Sky,Shoot,ElectroEye,BulletOff]},{Name:"MergeNBT",NBT:{NoAI:false}},{Name:"Function",Tags:[Global,Sky,Shoot,ElectroEye,TeleportSound]}]}]}]}
