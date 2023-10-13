### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:zombie_villager",CustomName:'{"translate":"転移の魔術師","color":"#FF0000","bold":true}',PortalCooldown:3000,Tags:[Mob,Enemy,DelayedData,HasAI,CallOnAttack,TickingRequired,HasLootTable,AnalyseLog]}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {ArmorItems:[{},{},{},{id:"minecraft:warped_fungus_on_a_stick",Count:1b,tag:{CustomModelData:1}}],VillagerData:{profession:"minecraft:cleric",type:"minecraft:snow"}}
data modify storage tusb_mob: "即時ステータス"."最大感知範囲" set value 24d
data modify storage tusb_mob: "即時ステータス"."基本移動力" set value 0.12d
data modify storage tusb_mob: "即時ステータス"."ノックバック耐性" set value 0d
data modify storage tusb_mob: "即時ステータス"."ノックバック力" set value 0d

### 遅延ステータス
# 属性値
data modify storage tusb_mob: "遅延ステータス"."ステータス"."炎属性値" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."氷属性値" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."雷属性値" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."光属性値" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."闇属性値" set value 100
# ステータス
data modify storage tusb_mob: "遅延ステータス"."ステータス"."最大HP" set value 60
data modify storage tusb_mob: "遅延ステータス"."ステータス"."最大MP" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理攻撃力" set value 15
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理防御力" set value 40
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法攻撃力" set value 75
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法防御力" set value 120
data modify storage tusb_mob: "遅延ステータス"."ステータス".LootTable set value [{Loot:"item:group/drop_item/tier1/common",Count:1,Chance:0.25d}]
data modify storage tusb_mob: "遅延ステータス"."ステータス".AnalyseLog set value '[{"translate":"得意のテレポート魔術で生贄の儀式の贄を探そうとしている。"}]'
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {Attack:[{Position:"Source",Settings:[{Name:"As",Target:{Look:"Friendly",Radius:32,IgnoreBlocks:true}}],Name:"Teleport"}],TurnCount:1,Turn:[{Index:1,Skill:[{Interval:{Min:120,Max:240,Current:100},Call:[{Settings:[{Name:"Anchor",Anchor:"Eyes"},{Name:"Facing",Target:{Look:"Player",Radius:18,IgnoreBlocks:true}}],Name:"Spawn",SpawnEntities:[[{Tags:[Global,Ground,Shoot,WizardOfTeleportation,TeleportBullet],Level:1}]]}],MP:5}]}]}
