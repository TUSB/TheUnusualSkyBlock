### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:sheep",CustomName:'{"translate":"jeb_","color":"#FFFFFF","bold":true}',ActiveEffects:[{Id:8b,Amplifier:9b,Duration:2147483647,ShowParticles:false}],PortalCooldown:200,DeathLootTable:"empty",Tags:[Mob,DelayedData,HasAI,CallOnDamage,CooldownRequired,DamageProjectile]}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {ArmorItems:[{},{},{id:"minecraft:leather_chestplate",Count:1b,tag:{Unbreakable:1b,Enchantments:[{id:"minecraft:thorns",lvl:30s}]}},{}],ArmorDropChances:[-1E40f,-1E40f,-1E40f,-1E40f]}
data modify storage tusb_mob: "即時ステータス"."最大感知範囲" set value 16d
data modify storage tusb_mob: "即時ステータス"."基本移動力" set value 1d
data modify storage tusb_mob: "即時ステータス"."ノックバック耐性" set value 1d
data modify storage tusb_mob: "即時ステータス"."ノックバック力" set value 16d

### 遅延ステータス
# 属性値
data modify storage tusb_mob: "遅延ステータス"."ステータス"."炎属性値" set value 0
data modify storage tusb_mob: "遅延ステータス"."ステータス"."氷属性値" set value 0
data modify storage tusb_mob: "遅延ステータス"."ステータス"."雷属性値" set value 0
data modify storage tusb_mob: "遅延ステータス"."ステータス"."光属性値" set value 0
data modify storage tusb_mob: "遅延ステータス"."ステータス"."闇属性値" set value 200
# ステータス
data modify storage tusb_mob: "遅延ステータス"."ステータス"."最大HP" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."最大MP" set value 1
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理攻撃力" set value 2
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理防御力" set value 2
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法攻撃力" set value 2
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法防御力" set value 2
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {Damage:[{Element:[Dark],Name:"Damage",MP:{MP:50,Percent:true}},{Condition:[{Name:"MinMP",MP:99,Percent:true,Inverse:true}],Name:"Kill"}],TurnCount:1,Turn:[{Index:1,Skill:[{Interval:{Min:20,Max:20,Current:20},Call:[{}]}]}]}
