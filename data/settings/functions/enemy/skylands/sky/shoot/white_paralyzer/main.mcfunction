### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:skeleton",CustomName:'{"translate":"ホワイトパラライザー","color":"#FF0000","bold":true}',ActiveEffects:[{Id:12,Amplifier:1b,Duration:-1,ShowParticles:0b}],PortalCooldown:3000,Tags:[Mob,Enemy,DelayedData,CallOnAttack,TickingRequired]}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {HandItems:[{id:"minecraft:bow",Count:1b,tag:{Unbreakable:1b,CustomModelData:12,Enchantments:[{id:"minecraft:punch",lvl:2s}]}},{}],ArmorItems:[{},{},{},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Name:"ﾎﾜｲﾄｼｭｰﾀｰ",Id: [I;1,0,21,0],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvM2JkMmUxOTllMjc5ZWRjNDgxMThjMTg1OTdhYjgwMWNhMmJhMmY3OGM5NzExNTVkNGQ2MGYxZmI0MGRlNjY0OSJ9fX0="}]}}}}],HandDropChances:[-1E40f,-1E40f],ArmorDropChances:[-1E40f,-1E40f,-1E40f,-1E40f]}
data modify storage tusb_mob: "即時ステータス"."最大感知範囲" set value 64d
data modify storage tusb_mob: "即時ステータス"."基本移動力" set value 0.25d
data modify storage tusb_mob: "即時ステータス"."ノックバック耐性" set value 4d
data modify storage tusb_mob: "即時ステータス"."ノックバック力" set value 0d

### 遅延ステータス
# 属性値
data modify storage tusb_mob: "遅延ステータス"."ステータス"."炎属性値" set value 70
data modify storage tusb_mob: "遅延ステータス"."ステータス"."氷属性値" set value 70
data modify storage tusb_mob: "遅延ステータス"."ステータス"."雷属性値" set value 30
data modify storage tusb_mob: "遅延ステータス"."ステータス"."光属性値" set value 30
data modify storage tusb_mob: "遅延ステータス"."ステータス"."闇属性値" set value 70
# ステータス
data modify storage tusb_mob: "遅延ステータス"."ステータス"."最大HP" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."最大MP" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理攻撃力" set value 80
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理防御力" set value 80
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法攻撃力" set value 80
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法防御力" set value 110
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {Attack:[{Name:"Function",Tags:[Skylands,Sky,Shoot,WhiteParalyzer,Debuff1]}]}
