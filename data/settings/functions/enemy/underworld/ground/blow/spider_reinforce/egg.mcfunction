### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:zombie",Tags:[Mob,Enemy,DelayedData,CallOnTimeOut,TickingRequired,AnalyseLog,"HideLevel"],CustomName:'{"translate":"Grumm","color":"#000000"}',Silent:1b,active_effects:[{id:"minecraft:invisibility",amplifier:0,duration:-1,show_particles:0b},{id:"minecraft:weakness",amplifier:4,duration:-1,show_particles:0b}],PortalCooldown:600,DeathLootTable:"empty"}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {ArmorItems:[{},{},{},{id:"minecraft:end_stone",Count:1b}]}
data modify storage tusb_mob: "即時ステータス"."最大感知範囲" set value 30d
data modify storage tusb_mob: "即時ステータス"."基本移動力" set value 0d
data modify storage tusb_mob: "即時ステータス"."ノックバック耐性" set value 100d
data modify storage tusb_mob: "即時ステータス"."ノックバック力" set value 1d

### 遅延ステータス
# 属性値
data modify storage tusb_mob: "遅延ステータス"."ステータス"."炎属性値" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."氷属性値" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."雷属性値" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."光属性値" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."闇属性値" set value 100
# ステータス
data modify storage tusb_mob: "遅延ステータス"."ステータス"."最大HP" set value 120
data modify storage tusb_mob: "遅延ステータス"."ステータス"."最大MP" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理攻撃力" set value -100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理防御力" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法攻撃力" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法防御力" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス".AnalyseLog set value '[{"translate":"%1$s放置しておくと蜘蛛が増殖してしまうだろう。","with":[{"translate":"【能力：時間・置換】","color":"#00FF00"}]}]'
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {Time:[{Condition:[{Name:"RandomChance",Chance:0.65d}],Name:"Spawn",SpawnEntities:[[{Tags:[Underworld,Ground,Blow,SpiderReinforce,Main],Level:1}]]}]}
#Function
particle minecraft:block end_stone ~ ~0.5 ~ 0.3 0 0.3 0 1 force @a[distance=..64]
particle minecraft:dust 1 0 0 1 ~ ~4 ~ 0.2 0.1 0.2 20 10 force @a[distance=..64]
playsound entity.spider.death hostile @a[distance=..10] ~ ~ ~ 1.0 1.5 0
