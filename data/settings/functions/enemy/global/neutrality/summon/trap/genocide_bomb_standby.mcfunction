### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:skeleton",Tags:[Mob,HasAI,CallOnInit,CallOnDamage],CustomName:'{"translate":"Grumm","color":"#000000"}',Silent:true,DeathTime:19s,ActiveEffects:[{Id:14b,Amplifier:127b,Duration:2147483647,ShowParticles:false},{Id:28b,Amplifier:1b,Duration:2147483647,ShowParticles:false}]}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {ArmorDropChances:[-1E40f,-1E40f,-1E40f,-1E40f],ArmorItems:[{},{},{},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;1,0,59,0],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNDQzODVlYzk1OTAyOTFjNjkzNGU4YmNjMzVmNTQxMmM5YjhjODlhYWMzOTQxMDVkNWU1MzMxZmFiNzgyNjJjNCJ9fX0="}]}}}}]}
data modify storage tusb_mob: "即時ステータス"."最大感知範囲" set value 0d
data modify storage tusb_mob: "即時ステータス"."基本移動力" set value 0d
data modify storage tusb_mob: "即時ステータス"."ノックバック耐性" set value 0d
data modify storage tusb_mob: "即時ステータス"."ノックバック力" set value 0d

### 遅延ステータス
# 属性値
data modify storage tusb_mob: "遅延ステータス"."炎属性値" set value 200
data modify storage tusb_mob: "遅延ステータス"."氷属性値" set value 200
data modify storage tusb_mob: "遅延ステータス"."雷属性値" set value 200
data modify storage tusb_mob: "遅延ステータス"."光属性値" set value 200
data modify storage tusb_mob: "遅延ステータス"."闇属性値" set value 200
# ステータス
data modify storage tusb_mob: "遅延ステータス"."最大HP" set value 1
data modify storage tusb_mob: "遅延ステータス"."最大MP" set value 1
data modify storage tusb_mob: "遅延ステータス"."物理攻撃力" set value 1
data modify storage tusb_mob: "遅延ステータス"."物理防御力" set value 1
data modify storage tusb_mob: "遅延ステータス"."魔法攻撃力" set value 1
data modify storage tusb_mob: "遅延ステータス"."魔法防御力" set value 1
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {Initial:[{Name:"Spawn",SpawnEntities:[[{Tags:[Global,Event,Blow,Trap,GenocideBombStandbyAec],Level:1}]]}],Damage:[{Name:"Spawn",SpawnEntities:[[{Tags:[Global,Neutrality,Summon,Trap,GenocideBombCountdown,SpawnParticles],Level:1}]]}]}
#Function
playsound block.end_portal_frame.fill master @a[distance=..32] ~ ~ ~ 1.5 0 0.3
