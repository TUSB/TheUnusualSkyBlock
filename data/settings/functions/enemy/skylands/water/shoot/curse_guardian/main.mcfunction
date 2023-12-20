### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:elder_guardian",CustomName:'{"translate":"呪縛魚","color":"#FF0000","bold":true}',PortalCooldown:3000,DeathLootTable:"empty",Tags:[Mob,Enemy,DelayedData,HasAI,CallOnAttack,CallOnTick,TickingRequired,HasLootTable,AnalyseLog]}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {}
data modify storage tusb_mob: "即時ステータス"."最大感知範囲" set value 64d
data modify storage tusb_mob: "即時ステータス"."基本移動力" set value 0.5d
data modify storage tusb_mob: "即時ステータス"."ノックバック耐性" set value 0d
data modify storage tusb_mob: "即時ステータス"."ノックバック力" set value 0d

### 遅延ステータス
# 属性値
data modify storage tusb_mob: "遅延ステータス"."ステータス"."炎属性値" set value 0
data modify storage tusb_mob: "遅延ステータス"."ステータス"."氷属性値" set value -50
data modify storage tusb_mob: "遅延ステータス"."ステータス"."雷属性値" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."光属性値" set value 50
data modify storage tusb_mob: "遅延ステータス"."ステータス"."闇属性値" set value 50
# ステータス
data modify storage tusb_mob: "遅延ステータス"."ステータス"."最大HP" set value 150
data modify storage tusb_mob: "遅延ステータス"."ステータス"."最大MP" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理攻撃力" set value 110
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理防御力" set value 80
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法攻撃力" set value 110
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法防御力" set value 125
data modify storage tusb_mob: "遅延ステータス"."ステータス".LootTable set value [{Loot:"item:group/drop_item/tier4/common",Count:1,Chance:0.3d}]
data modify storage tusb_mob: "遅延ステータス"."ステータス".AnalyseLog set value '[{"translate":"%1$sｷﾐﾓﾉﾛｲｺﾛｻﾚﾀｲｯﾃ……?","with":[{"translate":"【能力：射的・追撃】","color":"#00FF00"}]}]'
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {Attack:[{Condition:[{Name:"RandomChance",Chance:0.75d}],Name:"Function",Tags:[Skylands,Water,Shoot,CurseGuardian,Debuff1]}],Tick:[{Name:"Function",Tags:[Skylands,Water,Shoot,CurseGuardian,Curse1]}],TurnCount:1,Turn:[{Index:1,Skill:[{Interval:{Min:90,Max:150,Current:120},Loop:{Max:1,Current:1},Call:[{Name:"Function",Tags:[Skylands,Water,Shoot,Shinkaimawari,IceDirection]},{Name:"Function",Tags:[Skylands,Water,Shoot,CurseGuardian,Ice1],Player:{DamageType:[Global],DeathCause:'[{"translate":"%1$sは%2$sの呪いによって凍らせられてしまった。","with":[{"selector":"@s"},{"storage":"mob_data:","nbt":"MobName","interpret":true}]}]'},MP:{MP:50},Distance:{Max:0.1d}}]}]}]}
