### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:vex",CustomName:'{"translate":"魔吸の精","color":"#FFFFFF","bold":true}',Tags:[Mob,Enemy,DelayedData,HasAI,CallOnDamage,CallOnAttack,CooldownRequired,HasLootTable,"AbsVex"],PortalCooldown:3000,DeathLootTable:"empty"}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {HandItems:[{id:"minecraft:netherite_sword",Count:1b,tag:{Unbreakable:1b}},{id:"minecraft:netherite_sword",Count:1b,tag:{Unbreakable:1b}}],HandDropChances:[-1E40f,-1E40f]}
data modify storage tusb_mob: "即時ステータス"."最大感知範囲" set value 64d
data modify storage tusb_mob: "即時ステータス"."基本移動力" set value 0.3d
data modify storage tusb_mob: "即時ステータス"."ノックバック耐性" set value 0d
data modify storage tusb_mob: "即時ステータス"."ノックバック力" set value 0d

### 遅延ステータス
# 属性値
data modify storage tusb_mob: "遅延ステータス"."ステータス"."炎属性値" set value 75
data modify storage tusb_mob: "遅延ステータス"."ステータス"."氷属性値" set value 75
data modify storage tusb_mob: "遅延ステータス"."ステータス"."雷属性値" set value 75
data modify storage tusb_mob: "遅延ステータス"."ステータス"."光属性値" set value 75
data modify storage tusb_mob: "遅延ステータス"."ステータス"."闇属性値" set value 75
# ステータス
data modify storage tusb_mob: "遅延ステータス"."ステータス"."最大HP" set value 50
data modify storage tusb_mob: "遅延ステータス"."ステータス"."最大MP" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理攻撃力" set value 25
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理防御力" set value 50
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法攻撃力" set value 25
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法防御力" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス".LootTable set value [{Loot:"item:group/drop_item/tier2/common",Count:1,Chance:0.31d}]
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {Damage:[{Name:"Function",Tags:[Skylands,Sky,Blow,AbsorberVex,Grow]}],Attack:[{Name:"Damage",Player:{},MP:{MP:15}}],TurnCount:1,Turn:[{Index:1,Skill:[{Interval:{Min:60,Max:120,Current:60},Loop:{Max:1,Current:1},Call:[{Condition:[{Name:"HasTarget",Global:true,Target:{Look:"Player",Radius:8d}}],Name:"Damage",Player:{},MP:{MP:15},Distance:{Max:5d}},{Name:"Function",Tags:[Skylands,Sky,Blow,AbsorberVex,Particle]}]}]}]}
