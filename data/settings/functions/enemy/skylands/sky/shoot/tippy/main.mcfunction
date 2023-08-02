### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:vex",CustomName:'{"translate":"てぃっぴー","color":"#FFFFFF","bold":true}',Silent:1b,Tags:[Mob,Enemy,DelayedData,HasAI,CallOnAttack,TickingRequired,DamageProjectile,EnemyProjectile,HasLootTable,TippyCount],ActiveEffects:[{Id:14,Amplifier:127b,Duration:-1,ShowParticles:0b}],PortalCooldown:3000}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {HandItems:[{id:"minecraft:air",Count:1b},{}],HandDropChances:[-1E40f,-1E40f]}
data modify storage tusb_mob: "即時ステータス"."最大感知範囲" set value 16d
data modify storage tusb_mob: "即時ステータス"."基本移動力" set value 0.6d
data modify storage tusb_mob: "即時ステータス"."ノックバック耐性" set value 0d
data modify storage tusb_mob: "即時ステータス"."ノックバック力" set value 2d

### 遅延ステータス
# 属性値
data modify storage tusb_mob: "遅延ステータス"."ステータス"."炎属性値" set value 125
data modify storage tusb_mob: "遅延ステータス"."ステータス"."氷属性値" set value 80
data modify storage tusb_mob: "遅延ステータス"."ステータス"."雷属性値" set value 80
data modify storage tusb_mob: "遅延ステータス"."ステータス"."光属性値" set value 40
data modify storage tusb_mob: "遅延ステータス"."ステータス"."闇属性値" set value 80
# ステータス
data modify storage tusb_mob: "遅延ステータス"."ステータス"."最大HP" set value 125
data modify storage tusb_mob: "遅延ステータス"."ステータス"."最大MP" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理攻撃力" set value 70
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理防御力" set value 70
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法攻撃力" set value 70
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法防御力" set value 150
data modify storage tusb_mob: "遅延ステータス"."ステータス".LootTable set value [{Loot:"item:group/drop_item/tier2/common",Count:1,Chance:0.51d}]
data modify storage tusb_mob: "遅延ステータス"."ステータス".DeathCause set value '[{"translate":"%2$sは%1$sの身体を無理やりTの字に折り曲げようとした結果、%1$sを骨折させてしまった。","with":[{"selector":"@s"},{"storage":"mob_data:","nbt":"MobName","interpret":true}]}]'
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {Attack:[{Condition:[{Name:"RandomChance",Chance:0.15d}],Name:"Function",Tags:[Skylands,Sky,Shoot,Tippy,Poppy]}],TurnCount:1,Turn:[{Index:1,Skill:[{Interval:{Min:100,Max:100,Current:100},Loop:{Max:1,Current:1},Call:[{Condition:[{Name:"HasTarget",Target:{Look:"Player",Radius:16d,IgnoreBlocks:true}},{Name:"RandomChance",Chance:0.12d}],Name:"Function",Tags:[Skylands,Sky,Shoot,Tippy,Summon1]}]}]}]}
