### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:giant",Tags:[Mob,Enemy,DelayedData,HasAI,CallOnInit,CallOnBlock,TickingRequired,SmartMotion,Stick,DamageProjectile,EnemyProjectile,HasLootTable,Unknown],CustomName:'[{"translate":"t","color":"#440066","obfuscated":true},{"translate":"u","color":"#53007D","obfuscated":true},{"translate":"s","color":"#68009C","obfuscated":true},{"translate":"b","color":"#8300C4","obfuscated":true},{"translate":"巨人のドン","color":"#AA00FF","bold":true,"obfuscated":false},{"translate":"b","color":"#8300C4","obfuscated":true},{"translate":"s","color":"#68009C","obfuscated":true},{"translate":"u","color":"#53007D","obfuscated":true},{"translate":"t","color":"#440066","obfuscated":true}]',PortalCooldown:4500,DeathLootTable:"empty"}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {}
data modify storage tusb_mob: "即時ステータス"."最大感知範囲" set value 48d
data modify storage tusb_mob: "即時ステータス"."基本移動力" set value 0.2d
data modify storage tusb_mob: "即時ステータス"."ノックバック耐性" set value 1d
data modify storage tusb_mob: "即時ステータス"."ノックバック力" set value 8d

### 遅延ステータス
# 属性値
data modify storage tusb_mob: "遅延ステータス"."ステータス"."炎属性値" set value 30
data modify storage tusb_mob: "遅延ステータス"."ステータス"."氷属性値" set value 30
data modify storage tusb_mob: "遅延ステータス"."ステータス"."雷属性値" set value 30
data modify storage tusb_mob: "遅延ステータス"."ステータス"."光属性値" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."闇属性値" set value 100
# ステータス
data modify storage tusb_mob: "遅延ステータス"."ステータス"."最大HP" set value 8500
data modify storage tusb_mob: "遅延ステータス"."ステータス"."最大MP" set value 0
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理攻撃力" set value 200
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理防御力" set value 200
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法攻撃力" set value -2
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法防御力" set value -3
data modify storage tusb_mob: "遅延ステータス"."ステータス".LootTable set value [{Loot:"item:group/drop_item/tier7/common",Count:1,Chance:0.25d}]
data modify storage tusb_mob: "遅延ステータス"."ステータス".DeathCause set value '[{"translate":"「ﾌﾟﾁｯ」%1$sは%2$sの踏みつけによって床のシミになった。","with":[{"selector":"@s"},{"storage":"mob_data:","nbt":"MobName","interpret":true}]}]'
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {Initial:[{Name:"SmartMotion",Gravity:{Set:300d}},{Name:"Function",Tags:[Global,Event,Function,CommonExe,SetMp0]}],Block:[{Name:"Function",Tags:[GulliversLand,Ground,Blow,GiantDon,EarthQuake]},{Condition:[{Name:"Function",Tags:[Global,Event,Function,CommonExe,SmartMotionZerospeed]}],Name:"SmartMotion",Stop:true}],TurnCount:1,Turn:[{Index:1,Skill:[{Interval:{Min:40,Max:100,Current:60},Call:[{Settings:[{Name:"Facing",Target:{Look:"Friendly",Radius:48d}},{Name:"Rotation",Direction:[0f,-60f],DirectionRange:[0f,15f]},{Name:"Direction",Speed:1d}],Name:"SmartMotion",TP:true,Start:true,Speed:{Set:55d,Range:35d}}]}]}]}
