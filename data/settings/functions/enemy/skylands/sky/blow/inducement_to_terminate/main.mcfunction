### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:husk",CustomName:'{"translate":"終熄の誘手","color":"#FF0000"}',IsBaby:true,PortalCooldown:3000,DeathLootTable:"empty",Tags:[Mob,Enemy,DelayedData,HasAI,CallOnInit,TickingRequired,SmartMotion,Bounce,DamageProjectile,EnemyProjectile,HasLootTable]}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {HandItems:[{id:"minecraft:diamond_axe",Count:1b,tag:{CustomModelData:2}},{}],ArmorItems:[{id:"minecraft:leather_boots",Count:1b,tag:{Unbreakable:true,display:{color:0}}},{id:"minecraft:leather_leggings",Count:1b,tag:{Unbreakable:true,display:{color:0}}},{id:"minecraft:leather_chestplate",Count:1b,tag:{Unbreakable:true,display:{color:0}}},{id:"minecraft:player_head",Count:1b,tag:{Unbreakable:true,SkullOwner:{Name:"終熄の誘手",Id:[I;1,0,38,0],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZGMwOThkZGJjZmUyNGYzNWFiY2Y3NTVkODllY2U4YTk0ZmEwZjMyZmZkODgyODBlMmEyNzE2NTYzYTliOGU3YiJ9fX0="}]}}}}],HandDropChances:[-1E40f,-1E40f],ArmorDropChances:[-1E40f,-1E40f,-1E40f,-1E40f]}
data modify storage tusb_mob: "即時ステータス"."最大感知範囲" set value 48d
data modify storage tusb_mob: "即時ステータス"."基本移動力" set value 0d
data modify storage tusb_mob: "即時ステータス"."ノックバック耐性" set value 1d
data modify storage tusb_mob: "即時ステータス"."ノックバック力" set value 2d

### 遅延ステータス
# 属性値
data modify storage tusb_mob: "遅延ステータス"."ステータス"."炎属性値" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."氷属性値" set value -100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."雷属性値" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."光属性値" set value 200
data modify storage tusb_mob: "遅延ステータス"."ステータス"."闇属性値" set value -100
# ステータス
data modify storage tusb_mob: "遅延ステータス"."ステータス"."最大HP" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."最大MP" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理攻撃力" set value 150
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理防御力" set value 9999
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法攻撃力" set value 200
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法防御力" set value 0
data modify storage tusb_mob: "遅延ステータス"."ステータス".LootTable set value [{Loot:"item:group/drop_item/tier3/common",Count:1,Chance:0.25d}]
data modify storage tusb_mob: "遅延ステータス"."ステータス".DeathCause set value '[{"translate":"「ｽﾎﾟｰﾝ」%1$sは%2$sの鎌により首を収穫された。","with":[{"selector":"@s"},{"storage":"mob_data:","nbt":"MobName","interpret":true}]}]'
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {Initial:[{Name:"SmartMotion",Start:true,Speed:{Set:50d},Gravity:{Set:0d}}],TurnCount:2,Turn:[{Index:1,Skill:[{Interval:{Min:2,Max:2,Current:2},Call:[{Settings:[{Name:"Facing",Target:{Look:"Player",Radius:48d,MinRadius:17d,IgnoreBlocks:true}},{Name:"Rotation",Direction:[-10f,-120f],DirectionRange:[20f,240f]},{Name:"Direction",Speed:1d},{Name:"Rotation",Target:{Look:"Self"}},{Name:"Direction",Speed:10d},{Name:"Facing",Target:{Look:"Self"}},{Name:"Rotation",Flip:true},{Name:"Direction",Target:{Look:"Self"}}],Name:"SmartMotion",TP:true,Speed:{Add:2d,Limit:75d}},{Settings:[{Name:"Facing",Target:{Look:"Player",Radius:16d,IgnoreBlocks:true}},{Name:"Rotation",Direction:[-10f,-120f],DirectionRange:[20f,240f]},{Name:"Direction",Speed:1d},{Name:"Rotation",Target:{Look:"Self"}},{Name:"Direction",Speed:10d},{Name:"Facing",Target:{Look:"Self"}},{Name:"Rotation",Flip:true},{Name:"Direction",Target:{Look:"Self"}}],Name:"SmartMotion",TP:true,Speed:{Add:-2d,Limit:15d}}]},{Interval:{Min:1,Max:1,Current:1},Call:[{Condition:[{Name:"HasTarget",Target:{Look:"Player",Radius:4d,IgnoreBlocks:true}}],Name:"ChangeTurn",Set:2}]}]},{Index:2,Skill:[{Interval:{Min:2,Max:2,Current:2},Loop:{Max:8,Current:8},Call:[{Name:"Function",Tags:[Skylands,Sky,Blow,InducementToTerminate,ParticleAndSound1]}]},{Interval:{Min:2,Max:2,Current:2},Loop:{Max:1,Current:1},Call:[{Name:"Function",Tags:[Skylands,Sky,Blow,InducementToTerminate,ParticleAndSound2]}],MP:30},{Interval:{Min:20,Max:20,Current:20},Loop:{Max:1,Current:1},Call:[{Name:"SmartMotion",TP:true,Speed:{Set:50d}}]}],Exit:{Loop:{Max:3,Current:3}}}]}
#Function
playsound minecraft:block.portal.trigger hostile @a[distance=..32] ~ ~ ~ 1 0.7 0
particle flash ~ ~ ~ 0 0 0 0 10 force
particle squid_ink ~ ~ ~ 0.5 0.5 0.5 1 20 force


