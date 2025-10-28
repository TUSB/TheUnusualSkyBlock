### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:zombie_villager",CustomName:'{"translate":"なんにでもマグマをかけるクラフター","color":"#FFFFFF"}',Silent:true,PortalCooldown:3000,VillagerData:{level:99,profession:"toolsmith",type:"taiga"},Tags:[Mob,Enemy,DelayedData,CallOnDamage,CallOnAttack,TickingRequired,HasLootTable,AnalyseLog]}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {HandItems:[{id:"minecraft:lava_bucket",count:1},{}],ArmorItems:[{},{},{},{id:"minecraft:player_head",count:1,components:{}}],HandDropChances:[-Infinityf,-Infinityf],ArmorDropChances:[-Infinityf,-Infinityf,-Infinityf,-Infinityf]}
data modify storage tusb_mob: "即時ステータス"."最大感知範囲" set value 32d
data modify storage tusb_mob: "即時ステータス"."基本移動力" set value 0.27d
data modify storage tusb_mob: "即時ステータス"."ノックバック耐性" set value 0.5d
data modify storage tusb_mob: "即時ステータス"."ノックバック力" set value 1d

### 遅延ステータス
# ステータス
data modify storage tusb_mob: "遅延ステータス"."ステータス"."最大HP" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."最大MP" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理攻撃力" set value 150
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理防御力" set value 50
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法攻撃力" set value 30
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法防御力" set value 30
data modify storage tusb_mob: "遅延ステータス"."ステータス"."理外攻撃力" set value 0
data modify storage tusb_mob: "遅延ステータス"."ステータス"."理外防御力" set value 0
data modify storage tusb_mob: "遅延ステータス"."ステータス".LootTable set value [{Loot:"item:group/drop_item/tier1/common",Count:1,Chance:0.3d}]
data modify storage tusb_mob: "遅延ステータス"."ステータス".AnalyseLog set value '[{"translate":"%1$sそぉぉぉぉい！","with":[{"translate":"【能力：追撃】","color":"#00FF00"}]}]'
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {Damage:[{Name:"function",Tags:[Global,Event,Function,DamageSound,Steve]}],Attack:[{Name:"merge_nbt",NBT:{HandItems:[{id:"minecraft:bucket",Count:1b},{}]}},{Condition:[{Name:"mp",MP:100,Percent:true}],Name:"function",Tags:[Skylands,Ground,Blow,CrafterWhoLavaOnEverything,LavaPlace]}]}
