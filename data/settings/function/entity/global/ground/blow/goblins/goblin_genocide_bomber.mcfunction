### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:zombie",Tags:[Mob,Enemy,DelayedData,HasAI,CallOnDeath,CallOnInit,CallOnTimeOut,CallOnAttack,TickingRequired,HasLootTable,AnalyseLog,"Unmoved"],CustomName:'{"translate":"ゴブリンジェノサイドボマー","color":"#FF009A"}',IsBaby:true,PortalCooldown:3000}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {HandDropChances:[-Infinityf,-Infinityf],ArmorDropChances:[-Infinityf,-Infinityf,-Infinityf,-Infinityf],HandItems:[{id:"minecraft:player_head",count:1,components:{"minecraft:profile":{id:[I;1,0,59,1],properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvY2EzOWRjZDNmOTQ5MDU5M2E3OWUyNmM1YzlkYmU4ODY4OTVhNDcwYjgxOGRiZDU1OWE3YmIzZDc0MmUyMWExYiJ9fX0="}]}}},{}],ArmorItems:[{id:"minecraft:leather_boots",count:1,components:{"minecraft:unbreakable":{},"minecraft:dyed_color":1328404}},{id:"minecraft:leather_leggings",count:1,components:{"minecraft:unbreakable":{},"minecraft:dyed_color":197957}},{id:"minecraft:leather_chestplate",count:1,components:{"minecraft:unbreakable":{},"minecraft:dyed_color":1328404}},{id:"minecraft:player_head",count:1,components:{"minecraft:profile":{id:[I;1,0,40,0],properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYjNhMmNkMTEzYzdlZTZiZjliMDk2OGNmNTUwMTc1M2E0ODU1MmU2ZGJiNDgxYzVhMWY5NDg3Njg3MDg5NmIyZSJ9fX0="}]}}}]}
data modify storage tusb_mob: "即時ステータス"."最大感知範囲" set value 32d
data modify storage tusb_mob: "即時ステータス"."基本移動力" set value 0.15d
data modify storage tusb_mob: "即時ステータス"."ノックバック耐性" set value 0d
data modify storage tusb_mob: "即時ステータス"."ノックバック力" set value 2d

### 遅延ステータス
# ステータス
data modify storage tusb_mob: "遅延ステータス"."ステータス"."最大HP" set value 25
data modify storage tusb_mob: "遅延ステータス"."ステータス"."最大MP" set value 50
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理攻撃力" set value 5
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理防御力" set value 20
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法攻撃力" set value 30
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法防御力" set value 30
data modify storage tusb_mob: "遅延ステータス"."ステータス"."理外攻撃力" set value 0
data modify storage tusb_mob: "遅延ステータス"."ステータス"."理外防御力" set value 0
data modify storage tusb_mob: "遅延ステータス"."ステータス".LootTable set value [{Loot:"item:group/drop_item/tier4/common",Count:1,Chance:0.3d}]
data modify storage tusb_mob: "遅延ステータス"."ステータス".AnalyseLog set value '[{"translate":"%1$sキレイナ、モン、ヒロッタ！ ウレシイ！","with":[{"translate":"【能力：自爆・移動・時間・コール・引寄無効】","color":"#00FF00"}]}]'
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {Initial:[{Settings:[{Name:"Facing",Target:{Look:"Player",Radius:24d,IgnoreBlocks:true}}],Name:"step",Direction:[-180f,-180f],DirectionRange:[360f,360f],Speed:1.2d}],Death:[{Name:"spawn",SpawnEntities:[[{Tags:[Global,Neutrality,Summon,GenocideBomb,Countdown],Level:100}]]}],Time:[{Name:"spawn",Count:1,CountRange:8,SpawnEntities:[[{Tags:[Global,Ground,Blow,Goblins,GoblinGenocideBomber],Level:100}]],Condition:[{Name:"random_chance",Chance:0.40d},{Name:"has_target",Target:{Look:"Player",Radius:16}}]}],Attack:[{Name:"spawn",SpawnEntities:[[{Tags:[Global,Neutrality,Summon,GenocideBomb,Countdown],Level:100}]]},{Name:"kill"}],TurnCount:1,Turn:[{Index:1,Skill:[{Interval:{Min:40,Max:100,Current:120},Call:[{Name:"step",Direction:[0f,-13f],Speed:0.7d,SpeedRange:1.3d,Settings:[{Name:"Facing",Target:{Look:"Player",Radius:8d}}]}],MP:5}]}]}
