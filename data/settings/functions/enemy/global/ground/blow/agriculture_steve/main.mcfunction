### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:zombie_villager",CustomName:'{"translate":"農業スティーブ","color":"#FFFFFF","bold":true}',PortalCooldown:3000,DeathLootTable:"empty",VillagerData:{level:99,profession:"farmer",type:"plains"},Tags:[Mob,Enemy,DelayedData,CallOnDamage,CallOnAttack,TickingRequired,HasLootTable,AnalyseLog]}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {HandItems:[{id:"minecraft:iron_hoe",Count:1},{}],ArmorItems:[{},{},{},{id:"minecraft:player_head",Count:1b}],HandDropChances:[-1E40f,-1E40f],ArmorDropChances:[-1E40f,-1E40f,-1E40f,-1E40f]}
data modify storage tusb_mob: "即時ステータス"."最大感知範囲" set value 32d
data modify storage tusb_mob: "即時ステータス"."基本移動力" set value 0.27d
data modify storage tusb_mob: "即時ステータス"."ノックバック耐性" set value 0.1d
data modify storage tusb_mob: "即時ステータス"."ノックバック力" set value 3d

### 遅延ステータス
# 属性値
data modify storage tusb_mob: "遅延ステータス"."ステータス"."炎属性値" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."氷属性値" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."雷属性値" set value 200
data modify storage tusb_mob: "遅延ステータス"."ステータス"."光属性値" set value -50
data modify storage tusb_mob: "遅延ステータス"."ステータス"."闇属性値" set value 200
# ステータス
data modify storage tusb_mob: "遅延ステータス"."ステータス"."最大HP" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."最大MP" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理攻撃力" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理防御力" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法攻撃力" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法防御力" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス".LootTable set value [{Loot:"item:group/drop_item/tier3/common",Count:1,Chance:0.25d}]
data modify storage tusb_mob: "遅延ステータス"."ステータス".AnalyseLog set value '[{"translate":"収穫の時間じゃあああ！！"}]'
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {Damage:[{Settings:[{Name:"Facing",Target:{Look:"Friendly",Radius:32d,IgnoreBlocks:true}}],Name:"Step",Speed:1.0d}],Attack:[{Name:"Damage",Player:{DamageType:[Global,Fall],DeathCause:'[{"translate":"%1$sは%2$sの鎌によって畑の肥料となった。","with":[{"selector":"@s"},{"storage":"mob_data:","nbt":"MobName","interpret":true}]}]'},Distance:{Max:3d},AEC:{Effects:[{Id:25b,Amplifier:30b,Duration:20,ShowParticles:false},{Id:2b,Amplifier:2b,Duration:200}]}}]}
