### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:zombie",Tags:[Mob,Enemy,DelayedData,HasAI,TickingRequired,"Unmoved"],CustomName:'{"translate":"セキュリティポール・シングル","color":"#FF0000","bold":true}',DeathTime:19s,NoAI:true,Silent:true,active_effects:[{id:"minecraft:invisibility",amplifier:127b,duration:-1,show_particles:false},{id:"minecraft:weakness",amplifier:127b,duration:-1,show_particles:false},{id:"minecraft:slow_falling",amplifier:127b,duration:-1,show_particles:false}],PortalCooldown:3000,DeathLootTable:"empty"}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {ArmorItems:[{},{},{},{id:"minecraft:player_head",count:1,components:{"minecraft:profile":{id:[I;1,0,60,0],properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZGZiZTljZTZkMzM5YjExYjJkOWY0N2I1ZWYwZThiYjg5OTBiMzgyY2U0MDM2OGRiNzY0YjJkMzIyMjFiMzY2ZCJ9fX0="}]}}}],ArmorDropChances:[-Infinityf,-Infinityf,-Infinityf,-Infinityf]}
data modify storage tusb_mob: "即時ステータス"."最大感知範囲" set value 0d
data modify storage tusb_mob: "即時ステータス"."基本移動力" set value 0d
data modify storage tusb_mob: "即時ステータス"."ノックバック耐性" set value 1d
data modify storage tusb_mob: "即時ステータス"."ノックバック力" set value 0d

### 遅延ステータス
# ステータス
data modify storage tusb_mob: "遅延ステータス"."ステータス"."最大HP" set value 1000
data modify storage tusb_mob: "遅延ステータス"."ステータス"."最大MP" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理攻撃力" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理防御力" set value 200
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法攻撃力" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法防御力" set value 200
data modify storage tusb_mob: "遅延ステータス"."ステータス"."理外攻撃力" set value 0
data modify storage tusb_mob: "遅延ステータス"."ステータス"."理外防御力" set value 0
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {TurnCount:3,Turn:[{Index:1,Rotate:[0f,0f],Exit:{Condition:[{Name:"has_target",Target:{Look:"Player",Radius:20,IgnoreBlocks:false}}]}},{Index:2,Target:{Look:"Player",Radius:20d,IgnoreBlocks:1b},Rotate:[0f,0f],Skill:[{Interval:{Min:1,Max:1,Current:1},Loop:{Max:1,Current:1},Call:[{Name:"delay_action",Tags:[Casting,Charge,Normal]}]}],Exit:{Loop:{Max:1,Current:1}}},{Index:3,Target:{Look:"Player",Radius:20d,IgnoreBlocks:1b},Rotate:[3f,10f],Skill:[{Interval:{Min:100,Max:100,Current:100},Loop:{Max:1,Current:1},Call:[{}]},{Interval:{Min:1,Max:1,Current:1},Loop:{Max:100,Current:100},Call:[{Name:"function",Tags:[Global,Event,Function,AttackSound,FiringLaser]},{Name:"laser",Loop:40,Laser:"SecurityLaser",Type:"Single"}]}],Exit:{Time:205,TimeCount:205}}]}
