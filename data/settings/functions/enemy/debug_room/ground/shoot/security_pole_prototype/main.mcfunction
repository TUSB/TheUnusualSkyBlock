### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:zombie",Tags:[Mob,Enemy,DelayedData,HasAI,TickingRequired,"Unmoved"],CustomName:'{"translate":"セキュリティポール・シングル","color":"#FF0000","bold":true}',DeathTime:19s,NoAI:true,Silent:true,active_effects:[{id:"minecraft:invisibility",amplifier:127b,duration:-1,show_particles:false},{id:"minecraft:weakness",amplifier:127b,duration:-1,show_particles:false},{id:"minecraft:slow_falling",amplifier:127b,duration:-1,show_particles:false}],PortalCooldown:3000,DeathLootTable:"empty"}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {ArmorItems:[{},{},{},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;1,0,60,0],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZGZiZTljZTZkMzM5YjExYjJkOWY0N2I1ZWYwZThiYjg5OTBiMzgyY2U0MDM2OGRiNzY0YjJkMzIyMjFiMzY2ZCJ9fX0="}]}}}}],ArmorDropChances:[-1E40f,-1E40f,-1E40f,-1E40f]}
data modify storage tusb_mob: "即時ステータス"."最大感知範囲" set value 0d
data modify storage tusb_mob: "即時ステータス"."基本移動力" set value 0d
data modify storage tusb_mob: "即時ステータス"."ノックバック耐性" set value 1d
data modify storage tusb_mob: "即時ステータス"."ノックバック力" set value 0d

### 遅延ステータス
# 属性値
data modify storage tusb_mob: "遅延ステータス"."ステータス"."炎属性値" set value 30
data modify storage tusb_mob: "遅延ステータス"."ステータス"."氷属性値" set value 30
data modify storage tusb_mob: "遅延ステータス"."ステータス"."雷属性値" set value 150
data modify storage tusb_mob: "遅延ステータス"."ステータス"."光属性値" set value 80
data modify storage tusb_mob: "遅延ステータス"."ステータス"."闇属性値" set value 80
# ステータス
data modify storage tusb_mob: "遅延ステータス"."ステータス"."最大HP" set value 1000
data modify storage tusb_mob: "遅延ステータス"."ステータス"."最大MP" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理攻撃力" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理防御力" set value 200
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法攻撃力" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法防御力" set value 200
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {TurnCount:3,Turn:[{Index:1,Rotate:[0f,0f],Exit:{Condition:[{Name:"HasTarget",Target:{Look:"Player",Radius:20,IgnoreBlocks:false}}]}},{Index:2,Target:{Look:"Player",Radius:20d,IgnoreBlocks:1b},Rotate:[0f,0f],Skill:[{Interval:{Min:1,Max:1,Current:1},Loop:{Max:1,Current:1},Call:[{Name:"DelayAction",Tags:[Casting,Charge,Normal]}]}],Exit:{Loop:{Max:1,Current:1}}},{Index:3,Target:{Look:"Player",Radius:20d,IgnoreBlocks:1b},Rotate:[3f,10f],Skill:[{Interval:{Min:100,Max:100,Current:100},Loop:{Max:1,Current:1},Call:[{}]},{Interval:{Min:1,Max:1,Current:1},Loop:{Max:100,Current:100},Call:[{Name:"Function",Tags:[Global,Event,Function,AttackSound,FiringLaser]},{Name:"Laser",Loop:40,Laser:"SecurityLaser",Type:"Single"}]}],Exit:{Time:205,TimeCount:205}}]}
