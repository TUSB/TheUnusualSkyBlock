### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:frog",Tags:[Mob,Enemy,DelayedData,HasAI,CallOnInit,CallOnDamage,CallOnAttack,TickingRequired,DamageProjectile,EnemyProjectile,HasLootTable,AnalyseLog,"Unmoved"],CustomName:'{"translate":"ノロイハリカエル","color":"#FF0000","bold":true}',InLove:0,Age:9999,ForcedAge:9999,variant:"minecraft:cold",PortalCooldown:3000,DeathLootTable:"empty"}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {}
data modify storage tusb_mob: "即時ステータス"."最大感知範囲" set value 16d
data modify storage tusb_mob: "即時ステータス"."基本移動力" set value 0d
data modify storage tusb_mob: "即時ステータス"."ノックバック耐性" set value 0d
data modify storage tusb_mob: "即時ステータス"."ノックバック力" set value 0d

### 遅延ステータス
# 属性値
data modify storage tusb_mob: "遅延ステータス"."ステータス"."炎属性値" set value 200
data modify storage tusb_mob: "遅延ステータス"."ステータス"."氷属性値" set value 50
data modify storage tusb_mob: "遅延ステータス"."ステータス"."雷属性値" set value 50
data modify storage tusb_mob: "遅延ステータス"."ステータス"."光属性値" set value 200
data modify storage tusb_mob: "遅延ステータス"."ステータス"."闇属性値" set value 0
# ステータス
data modify storage tusb_mob: "遅延ステータス"."ステータス"."最大HP" set value 200
data modify storage tusb_mob: "遅延ステータス"."ステータス"."最大MP" set value 0
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理攻撃力" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理防御力" set value 20
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法攻撃力" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法防御力" set value 200
data modify storage tusb_mob: "遅延ステータス"."ステータス".LootTable set value [{Loot:"item:group/drop_item/tier1/common",Count:1,Chance:0.3d}]
data modify storage tusb_mob: "遅延ステータス"."ステータス".DeathCause set value '[{"translate":"%1$sは%2$sによって床下張り替えサービスを受けてしまった。","with":[{"selector":"@s"},{"storage":"mob_data:","nbt":"MobName","interpret":true}]}]'
data modify storage tusb_mob: "遅延ステータス"."ステータス".AnalyseLog set value '[{"translate":"%1$s床張り検定１級を所持している「全床を即死床にするケロ～３秒間乗ってれば極楽にいけるサービス付きケロ」","with":[{"translate":"【能力：追撃・地形破壊・引寄無効】","color":"#00FF00"}]}]'
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {Initial:[{Name:"Function",Tags:[Global,Event,Function,CommonExe,SetMp0]}],Damage:[{Settings:[{Name:"Facing",Target:{Look:"Friendly",Radius:32d,IgnoreBlocks:true}},{Name:"Rotation",Direction:[-30f,-45f],DirectionRange:[60f,0f],Absolute:{Vertical:true}}],Name:"Step",Speed:0.4d,SpeedRange:1.4d}],Attack:[{Condition:[{Name:"Function",Tags:[Global,Event,Function,CommonExe,SurvivalJudge]},{Name:"CheckNBT",NBT:{OnGround:true}},{Name:"CheckBlock",Block:[Air]}],Name:"Function",Tags:[Skylands,Ground,Blow,DeathFlooringFrog,ProcessFloor]}],TurnCount:1,Turn:[{Index:1,Skill:[{Interval:{Min:30,Max:30,Current:3},Loop:{Max:2,Current:2,Range:3},Call:[{Settings:[{Name:"Facing",Target:{Look:"Friendly",Radius:32d,IgnoreBlocks:true}},{Name:"Rotation",Direction:[-15f,-45f],DirectionRange:[30f,0f],Absolute:{Vertical:true}}],Name:"Step",Speed:0.4d,SpeedRange:1.4d}]},{Interval:{Min:3,Max:3,Current:3},Loop:{Max:1,Current:1,Range:30},Call:[{Settings:[{Name:"Facing",Target:{Look:"Friendly",Radius:32d,IgnoreBlocks:true}}]}]}]}]}
