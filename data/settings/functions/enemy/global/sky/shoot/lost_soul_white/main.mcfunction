### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:vex",CustomName:'{"translate":"迷える魂","color":"#FF0000","bold":true}',Silent:true,ActiveEffects:[{Id:14,Amplifier:1b,Duration:-1,ShowParticles:0b}],PortalCooldown:3000,DeathLootTable:"empty",Tags:[Mob,Enemy,DelayedData,HasAI,TickingRequired,DamageProjectile,EnemyProjectile,HasLootTable,AnalyseLog]}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {ArmorItems:[{},{},{},{id:"minecraft:skeleton_skull",Count:1b,tag:{Enchantments:[{}]}}]}
data modify storage tusb_mob: "即時ステータス"."最大感知範囲" set value 44d
data modify storage tusb_mob: "即時ステータス"."基本移動力" set value 0.3d
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
data modify storage tusb_mob: "遅延ステータス"."ステータス"."最大HP" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."最大MP" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理攻撃力" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理防御力" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法攻撃力" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法防御力" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス".LootTable set value [{Loot:"item:group/drop_item/tier3/common",Count:1,Chance:0.35d}]
data modify storage tusb_mob: "遅延ステータス"."ステータス".DeathCause set value '[{"translate":"%1$sは%2$sと同じ運命を辿った。","with":[{"selector":"@s"},{"storage":"mob_data:","nbt":"MobName","interpret":true}]}]'
data modify storage tusb_mob: "遅延ステータス"."ステータス".AnalyseLog set value '[{"translate":"%1$s奈落死してしまった亡者であり、生存している全てに襲い掛かる。","with":[{"translate":"【能力：移動・範囲攻撃】","color":"#00FF00"}]}]'
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {TurnCount:2,Turn:[{Index:1,Skill:[{Interval:{Min:1,Max:1,Current:1},Loop:{Max:1,Current:1},Call:[{Settings:[{Name:"Facing",Target:{Look:"Player",Radius:44d,IgnoreBlocks:true}}],Name:"Step",Speed:0.4d},{Name:"Function",Tags:[Global,Sky,Shoot,LostSoulWhite,NormalState]}]},{Interval:{Min:1,Max:1,Current:1},Loop:{Max:1,Current:1},Call:[{Condition:[{Name:"HasTarget",Target:{Look:"Player",Radius:100d,IgnoreBlocks:true},Half:"up"}],Name:"Step",Direction:[0f,-90f],DirectionRange:[0f,25f],Speed:0.8d},{Name:"Function",Tags:[Global,Sky,Shoot,LostSoulWhite,NormalState]}]}],Exit:{Condition:[{Name:"HasTarget",Target:{Look:"Player",Radius:10d,IgnoreBlocks:true}}]}},{Index:2,Skill:[{Interval:{Min:1,Max:1,Current:1},Loop:{Max:1,Current:1},Call:[{Name:"Step",Speed:-0.3d,Settings:[{Name:"Facing",Target:{Look:"Player",Radius:44d,IgnoreBlocks:true}}]},{Name:"Function",Tags:[Global,Sky,Shoot,LostSoulWhite,ContactState]}]},{Interval:{Min:1,Max:1,Current:1},Loop:{Max:1,Current:1},Call:[{Condition:[{Name:"HasTarget",Target:{Look:"Player",Radius:44d,IgnoreBlocks:true},Half:"up"}],Name:"Step",Direction:[0f,-90f],DirectionRange:[0f,25f],Speed:0.8d},{Name:"Function",Tags:[Global,Sky,Shoot,LostSoulWhite,ContactState]}],MP:5}],Exit:{Condition:[{Name:"HasTarget",Inverse:true,Target:{Look:"Player",Radius:10d,IgnoreBlocks:true}}]}}]}
