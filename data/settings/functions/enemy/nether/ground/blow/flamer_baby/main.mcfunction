### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:zombie",Silent:1b,IsBaby:1b,CustomName:'{"translate":"ベビーフレイマーズ","color":"#FF0000","bold":true}',ActiveEffects:[{Id:12,Amplifier:0b,Duration:-1,ShowParticles:0b},{Id:14,Amplifier:127b,Duration:-1,ShowParticles:0b}],PortalCooldown:3000,Tags:[Mob,Enemy,DelayedData,HasAI,CallOnAttack,TickingRequired,HasLootTable]}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {ArmorItems:[{id:"minecraft:leather_boots",Count:1b,tag:{display:{color:13391872},Unbreakable:1b}},{id:"minecraft:leather_leggings",Count:1b,tag:{display:{color:13391872},Unbreakable:1b}},{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:13391872},Unbreakable:1b}},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Name:"ブレイズ",Id:[I;1,0,66,0],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYjIwNjU3ZTI0YjU2ZTFiMmY4ZmMyMTlkYTFkZTc4OGMwYzI0ZjM2Mzg4YjFhNDA5ZDBjZDJkOGRiYTQ0YWEzYiJ9fX0="}]}}}}],ArmorDropChances:[-1E40f,-1E40f,-1E40f,-1E40f],HandItems:[{id:"minecraft:golden_sword",Count:1b,tag:{Enchantments:[{id:"minecraft:fire_aspect",lvl:5s}]}},{}],HandDropChances:[-1E40f,-1E40f]}
data modify storage tusb_mob: "即時ステータス"."最大感知範囲" set value 32d
data modify storage tusb_mob: "即時ステータス"."基本移動力" set value 0.25d
data modify storage tusb_mob: "即時ステータス"."ノックバック耐性" set value 2d
data modify storage tusb_mob: "即時ステータス"."ノックバック力" set value 2d

### 遅延ステータス
# 属性値
data modify storage tusb_mob: "遅延ステータス"."ステータス"."炎属性値" set value -20
data modify storage tusb_mob: "遅延ステータス"."ステータス"."氷属性値" set value 125
data modify storage tusb_mob: "遅延ステータス"."ステータス"."雷属性値" set value 50
data modify storage tusb_mob: "遅延ステータス"."ステータス"."光属性値" set value 125
data modify storage tusb_mob: "遅延ステータス"."ステータス"."闇属性値" set value 50
# ステータス
data modify storage tusb_mob: "遅延ステータス"."ステータス"."最大HP" set value 160
data modify storage tusb_mob: "遅延ステータス"."ステータス"."最大MP" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理攻撃力" set value 130
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理防御力" set value 130
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法攻撃力" set value 130
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法防御力" set value 75
data modify storage tusb_mob: "遅延ステータス"."ステータス".LootTable set value [{Loot:"item:group/drop_item/tier2/common",Count:1,Chance:0.51d}]
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {Attack:[{Name:"Function",Tags:[Nether,Ground,Blow,FlamerBaby,Attack1]}],TurnCount:1,Turn:[{Index:1,Skill:[{Interval:{Min:200,Max:400,Current:300},Loop:{Max:1,Current:1},Call:[{Name:"Function",Tags:[Nether,Ground,Blow,FlamerBaby,Flame]}]}]}]}
