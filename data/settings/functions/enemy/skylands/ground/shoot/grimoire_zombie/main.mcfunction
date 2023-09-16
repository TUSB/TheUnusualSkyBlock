### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:zombie_villager",CustomName:'{"translate":"魔導書を静かに読みたい者","color":"#FFFFFF","bold":true}',PortalCooldown:3000,Tags:[Mob,Enemy,DelayedData,CallOnDamage,TickingRequired]}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {HandItems:[{id:"minecraft:enchanted_book",Count:1b},{}],ArmorItems:[{id:"minecraft:leather_boots",Count:1b,tag:{display:{color:6039480},Unbreakable:1b}},{},{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:6039480},Unbreakable:1b}},{id:"minecraft:chiseled_bookshelf",Count:1b}],HandDropChances:[-1E40f,-1E40f],ArmorDropChances:[-1E40f,-1E40f,-1E40f,-1E40f]}
data modify storage tusb_mob: "即時ステータス"."最大感知範囲" set value 0d
data modify storage tusb_mob: "即時ステータス"."基本移動力" set value 0.4d
data modify storage tusb_mob: "即時ステータス"."ノックバック耐性" set value 0d
data modify storage tusb_mob: "即時ステータス"."ノックバック力" set value 4d

### 遅延ステータス
# 属性値
data modify storage tusb_mob: "遅延ステータス"."ステータス"."炎属性値" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."氷属性値" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."雷属性値" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."光属性値" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."闇属性値" set value 100
# ステータス
data modify storage tusb_mob: "遅延ステータス"."ステータス"."最大HP" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."最大MP" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理攻撃力" set value 125
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理防御力" set value 75
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法攻撃力" set value 125
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法防御力" set value 125
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {Damage:[{Name:"Function",Tags:[Skylands,Ground,Shoot,GrimoireZombie,Anger]}]}
