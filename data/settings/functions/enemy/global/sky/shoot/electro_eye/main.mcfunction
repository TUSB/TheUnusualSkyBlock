### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:zombie",CustomName:'{"translate":"エレクトロアイ","color":"#FF0000","bold":true}',Silent:1b,ActiveEffects:[{Id:14b,Amplifier:127b,Duration:2147483647,ShowParticles:0b},{Id:28b,Amplifier:1b,Duration:2147483647,ShowParticles:0b},{Id:12,Amplifier:1b,Duration:2147483647,ShowParticles:0b}],IsBaby:1b,NoGravity:1b,PortalCooldown:3000,DeathLootTable:"empty",Tags:[Mob,Enemy,DelayedData,HasAI,CallOnInit,CooldownRequired,NativeTask,SmartMotion]}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {ArmorItems:[{},{},{},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;1,0,65,0],Properties:{textures:[{Value:"ewogICJ0aW1lc3RhbXAiIDogMTY3MDgyMjY3NzM5NCwKICAicHJvZmlsZUlkIiA6ICJiNmQyZTEyNGRkMjg0ZGM2ODQzNDg0OTgzZWZkYmFlNSIsCiAgInByb2ZpbGVOYW1lIiA6ICJQYTFmeSIsCiAgInRleHR1cmVzIiA6IHsKICAgICJTS0lOIiA6IHsKICAgICAgInVybCIgOiAiaHR0cDovL3RleHR1cmVzLm1pbmVjcmFmdC5uZXQvdGV4dHVyZS8yOTE0ODIxZDVkZDRmZTU4NGYzZWY3ODMwNGFjNDAwNjdjZTYzYzg1YTliMGUzNTEzMjIwYTE5YjE4ZWViMWI2IgogICAgfQogIH0KfQ=="}]}}}}],ArmorDropChances:[-1E40f,-1E40f,-1E40f,-1E40f]}
data modify storage tusb_mob: "即時ステータス"."最大感知範囲" set value 60d
data modify storage tusb_mob: "即時ステータス"."基本移動力" set value 0.25d
data modify storage tusb_mob: "即時ステータス"."ノックバック耐性" set value 1d
data modify storage tusb_mob: "即時ステータス"."ノックバック力" set value 0d

### 遅延ステータス
# 属性値
data modify storage tusb_mob: "遅延ステータス"."ステータス"."炎属性値" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."氷属性値" set value 200
data modify storage tusb_mob: "遅延ステータス"."ステータス"."雷属性値" set value -25
data modify storage tusb_mob: "遅延ステータス"."ステータス"."光属性値" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."闇属性値" set value 100
# ステータス
data modify storage tusb_mob: "遅延ステータス"."ステータス"."最大HP" set value 50
data modify storage tusb_mob: "遅延ステータス"."ステータス"."最大MP" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理攻撃力" set value 50
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理防御力" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法攻撃力" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法防御力" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス".DeathCause set value '[{"translate":"「ﾋﾞﾘﾘｯ」%1$sは%2$sの放った電撃により、感電してしまった。","with":[{"selector":"@s"},{"storage":"mob_data:","nbt":"MobName","interpret":true}]}]'
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {Initial:[{Name:"SmartMotion",Stop:true}],Passenger:{Type:"down",Check:true,Call:[{Name:"Function",Tags:[Global,Event,Function,CommonExe,SearchAndDestroy]}]},TurnCount:2,Turn:[{Index:1,Target:{Look:"Player",Radius:64d,IgnoreBlocks:1b},Move:{Front:0.2d},Rotate:[-1f,-1f],Skill:[{Interval:{Min:1,Max:1,Current:8},Loop:{Max:1,Current:1},Call:[{}]}],Exit:{Time:6,TimeCount:6}},{Index:2,Target:{Look:"Player",Radius:64d,IgnoreBlocks:1b},Move:{Front:0.2d},Rotate:[-1f,-1f],Skill:[{Interval:{Min:30,Max:50,Current:40},Loop:{Max:1,Current:1},Call:[{Condition:[{Name:"HasTarget",Target:{Look:"Player",Radius:64d,IgnoreBlocks:true}},{Name:"RandomChance",Chance:0.4d}],Name:"ChangeTurn",Set:1}]},{Interval:{Min:4,Max:8,Current:6},Loop:{Max:3,Current:3},Call:[{Condition:[{Name:"HasTarget",Target:{Look:"Player",Radius:32d,IgnoreBlocks:true}}],Settings:[{Name:"Direction",Direction:[-180f,-5f],DirectionRange:[360f,10f],Speed:0d,SpeedRange:1.5d,Absolute:{Vertical:true}}],Name:"Function",Tags:[Global,Sky,Shoot,ElectroEye,Warp]},{Name:"Message",Message:'{"translate":"Warp","color":"#CA3737"}'}]}]}]}
