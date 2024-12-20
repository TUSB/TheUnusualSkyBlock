### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:wither_skeleton",CustomName:'{"translate":"黒怨之徘徊者","color":"#FFFFFF","bold":true}',active_effects:[{id:"minecraft:fire_resistance",amplifier:1b,duration:-1,show_particles:0b}],PortalCooldown:3000,DeathLootTable:"empty",Tags:[Mob,Enemy,DelayedData,HasAI,CallOnAttack,TickingRequired,HasLootTable,AnalyseLog]}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {HandItems:[{id:"minecraft:netherite_sword",Count:1b,tag:{Unbreakable:1b}},{}],ArmorItems:[{id:"minecraft:leather_boots",Count:1b,tag:{display:{color:0}}},{id:"minecraft:leather_leggings",Count:1b,tag:{display:{color:0},Unbreakable:1b}},{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:0},Unbreakable:1b}},{id:"minecraft:leather_helmet",Count:1b,tag:{display:{color:0},Unbreakable:1b}}],ArmorDropChances:[-1E40f,-1E40f,-1E40f,-1E40f],HandDropChances:[-1E40f,-1E40f]}
data modify storage tusb_mob: "即時ステータス"."最大感知範囲" set value 32d
data modify storage tusb_mob: "即時ステータス"."基本移動力" set value 0.25d
data modify storage tusb_mob: "即時ステータス"."ノックバック耐性" set value 1d
data modify storage tusb_mob: "即時ステータス"."ノックバック力" set value 3d

### 遅延ステータス
# 属性値
data modify storage tusb_mob: "遅延ステータス"."ステータス"."炎属性値" set value 75
data modify storage tusb_mob: "遅延ステータス"."ステータス"."氷属性値" set value 75
data modify storage tusb_mob: "遅延ステータス"."ステータス"."雷属性値" set value 75
data modify storage tusb_mob: "遅延ステータス"."ステータス"."光属性値" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."闇属性値" set value 50
# ステータス
data modify storage tusb_mob: "遅延ステータス"."ステータス"."最大HP" set value 120
data modify storage tusb_mob: "遅延ステータス"."ステータス"."最大MP" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理攻撃力" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理防御力" set value 75
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法攻撃力" set value 80
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法防御力" set value 150
data modify storage tusb_mob: "遅延ステータス"."ステータス".LootTable set value [{Loot:"item:group/drop_item/tier2/common",Count:1,Chance:0.3d}]
data modify storage tusb_mob: "遅延ステータス"."ステータス".AnalyseLog set value '[{"translate":"%1$s非常に強力な怨念を纏った不死者。自身に受けた呪いを他の者にも与えようとする。","with":[{"translate":"【能力：追撃】","color":"#00FF00"}]}]'
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {Attack:[{Condition:[{Name:"RandomChance",Chance:0.2d}],Name:"Function",Tags:[Skylands,Ground,Blow,BlackGrudge,Debuff1]}],TurnCount:1,Turn:[{Index:1,Skill:[{Interval:{Min:60,Max:100,Current:80},Loop:{Max:1,Current:1},Call:[{Name:"Function",Tags:[Skylands,Ground,Blow,BlackGrudge,Scream]},{Condition:[{Name:"HasTarget",Target:{Look:"Player",Radius:3d,IgnoreBlocks:true}},{Name:"RandomChance",Chance:0.25d}],Name:"Function",Tags:[Skylands,Ground,Blow,BlackGrudge,Debuff2]},{Name:"Damage",Player:{Effectiveness:100,DeathCause:'[{"translate":"%1$sは%2$sの叫び声に震え上がり、心肺停止してしまった。","with":[{"selector":"@s"},{"storage":"mob_data:","nbt":"MobName","interpret":true}]}]'},Distance:{Max:3.5d}}]}]}]}
