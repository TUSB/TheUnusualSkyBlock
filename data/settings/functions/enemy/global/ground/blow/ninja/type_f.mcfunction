### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:skeleton",Tags:[Mob,HasAI],CustomName:'{"translate":"カトン・ニンジャ","color":"#FFFFFF"}',ActiveEffects:[{Id:8b,Amplifier:2b,Duration:2147483647,ShowParticles:0b}]}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {HandDropChances:[-1E40f,-1E40f],ArmorDropChances:[-1E40f,-1E40f,-1E40f,-1E40f],HandItems:[{id:"minecraft:iron_sword",Count:1b,tag:{Unbreakable:true,Enchantments:[{id:"minecraft:fire_aspect",lvl:7s},{id:"minecraft:knockback",lvl:1s}]}},{}],ArmorItems:[{id:"minecraft:leather_boots",Count:1b,tag:{Unbreakable:true,display:{color:0}}},{id:"minecraft:leather_leggings",Count:1b,tag:{Unbreakable:true,display:{color:0}}},{id:"minecraft:leather_chestplate",Count:1b,tag:{Unbreakable:true,display:{color:0}}},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Name:"ニンジャ",Id:[I;1,0,20,0],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNDBiZmNkZjNjYjcxNzQyNTNkMzdlOGQzNDVhODU4MmY1Zjc0ZDdmNTljN2M3OTU3YjcwYzJhYmM3NzQ1Y2E3In19fQ=="}]}}}}]}
data modify storage tusb_mob: "即時ステータス"."最大感知範囲" set value 32d
data modify storage tusb_mob: "即時ステータス"."基本移動力" set value 0.23d
data modify storage tusb_mob: "即時ステータス"."ノックバック耐性" set value 1d
data modify storage tusb_mob: "即時ステータス"."ノックバック力" set value 1d

### 遅延ステータス
# 属性値
data modify storage tusb_mob: "遅延ステータス"."炎属性値" set value 100
data modify storage tusb_mob: "遅延ステータス"."氷属性値" set value 100
data modify storage tusb_mob: "遅延ステータス"."雷属性値" set value 100
data modify storage tusb_mob: "遅延ステータス"."光属性値" set value 100
data modify storage tusb_mob: "遅延ステータス"."闇属性値" set value 100
# ステータス
data modify storage tusb_mob: "遅延ステータス"."最大HP" set value 1
data modify storage tusb_mob: "遅延ステータス"."最大MP" set value 1
data modify storage tusb_mob: "遅延ステータス"."物理攻撃力" set value 1
data modify storage tusb_mob: "遅延ステータス"."物理防御力" set value 1
data modify storage tusb_mob: "遅延ステータス"."魔法攻撃力" set value 1
data modify storage tusb_mob: "遅延ステータス"."魔法防御力" set value 1
