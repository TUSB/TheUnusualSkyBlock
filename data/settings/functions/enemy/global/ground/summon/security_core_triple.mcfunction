### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:zombie",Tags:[Mob,DelayedData,HasAI,CallOnTimeOut,CooldownRequired,HideLevel],CustomName:'{"translate":"Grumm","color":"#000000"}',IsBaby:true,Silent:true,ActiveEffects:[{Id:14b,Amplifier:127b,Duration:2147483647,ShowParticles:false},{Id:18b,Amplifier:127b,Duration:2147483647,ShowParticles:false},{Id:28b,Amplifier:127b,Duration:2147483647,ShowParticles:false}],PortalCooldown:400,DeathLootTable:"empty"}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {ArmorItems:[{},{},{},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;1,0,62,0],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYWIyMjBhNGZjOTRiYWI5NTM5MjIxZjI1NDNhYWVkMGNhZmQ0NTc1NGJlNjI4ZmZhNmQ4NWQ0Y2I3MzdmYTZhZCJ9fX0="}]}}}}],ArmorDropChances:[-1E40f,-1E40f,-1E40f,-1E40f]}
data modify storage tusb_mob: "即時ステータス"."最大感知範囲" set value 0d
data modify storage tusb_mob: "即時ステータス"."基本移動力" set value 0d
data modify storage tusb_mob: "即時ステータス"."ノックバック耐性" set value 0d
data modify storage tusb_mob: "即時ステータス"."ノックバック力" set value 0d

### 遅延ステータス
# 属性値
data modify storage tusb_mob: "遅延ステータス"."ステータス"."炎属性値" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."氷属性値" set value 30
data modify storage tusb_mob: "遅延ステータス"."ステータス"."雷属性値" set value 30
data modify storage tusb_mob: "遅延ステータス"."ステータス"."光属性値" set value 40
data modify storage tusb_mob: "遅延ステータス"."ステータス"."闇属性値" set value 40
# ステータス
data modify storage tusb_mob: "遅延ステータス"."ステータス"."最大HP" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."最大MP" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理攻撃力" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理防御力" set value 0
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法攻撃力" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法防御力" set value 0
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {Time:[{Condition:[{Name:"HasTarget",Global:true,Target:{Look:"Player",Radius:24d,IgnoreBlocks:false}}],Name:"Spawn",SpawnEntities:[[{Tags:[Global,Ground,Shoot,SecurityPoleTriple,Body],Level:1}],[{Tags:[Global,Ground,Shoot,SecurityPoleTriple,Main],Level:70}]],Count:1}]}
