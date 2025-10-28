### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:skeleton",CustomName:'{"translate":"採掘戦隊マインクラフターイエロー","color":"#FF0000","bold":true}',active_effects:[{id:"minecraft:invisibility",amplifier:127b,duration:-1,show_particles:false}],PortalCooldown:3000,DeathLootTable:"empty",Tags:[Mob,Enemy,DelayedData,CallOnAttack,TickingRequired,HasLootTable,AnalyseLog]}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {ArmorDropChances:[-Infinityf,-Infinityf,-Infinityf,-Infinityf],HandDropChances:[-Infinityf,-Infinityf],HandItems:[{id:"minecraft:bow",count:1},{id:"tipped_arrow",count:1,components:{"minecraft:potion_contents":{custom_color:16776960}}}],ArmorItems:[{id:"minecraft:leather_boots",count:1,components:{"minecraft:dyed_color":16776960}},{id:"minecraft:leather_leggings",count:1,components:{"minecraft:dyed_color":16776960}},{id:"minecraft:leather_chestplate",count:1,components:{"minecraft:dyed_color":16776960}},{id:"minecraft:leather_helmet",count:1,components:{"minecraft:dyed_color":16776960}}]}
data modify storage tusb_mob: "即時ステータス"."最大感知範囲" set value 32d
data modify storage tusb_mob: "即時ステータス"."基本移動力" set value 0.3d
data modify storage tusb_mob: "即時ステータス"."ノックバック耐性" set value 0d
data modify storage tusb_mob: "即時ステータス"."ノックバック力" set value 1d

### 遅延ステータス
# ステータス
data modify storage tusb_mob: "遅延ステータス"."ステータス"."最大HP" set value 219
data modify storage tusb_mob: "遅延ステータス"."ステータス"."最大MP" set value 50
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理攻撃力" set value 50
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理防御力" set value 20
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法攻撃力" set value 80
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法防御力" set value 20
data modify storage tusb_mob: "遅延ステータス"."ステータス"."理外攻撃力" set value 0
data modify storage tusb_mob: "遅延ステータス"."ステータス"."理外防御力" set value 0
data modify storage tusb_mob: "遅延ステータス"."ステータス".LootTable set value [{Loot:"item:group/drop_item/tier3/common",Count:1,Chance:0.3d}]
data modify storage tusb_mob: "遅延ステータス"."ステータス".AnalyseLog set value '[{"translate":"%1$sなんで採掘戦隊なのにつるはしの１つも持ってないんだ？ お前もそう思うだろ？","with":[{"translate":"【能力：追撃・置換・麻痺】","color":"#00FF00"}]}]'
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {Attack:[{Condition:[{Name:"mp",MP:25,Percent:true}]},{Condition:[{Name:"random_chance",Chance:0.25d}],Name:"damage",Player:{DamageType:[Global,Fire,Blast,Projectile,Fall]},Distance:{Max:1d},AEC:{Particle:{type:"dust",color:[1.000,1.000,0.000],scale:3},Color:16776960,Duration:40,Radius:1f,potion_contents:{custom_effects:[{id:"minecraft:invisibility",amplifier:5b,duration:10}]}}},{Condition:[{Name:"min_mp",MP:30,Percent:true,Inverse:true}],Name:"function",Tags:[Global,Ground,Shoot,MineCrafter,Change]},{Condition:[{Name:"min_mp",MP:30,Percent:true,Inverse:true}],Name:"kill"}]}
