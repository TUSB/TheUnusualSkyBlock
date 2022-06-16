### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:zombie",Tags:[Mob,Enemy,DelayedData,CallOnTimeOut,CooldownRequired,HideLevel],CustomName:'{"translate":"Grumm","color":"#000000"}',IsBaby:true,Silent:true,ActiveEffects:[{Id:14b,Amplifier:127b,Duration:2147483647,ShowParticles:false},{Id:18b,Amplifier:127b,Duration:2147483647,ShowParticles:false},{Id:28b,Amplifier:127b,Duration:2147483647,ShowParticles:false}],PortalCooldown:3000,DeathLootTable:"empty"}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {ArmorItems:[{},{},{},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;1,0,60,0],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZGZiZTljZTZkMzM5YjExYjJkOWY0N2I1ZWYwZThiYjg5OTBiMzgyY2U0MDM2OGRiNzY0YjJkMzIyMjFiMzY2ZCJ9fX0="}]}}}}],ArmorDropChances:[-1E40f,-1E40f,-1E40f,-1E40f]}
data modify storage tusb_mob: "即時ステータス"."最大感知範囲" set value 0d
data modify storage tusb_mob: "即時ステータス"."基本移動力" set value 0d
data modify storage tusb_mob: "即時ステータス"."ノックバック耐性" set value 0d
data modify storage tusb_mob: "即時ステータス"."ノックバック力" set value 0d

### 遅延ステータス
# 属性値
data modify storage tusb_mob: "遅延ステータス"."ステータス"."炎属性値" set value 40
data modify storage tusb_mob: "遅延ステータス"."ステータス"."氷属性値" set value 40
data modify storage tusb_mob: "遅延ステータス"."ステータス"."雷属性値" set value 150
data modify storage tusb_mob: "遅延ステータス"."ステータス"."光属性値" set value 90
data modify storage tusb_mob: "遅延ステータス"."ステータス"."闇属性値" set value 90
# ステータス
data modify storage tusb_mob: "遅延ステータス"."ステータス"."最大HP" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."最大MP" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理攻撃力" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理防御力" set value 0
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法攻撃力" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法防御力" set value 0
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {Time:[{Condition:[{Name:"HasTarget",Global:true,Target:{Look:"Player",Radius:24d,IgnoreBlocks:false}}],Name:"Spawn",SpawnEntities:[[{Tags:[Global,Ground,Shoot,SecurityPoleSingle,Body],Level:1}],[{Tags:[Global,Ground,Shoot,SecurityPoleSingle,Main],Level:30}]],Count:1}]}
