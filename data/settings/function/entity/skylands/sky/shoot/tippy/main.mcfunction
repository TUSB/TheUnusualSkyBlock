### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:vex",CustomName:'{"translate":"てぃっぴー","color":"#FFFFFF","bold":true}',Silent:1b,Tags:[Mob,Enemy,DelayedData,HasAI,CallOnAttack,TickingRequired,DamageProjectile,EnemyProjectile,HasLootTable,AnalyseLog,"TippyCount"],active_effects:[{id:"minecraft:invisibility",amplifier:127b,duration:-1,show_particles:0b}],PortalCooldown:3000}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {HandItems:[{id:"minecraft:air",count:1},{}],HandDropChances:[-Infinityf,-Infinityf]}
data modify storage tusb_mob: "即時ステータス"."最大感知範囲" set value 16d
data modify storage tusb_mob: "即時ステータス"."基本移動力" set value 0.6d
data modify storage tusb_mob: "即時ステータス"."ノックバック耐性" set value 0d
data modify storage tusb_mob: "即時ステータス"."ノックバック力" set value 2d

### 遅延ステータス
# ステータス
data modify storage tusb_mob: "遅延ステータス"."ステータス"."最大HP" set value 125
data modify storage tusb_mob: "遅延ステータス"."ステータス"."最大MP" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理攻撃力" set value 70
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理防御力" set value 70
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法攻撃力" set value 70
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法防御力" set value 150
data modify storage tusb_mob: "遅延ステータス"."ステータス"."理外攻撃力" set value 0
data modify storage tusb_mob: "遅延ステータス"."ステータス"."理外防御力" set value 0
data modify storage tusb_mob: "遅延ステータス"."ステータス".LootTable set value [{Loot:"item:group/drop_item/tier1/common",Count:1,Chance:0.3d}]
data modify storage tusb_mob: "遅延ステータス"."ステータス".AnalyseLog set value '[{"translate":"%1$sてぃ～～～","with":[{"translate":"【能力：追撃・召喚】","color":"#00FF00"}]}]'
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {Attack:[{Condition:[{Name:"RandomChance",Chance:0.15d}],Name:"Function",Tags:[Skylands,Sky,Shoot,Tippy,Poppy]}],TurnCount:1,Turn:[{Index:1,Skill:[{Interval:{Min:100,Max:100,Current:100},Loop:{Max:1,Current:1},Call:[{Condition:[{Name:"HasTarget",Target:{Look:"Player",Radius:16d,IgnoreBlocks:true}},{Name:"RandomChance",Chance:0.12d}],Name:"Function",Tags:[Skylands,Sky,Shoot,Tippy,Summon1]}]}]}]}
