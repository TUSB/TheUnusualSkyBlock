### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:vex",CustomName:'{"translate":"魔吸の精","color":"#FFFFFF","bold":true}',Tags:[Mob,Enemy,DelayedData,HasAI,CallOnDamage,CallOnAttack,CooldownRequired,HasLootTable,AnalyseLog,"AbsVex"],PortalCooldown:3000,DeathLootTable:"empty"}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {HandItems:[{id:"minecraft:netherite_sword",count:1,components:{"minecraft:unbreakable":{}}},{id:"minecraft:netherite_sword",count:1,components:{"minecraft:unbreakable":{}}}],HandDropChances:[-Infinityf,-Infinityf]}
data modify storage tusb_mob: "即時ステータス"."最大感知範囲" set value 64d
data modify storage tusb_mob: "即時ステータス"."基本移動力" set value 0.3d
data modify storage tusb_mob: "即時ステータス"."ノックバック耐性" set value 0d
data modify storage tusb_mob: "即時ステータス"."ノックバック力" set value 0d

### 遅延ステータス
# ステータス
data modify storage tusb_mob: "遅延ステータス"."ステータス"."最大HP" set value 10
data modify storage tusb_mob: "遅延ステータス"."ステータス"."最大MP" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理攻撃力" set value 25
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理防御力" set value 50
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法攻撃力" set value 25
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法防御力" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."理外攻撃力" set value 0
data modify storage tusb_mob: "遅延ステータス"."ステータス"."理外防御力" set value 0
data modify storage tusb_mob: "遅延ステータス"."ステータス".LootTable set value [{Loot:"item:group/drop_item/tier1/common",Count:1,Chance:0.3d}]
data modify storage tusb_mob: "遅延ステータス"."ステータス".AnalyseLog set value '[{"translate":"%1$s魔力を吸う精霊。","with":[{"translate":"【能力：MP吸収】","color":"#00FF00"}]}]'
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {Damage:[{Name:"function",Tags:[Skylands,Sky,Blow,AbsorberVex,Grow]}],Attack:[{Name:"damage",Player:{},MP:{MP:15}}],TurnCount:1,Turn:[{Index:1,Skill:[{Interval:{Min:100,Max:160,Current:100},Loop:{Max:1,Current:1},Call:[{Condition:[{Name:"has_target",Global:true,Target:{Look:"Player",Radius:8d}}],Name:"damage",Player:{},MP:{MP:10},Distance:{Max:5d}},{Name:"function",Tags:[Skylands,Sky,Blow,AbsorberVex,Particle]}]}]}]}
