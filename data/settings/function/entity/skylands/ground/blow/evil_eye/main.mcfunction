### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:wither_skeleton",CustomName:'{"translate":"邪視","color":"#FF0000","bold":true}',active_effects:[{id:"minecraft:fire_resistance",amplifier:1b,duration:-1,show_particles:0b}],Silent:1b,PortalCooldown:3000,Tags:[Mob,Enemy,DelayedData,CallOnDamage,TickingRequired,AnalyseLog]}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {HandItems:[{id:"minecraft:diamond_sword",count:1,components:{"minecraft:unbreakable":{},"minecraft:custom_model_data":3}},{}],ArmorItems:[{id:"minecraft:leather_boots",count:1,components:{"minecraft:dyed_color":2359296}},{id:"minecraft:leather_leggings",count:1,components:{"minecraft:dyed_color":2359296,"minecraft:unbreakable":{}}},{id:"minecraft:netherite_chestplate",count:1,components:{"minecraft:unbreakable":{}}},{id:"minecraft:player_head",count:1,components:{"minecraft:profile":{id:[I;1,0,68,0],properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZjc1ZjRjMzA2MjkxZDYxYzhiNjZhYjM3OGZhODgxYjQxODAxMjYyODU4OGJiNDQwN2RkMGJmNDZiZjkxY2Q4YyJ9fX0="}]}}}],HandDropChances:[-Infinityf,-Infinityf],ArmorDropChances:[-Infinityf,-Infinityf,-Infinityf,-Infinityf]}
data modify storage tusb_mob: "即時ステータス"."最大感知範囲" set value 12d
data modify storage tusb_mob: "即時ステータス"."基本移動力" set value 0.15d
data modify storage tusb_mob: "即時ステータス"."ノックバック耐性" set value 4d
data modify storage tusb_mob: "即時ステータス"."ノックバック力" set value 0d

### 遅延ステータス
# ステータス
data modify storage tusb_mob: "遅延ステータス"."ステータス"."最大HP" set value 80
data modify storage tusb_mob: "遅延ステータス"."ステータス"."最大MP" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理攻撃力" set value 120
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理防御力" set value 75
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法攻撃力" set value 120
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法防御力" set value 200
data modify storage tusb_mob: "遅延ステータス"."ステータス"."理外攻撃力" set value 0
data modify storage tusb_mob: "遅延ステータス"."ステータス"."理外防御力" set value 0
data modify storage tusb_mob: "遅延ステータス"."ステータス".AnalyseLog set value '[{"translate":"%1$s奴に……見られてはならない。見られたら、君も……。","with":[{"translate":"【能力：凝視】","color":"#00FF00"}]}]'
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {Damage:[{Name:"Function",Tags:[Skylands,Ground,Blow,EvilEye,Damage]}]}
