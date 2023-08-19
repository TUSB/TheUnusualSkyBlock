### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:zombified_piglin",CustomName:'{"translate":"キラキマーハ","color":"#FF8000","bold":true}',Silent:1b,IsBaby:true,AngerTime:20000000,ActiveEffects:[{Id:14,Amplifier:127b,Duration:-1,ShowParticles:0b},{Id:28,Amplifier:127b,Duration:-1,ShowParticles:0b}],PortalCooldown:3000,DeathLootTable:"empty",Tags:[Mob,Enemy,DelayedData,HasAI,CallOnInit,CallOnTick,TickingRequired,NativeTask,SmartMotion,Bounce,DamageProjectile,EnemyProjectile,FriendlyProjectile,HasLootTable,AnalyseLog]}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {}
data modify storage tusb_mob: "即時ステータス"."最大感知範囲" set value 0d
data modify storage tusb_mob: "即時ステータス"."基本移動力" set value 0d
data modify storage tusb_mob: "即時ステータス"."ノックバック耐性" set value 1d
data modify storage tusb_mob: "即時ステータス"."ノックバック力" set value 0d

### 遅延ステータス
# 属性値
data modify storage tusb_mob: "遅延ステータス"."ステータス"."炎属性値" set value 10
data modify storage tusb_mob: "遅延ステータス"."ステータス"."氷属性値" set value 10
data modify storage tusb_mob: "遅延ステータス"."ステータス"."雷属性値" set value 10
data modify storage tusb_mob: "遅延ステータス"."ステータス"."光属性値" set value -100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."闇属性値" set value 200
# ステータス
data modify storage tusb_mob: "遅延ステータス"."ステータス"."最大HP" set value -25
data modify storage tusb_mob: "遅延ステータス"."ステータス"."最大MP" set value 10000
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理攻撃力" set value 200
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理防御力" set value 0
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法攻撃力" set value 200
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法防御力" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス".LootTable set value [{Loot:"item:group/magic_stone/tier5/mix",Chance:d}]
data modify storage tusb_mob: "遅延ステータス"."ステータス".DeathCause set value '[{"translate":"「ﾅﾝﾉﾋｶﾘｰ!!?」%1$sは%2$sの10万ルクス反射光に包まれ消滅した。","with":[{"selector":"@s"},{"storage":"mob_data:","nbt":"MobName","interpret":true}]}]'
data modify storage tusb_mob: "遅延ステータス"."ステータス".AnalyseLog set value '[{"translate":"7回までしか復活できないんだ。だから連続攻撃で割るのはマナー違反だぞ！"}]'
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {Initial:[{Name:"Reraise",RaiseCount:7},{Name:"Function",Tags:[Global,Event,Function,CommonExe,SetHp1]},{Settings:[{Name:"Rotation",Direction:[-180f,-180f],DirectionRange:[360f,360f]}],Name:"SmartMotion",TP:true,Start:true,Speed:{Set:20d,Range:40d},Gravity:{Set:0d}}],Tick:[{Name:"SmartMotion",Speed:{Add:-5d,Limit:0d}}],TurnCount:2,Turn:[{Index:1,Target:{Look:"Fixed",Rotation:"LeftUp"},Rotate:[59f,0f],Skill:[{Interval:{Min:2,Max:2,Current:2},Call:[{}]}]},{Index:2,Skill:[{Interval:{Min:2,Max:2,Current:2},Call:[{}]}]}],ProjectileDamage:{Light:200}}
