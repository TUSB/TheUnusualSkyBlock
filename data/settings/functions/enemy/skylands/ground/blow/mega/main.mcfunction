### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:zombie",CustomName:'{"translate":"メーガ","color":"#FFFFFF"}',ActiveEffects:[{Id:12,Amplifier:0b,Duration:-1,ShowParticles:0b}],Tags:[Mob,Enemy,DelayedData,HasAI,CallOnDamage,CallOnAttack,CallOnTick,TickingRequired,HasLootTable,AnalyseLog,"Ryomen"],PortalCooldown:3000}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {ArmorItems:[{id:"minecraft:leather_boots",Count:1b,tag:{display:{color:4473924},Unbreakable:1b}},{id:"minecraft:leather_leggings",Count:1b,tag:{display:{color:4473924},Unbreakable:1b}},{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:4473924},Unbreakable:1b}},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Name:"メーガ",Id:[I;1,0,26,0],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMmFlZjIzM2NkNmZkOTE4NzhkNTEzNzY2ZWRjMjNkZjMwODI3OGMwY2U4MDU5NzZlOTY5YzM5NDUxNjRkNmM4In19fQ=="}]}}}}],HandDropChances:[-1E40f,-1E40f],ArmorDropChances:[-1E40f,-1E40f,-1E40f,-1E40f]}
data modify storage tusb_mob: "即時ステータス"."最大感知範囲" set value 48d
data modify storage tusb_mob: "即時ステータス"."基本移動力" set value 0.2d
data modify storage tusb_mob: "即時ステータス"."ノックバック耐性" set value 4d
data modify storage tusb_mob: "即時ステータス"."ノックバック力" set value 0d

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
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理攻撃力" set value 125
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理防御力" set value 150
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法攻撃力" set value 60
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法防御力" set value 90
data modify storage tusb_mob: "遅延ステータス"."ステータス".LootTable set value [{Loot:"item:group/drop_item/tier2/common",Count:1,Chance:0.3d}]
data modify storage tusb_mob: "遅延ステータス"."ステータス".AnalyseLog set value '[{"translate":"%1$s目へ強い執着を持つおぞましきゾンビ。目をほじくり返そうとしてくる。","with":[{"translate":"【能力：強化】","color":"#00FF00"}]}]'
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {Damage:[{Name:"Function",Tags:[Skylands,Ground,Function,Ryomen,Rage1]}],Attack:[{Name:"Function",Tags:[Skylands,Ground,Blow,Mega,Debuff1]}],Tick:[{Name:"Function",Tags:[Skylands,Ground,Function,Ryomen,RageTick]}],TurnCount:1,Turn:[{Index:1,Skill:[{Interval:{Min:1200,Max:1200,Current:1200},Loop:{Max:1,Current:1},Call:[{Condition:[{Name:"HasTarget",Target:{Look:"Player",Radius:64d}}],Settings:[{Name:"Direction",Direction:[-180f,-20f],DirectionRange:[360f,20f],Speed:0d,SpeedRange:6d,Absolute:{Vertical:true}}],Name:"Function",Tags:[Skylands,Ground,Function,Ryomen,Summoner]}],Once:2}]}]}
