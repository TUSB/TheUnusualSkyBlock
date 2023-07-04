### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:zombie",CustomName:'{"translate":"ギーガ","color":"#FF0000"}',ActiveEffects:[{Id:12,Amplifier:0b,Duration:-1,ShowParticles:0b}],Tags:[Mob,Enemy,DelayedData,TickingRequired,"Ryomen"],PortalCooldown:3000}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {ArmorItems:[{id:"minecraft:leather_boots",Count:1b,tag:{display:{color:941579},Unbreakable:1b}},{id:"minecraft:leather_leggings",Count:1b,tag:{display:{color:941579},Unbreakable:1b}},{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:941579},Unbreakable:1b}},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Name:"ギーガ",Id:[I;1,0,25,0],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNGEzNmYxOWMzMDVjY2RiMzZlNDdiMmRhZGNmNTllNmFkOGRkOTNjZGY0NzQ4Nzc1ZDVhNmVjNDFlZDk3ZiJ9fX0="}]}}}}],HandDropChances:[-1E40f,-1E40f],ArmorDropChances:[-1E40f,-1E40f,-1E40f,-1E40f]}
data modify storage tusb_mob: "即時ステータス"."最大感知範囲" set value 48d
data modify storage tusb_mob: "即時ステータス"."基本移動力" set value 0.2d
data modify storage tusb_mob: "即時ステータス"."ノックバック耐性" set value 4d
data modify storage tusb_mob: "即時ステータス"."ノックバック力" set value 3d

### 遅延ステータス
# 属性値
data modify storage tusb_mob: "遅延ステータス"."ステータス"."炎属性値" set value 125
data modify storage tusb_mob: "遅延ステータス"."ステータス"."氷属性値" set value 25
data modify storage tusb_mob: "遅延ステータス"."ステータス"."雷属性値" set value 25
data modify storage tusb_mob: "遅延ステータス"."ステータス"."光属性値" set value 125
data modify storage tusb_mob: "遅延ステータス"."ステータス"."闇属性値" set value 25
# ステータス
data modify storage tusb_mob: "遅延ステータス"."ステータス"."最大HP" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."最大MP" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理攻撃力" set value 150
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理防御力" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法攻撃力" set value 60
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法防御力" set value 60