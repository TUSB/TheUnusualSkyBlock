### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:skeleton",CustomName:'{"translate":"深海廻","color":"#FF0000","bold":true}',Silent:1b,ActiveEffects:[{Id:14,Amplifier:127b,Duration:-1,ShowParticles:0b}],StrayConversionTime:2147483647,PortalCooldown:3000,DeathLootTable:"empty",Tags:[Mob,Enemy,DelayedData,HasAI,CallOnDamage,CallOnAttack,CallOnTick,TickingRequired,HasLootTable]}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {HandItems:[{id:"minecraft:bow",Count:1b,tag:{Unbreakable:1b}},{}],ArmorItems:[{id:"minecraft:leather_boots",Count:1b,tag:{display:{color:25750},Unbreakable:1b}},{id:"minecraft:leather_leggings",Count:1b,tag:{display:{color:25750},Unbreakable:1b}},{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:25750},Unbreakable:1b}},{id:"minecraft:dark_prismarine",Count:1b}],HandDropChances:[-1E40f,-1E40f],ArmorDropChances:[-1E40f,-1E40f,-1E40f,-1E40f]}
data modify storage tusb_mob: "即時ステータス"."最大感知範囲" set value 32d
data modify storage tusb_mob: "即時ステータス"."基本移動力" set value 0.25d
data modify storage tusb_mob: "即時ステータス"."ノックバック耐性" set value 1d
data modify storage tusb_mob: "即時ステータス"."ノックバック力" set value 0d

### 遅延ステータス
# 属性値
data modify storage tusb_mob: "遅延ステータス"."ステータス"."炎属性値" set value 30
data modify storage tusb_mob: "遅延ステータス"."ステータス"."氷属性値" set value 60
data modify storage tusb_mob: "遅延ステータス"."ステータス"."雷属性値" set value 120
data modify storage tusb_mob: "遅延ステータス"."ステータス"."光属性値" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."闇属性値" set value 100
# ステータス
data modify storage tusb_mob: "遅延ステータス"."ステータス"."最大HP" set value 120
data modify storage tusb_mob: "遅延ステータス"."ステータス"."最大MP" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理攻撃力" set value 90
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理防御力" set value 115
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法攻撃力" set value 125
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法防御力" set value 85
data modify storage tusb_mob: "遅延ステータス"."ステータス".LootTable set value [{Loot:"item:group/drop_item/tier3/common",Count:1,Chance:0.25d}]
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {Damage:[{Name:"Function",Tags:[Skylands,Water,Shoot,Shinkaimawari,Debuff]}],Attack:[{Name:"Function",Tags:[Skylands,Water,Shoot,Shinkaimawari,Flood]}],Tick:[{Condition:[{Name:"RandomChance",Chance:0.05d},{Name:"CheckBlock",Block:[Water]}],Name:"Heal",Multiplier:0.5d,Range:0.1}],TurnCount:1,Turn:[{Index:1,Skill:[{Interval:{Min:90,Max:150,Current:120},Loop:{Max:1,Current:1},Call:[{Name:"Function",Tags:[Skylands,Water,Shoot,Shinkaimawari,IceDirection]},{Name:"Function",Tags:[Skylands,Water,Shoot,Shinkaimawari,Ice1],Player:{DamageType:[Global],DeathCause:'[{"translate":"%1$sは%2$sの呪縛によって凍らせられてしまった。","with":[{"selector":"@s"},{"storage":"mob_data:","nbt":"MobName","interpret":true}]}]'},MP:{MP:50},Distance:{Max:0.1d}}]}]}]}
