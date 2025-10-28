### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:silverfish",CustomName:'{"translate":"シルバーボマー","color":"#FF0000","bold":true}',PortalCooldown:3000,Tags:[Mob,Enemy,DelayedData,HasAI,CallOnAttack,CallOnTick,TickingRequired,AnalyseLog]}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {ArmorItems:[{},{},{},{id:"minecraft:leather_helmet",count:1,components:{"minecraft:unbreakable":{},"minecraft:enchantments":{levels:{"minecraft:blast_protection":20}}}}],ArmorDropChances:[-Infinityf,-Infinityf,-Infinityf,-Infinityf]}
data modify storage tusb_mob: "即時ステータス"."最大感知範囲" set value 32d
data modify storage tusb_mob: "即時ステータス"."基本移動力" set value 0.25d
data modify storage tusb_mob: "即時ステータス"."ノックバック耐性" set value 0d
data modify storage tusb_mob: "即時ステータス"."ノックバック力" set value 0d

### 遅延ステータス
# ステータス
data modify storage tusb_mob: "遅延ステータス"."ステータス"."最大HP" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."最大MP" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理攻撃力" set value 110
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理防御力" set value 110
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法攻撃力" set value 110
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法防御力" set value 110
data modify storage tusb_mob: "遅延ステータス"."ステータス"."理外攻撃力" set value 0
data modify storage tusb_mob: "遅延ステータス"."ステータス"."理外防御力" set value 0
data modify storage tusb_mob: "遅延ステータス"."ステータス".AnalyseLog set value '[{"translate":"%1$sお前らなんか爆発でふっとばしてやんぜ！","with":[{"translate":"【能力：爆撃】","color":"#00FF00"}]}]'
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {Attack:[{Name:"function",Tags:[Skylands,Ground,Blow,SilverBomber,Attack]}],Tick:[{Name:"function",Tags:[Skylands,Ground,Blow,SilverBomber,Particle]}]}
