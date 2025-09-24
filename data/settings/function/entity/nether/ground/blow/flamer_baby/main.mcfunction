### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:zombie",Silent:1b,IsBaby:1b,CustomName:'{"translate":"ベビーフレイマーズ","color":"#FF0000","bold":true}',active_effects:[{id:"minecraft:fire_resistance",amplifier:0b,duration:-1,show_particles:0b},{id:"minecraft:invisibility",amplifier:127b,duration:-1,show_particles:0b}],PortalCooldown:3000,Tags:[Mob,Enemy,DelayedData,HasAI,CallOnAttack,TickingRequired,HasLootTable,AnalyseLog]}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {ArmorItems:[{id:"minecraft:leather_boots",count:1,components:{"minecraft:dyed_color":13391872,"minecraft:unbreakable":{}}},{id:"minecraft:leather_leggings",count:1,components:{"minecraft:dyed_color":13391872,"minecraft:unbreakable":{}}},{id:"minecraft:leather_chestplate",count:1,components:{"minecraft:dyed_color":13391872,"minecraft:unbreakable":{}}},{id:"minecraft:player_head",count:1,components:{"minecraft:profile":{id:[I;1,0,66,0],properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYjIwNjU3ZTI0YjU2ZTFiMmY4ZmMyMTlkYTFkZTc4OGMwYzI0ZjM2Mzg4YjFhNDA5ZDBjZDJkOGRiYTQ0YWEzYiJ9fX0="}]}}}],ArmorDropChances:[-Infinityf,-Infinityf,-Infinityf,-Infinityf],HandItems:[{id:"minecraft:golden_sword",count:1,components:{"minecraft:enchantments":{levels:{"minecraft:fire_aspect":5}}}},{}],HandDropChances:[-Infinityf,-Infinityf]}
data modify storage tusb_mob: "即時ステータス"."最大感知範囲" set value 32d
data modify storage tusb_mob: "即時ステータス"."基本移動力" set value 0.25d
data modify storage tusb_mob: "即時ステータス"."ノックバック耐性" set value 2d
data modify storage tusb_mob: "即時ステータス"."ノックバック力" set value 2d

### 遅延ステータス
# ステータス
data modify storage tusb_mob: "遅延ステータス"."ステータス"."最大HP" set value 160
data modify storage tusb_mob: "遅延ステータス"."ステータス"."最大MP" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理攻撃力" set value 130
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理防御力" set value 130
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法攻撃力" set value 130
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法防御力" set value 75
data modify storage tusb_mob: "遅延ステータス"."ステータス"."理外攻撃力" set value 0
data modify storage tusb_mob: "遅延ステータス"."ステータス"."理外防御力" set value 0
data modify storage tusb_mob: "遅延ステータス"."ステータス".LootTable set value [{Loot:"item:group/drop_item/tier1/common",Count:1,Chance:0.3d}]
data modify storage tusb_mob: "遅延ステータス"."ステータス".AnalyseLog set value '[{"translate":"%1$s歩いた場所を燃やしてしまう、恐るべき一族の子供。","with":[{"translate":"【能力：発火】","color":"#00FF00"}]}]'
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {Attack:[{Name:"function",Tags:[Nether,Ground,Blow,FlamerBaby,Attack1]}],TurnCount:1,Turn:[{Index:1,Skill:[{Interval:{Min:200,Max:400,Current:300},Loop:{Max:1,Current:1},Call:[{Name:"function",Tags:[Nether,Ground,Blow,FlamerBaby,Flame]}]}]}]}
