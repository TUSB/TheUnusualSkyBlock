### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:drowned",CustomName:'{"translate":"海廻","color":"#FFFFFF","bold":true}',Silent:1b,active_effects:[{id:"minecraft:invisibility",amplifier:127b,duration:-1,show_particles:0b}],PortalCooldown:3000,DeathLootTable:"empty",Tags:[Mob,Enemy,DelayedData,CallOnDamage,CallOnAttack,TickingRequired,HasLootTable,AnalyseLog]}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {HandItems:[{id:"minecraft:trident",count:1,components:{"minecraft:unbreakable":{}}},{}],ArmorItems:[{id:"minecraft:leather_boots",count:1,components:{"minecraft:dyed_color":5746073,"minecraft:unbreakable":{}}},{id:"minecraft:leather_leggings",count:1,components:{"minecraft:dyed_color":5746073,"minecraft:unbreakable":{}}},{id:"minecraft:leather_chestplate",count:1,components:{"minecraft:dyed_color":5746073,"minecraft:unbreakable":{}}},{id:"minecraft:prismarine",count:1}],HandDropChances:[-Infinityf,-Infinityf],ArmorDropChances:[-Infinityf,-Infinityf,-Infinityf,-Infinityf]}
data modify storage tusb_mob: "即時ステータス"."最大感知範囲" set value 32d
data modify storage tusb_mob: "即時ステータス"."基本移動力" set value 0.3d
data modify storage tusb_mob: "即時ステータス"."ノックバック耐性" set value 0d
data modify storage tusb_mob: "即時ステータス"."ノックバック力" set value 0d

### 遅延ステータス
# ステータス
data modify storage tusb_mob: "遅延ステータス"."ステータス"."最大HP" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."最大MP" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理攻撃力" set value 90
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理防御力" set value 115
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法攻撃力" set value 0
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法防御力" set value 85
data modify storage tusb_mob: "遅延ステータス"."ステータス"."理外攻撃力" set value 0
data modify storage tusb_mob: "遅延ステータス"."ステータス"."理外防御力" set value 0
data modify storage tusb_mob: "遅延ステータス"."ステータス".LootTable set value [{Loot:"item:group/drop_item/tier1/common",Count:1,Chance:0.3d}]
data modify storage tusb_mob: "遅延ステータス"."ステータス".AnalyseLog set value '[{"translate":"%1$s川や海の中をさまよう怨霊。敵を水の中へと引きずり込もうとする。","with":[{"translate":"【能力：ワープ・射的・追撃】","color":"#00FF00"}]}]'
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {Damage:[{Name:"function",Tags:[Skylands,Water,Shoot,Umimawari,Debuff]}],Attack:[{Condition:[{Name:"random_chance",Chance:0.5d}],Name:"function",Tags:[Skylands,Water,Shoot,Umimawari,Attack1]}]}
