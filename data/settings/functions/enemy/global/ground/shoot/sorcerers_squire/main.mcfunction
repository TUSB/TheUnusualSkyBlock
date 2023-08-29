### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:drowned",CustomName:'{"translate":"魔術師の従者","color":"#FFFFFF"}',Silent:true,ActiveEffects:[{Id:14,Amplifier:127b,Duration:-1}],PortalCooldown:3000,DeathLootTable:"empty",Tags:[Mob,Enemy,DelayedData,TickingRequired,HasLootTable]}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {HandItems:[{tag:{Unbreakable:true,Enchantments:[{id:"minecraft:sharpness",lvl:10},{id:"minecraft:knockback",lvl:5},{id:"minecraft:fire_aspect",lvl:5},{id:"minecraft:sweeping",lvl:3},{id:"minecraft:power",lvl:15},{id:"minecraft:punch",lvl:3},{id:"minecraft:flame",lvl:5},{id:"minecraft:loyalty",lvl:3},{id:"minecraft:impaling",lvl:3},{id:"minecraft:riptide",lvl:3},{id:"minecraft:channeling",lvl:3}]},id:"minecraft:trident",Count:1b},{}],ArmorItems:[{tag:{Unbreakable:true},id:"minecraft:golden_boots",Count:1b},{tag:{Unbreakable:true},id:"minecraft:golden_leggings",Count:1b},{tag:{Unbreakable:true},id:"minecraft:golden_chestplate",Count:1b},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Name:"魔術師の従者",Id:[I;1,0,39,0],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZWRmN2I1ODZhZmMzM2NkNjRlZTZmMzdmNzJjMzU0YmE4MjExMWQxYzYzMWM3MGJiMGU4YWVlMjE4NmFlMjczMyJ9fX0="}]}}}}],ArmorDropChances:[-1E40f,-1E40f,-1E40f,-1E40f],HandDropChances:[-1E40f,-1E40f]}
data modify storage tusb_mob: "即時ステータス"."最大感知範囲" set value 32d
data modify storage tusb_mob: "即時ステータス"."基本移動力" set value 0.25d
data modify storage tusb_mob: "即時ステータス"."ノックバック耐性" set value 0d
data modify storage tusb_mob: "即時ステータス"."ノックバック力" set value 1d

### 遅延ステータス
# 属性値
data modify storage tusb_mob: "遅延ステータス"."ステータス"."炎属性値" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."氷属性値" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."雷属性値" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."光属性値" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."闇属性値" set value 100
# ステータス
data modify storage tusb_mob: "遅延ステータス"."ステータス"."最大HP" set value 50
data modify storage tusb_mob: "遅延ステータス"."ステータス"."最大MP" set value 150
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理攻撃力" set value 120
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理防御力" set value 20
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法攻撃力" set value 150
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法防御力" set value 20
data modify storage tusb_mob: "遅延ステータス"."ステータス".LootTable set value [{Loot:"item:group/drop_item/tier1/common",Count:1,Chance:0.31d}]
