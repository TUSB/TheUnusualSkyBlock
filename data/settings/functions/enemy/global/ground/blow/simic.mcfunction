### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:silverfish",CustomName:'{"translate":"シミック","color":"#FF0000","bold":true}',PortalCooldown:3000,DeathLootTable:"empty",Tags:[Mob,Enemy,DelayedData,HasAI,CallOnInit,TickingRequired,DamageProjectile,EnemyProjectile,HasLootTable]}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {}
data modify storage tusb_mob: "即時ステータス"."最大感知範囲" set value 32d
data modify storage tusb_mob: "即時ステータス"."基本移動力" set value 0.2d
data modify storage tusb_mob: "即時ステータス"."ノックバック耐性" set value 1d
data modify storage tusb_mob: "即時ステータス"."ノックバック力" set value 5d

### 遅延ステータス
# 属性値
data modify storage tusb_mob: "遅延ステータス"."ステータス"."炎属性値" set value 10
data modify storage tusb_mob: "遅延ステータス"."ステータス"."氷属性値" set value 10
data modify storage tusb_mob: "遅延ステータス"."ステータス"."雷属性値" set value 10
data modify storage tusb_mob: "遅延ステータス"."ステータス"."光属性値" set value 10
data modify storage tusb_mob: "遅延ステータス"."ステータス"."闇属性値" set value 10
# ステータス
data modify storage tusb_mob: "遅延ステータス"."ステータス"."最大HP" set value 450
data modify storage tusb_mob: "遅延ステータス"."ステータス"."最大MP" set value 150
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理攻撃力" set value 250
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理防御力" set value 150
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法攻撃力" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法防御力" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス".LootTable set value [{Loot:"item:group/treasure_items/rank_all/vanilla_tusb_mix",Count:1,Chance:d}]
data modify storage tusb_mob: "遅延ステータス"."ステータス".DeathCause set value '[{"translate":"%1$sは%2$sの鋭利な棘により串刺しにされた。","with":[{"selector":"@s"},{"storage":"mob_data:","nbt":"MobName","interpret":true}]}]'
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {Initial:[{Name:"Blink",Count:5,Chance:1d,TriggerOn:[Physical]}],TurnCount:2,Turn:[{Index:1,Skill:[{Interval:{Min:20,Max:60,Current:30},Call:[{}]}],Exit:{Loop:{Max:1,Current:1}}},{Index:2,Skill:[{Interval:{Min:2,Max:4,Current:2},Call:[{Condition:[{Name:"HasTarget",Target:{Look:"Player",Radius:16d}},{Name:"MP",MP:5}],Settings:[{Name:"Rotation",Target:{Look:"Player",Radius:24d,IgnoreBlocks:true},Direction:[-90f,-35f],DirectionRange:[180f,0f],Flip:true}],Name:"Step",Speed:1d,SpeedRange:0.5d}]},{Interval:{Min:10,Max:15,Current:10},Call:[{Condition:[{Name:"HasTarget",Target:{Look:"Player",Radius:16d}}],Settings:[{Name:"Facing",Target:{Look:"All",Radius:24d,IgnoreBlocks:true}},{Name:"Rotation",Direction:[-10f,-35f],DirectionRange:[20f,5f]}],Name:"Step",Speed:1.5d,SpeedRange:0.5d}]}],Exit:{Loop:{Max:2,Current:2}}}]}
