### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:skeleton",Tags:[Mob,Enemy,DelayedData,CallOnInit,CallOnDamage,TickingRequired,AnalyseLog,"HideLevel","Unmoved"],CustomName:'{"translate":"Grumm","color":"#000000"}',Silent:true,DeathTime:19s,active_effects:[{id:"minecraft:invisibility",amplifier:127b,duration:-1,show_particles:false},{id:"minecraft:weakness",amplifier:127b,duration:-1,show_particles:false},{id:"minecraft:slow_falling",amplifier:1b,duration:-1,show_particles:false}],PortalCooldown:1000,DeathLootTable:"empty"}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {ArmorDropChances:[-1E40f,-1E40f,-1E40f,-1E40f],ArmorItems:[{},{},{},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;1,0,59,0],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNDQzODVlYzk1OTAyOTFjNjkzNGU4YmNjMzVmNTQxMmM5YjhjODlhYWMzOTQxMDVkNWU1MzMxZmFiNzgyNjJjNCJ9fX0="}]}}}}]}
data modify storage tusb_mob: "即時ステータス"."最大感知範囲" set value 0d
data modify storage tusb_mob: "即時ステータス"."基本移動力" set value 0d
data modify storage tusb_mob: "即時ステータス"."ノックバック耐性" set value 0d
data modify storage tusb_mob: "即時ステータス"."ノックバック力" set value 0d

### 遅延ステータス
# 属性値
data modify storage tusb_mob: "遅延ステータス"."ステータス"."炎属性値" set value 200
data modify storage tusb_mob: "遅延ステータス"."ステータス"."氷属性値" set value 200
data modify storage tusb_mob: "遅延ステータス"."ステータス"."雷属性値" set value 200
data modify storage tusb_mob: "遅延ステータス"."ステータス"."光属性値" set value 200
data modify storage tusb_mob: "遅延ステータス"."ステータス"."闇属性値" set value 200
# ステータス
data modify storage tusb_mob: "遅延ステータス"."ステータス"."最大HP" set value 1
data modify storage tusb_mob: "遅延ステータス"."ステータス"."最大MP" set value 1
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理攻撃力" set value -100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理防御力" set value 1
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法攻撃力" set value 0
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法防御力" set value 1
data modify storage tusb_mob: "遅延ステータス"."ステータス".AnalyseLog set value '[{"translate":"%1$s無害デース。","with":[{"translate":"【能力：反撃・置換・引寄無効】","color":"#00FF00"}]}]'
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {Initial:[{Name:"Spawn",SpawnEntities:[[{Tags:[Global,Neutrality,Summon,GenocideBomb,StandbyAec],Level:1}]]},{Name:"Step",Direction:[-180f,-90f],DirectionRange:[360f,180f],Speed:0.01d,Absolute:{Horizontal:true,Vertical:true}}],Damage:[{Name:"Spawn",SpawnEntities:[[{Tags:[Global,Neutrality,Summon,GenocideBomb,Countdown,SpawnParticles],Level:100}]]},{Name:"Kill"}]}
#Function
playsound block.end_portal_frame.fill neutral @a[distance=..32] ~ ~ ~ 0.7 0.5 0.1
