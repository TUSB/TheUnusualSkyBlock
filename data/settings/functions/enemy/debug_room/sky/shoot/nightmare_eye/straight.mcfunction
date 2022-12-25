### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:snowball",CustomName:'{"translate":"ナイトメア・ストレート","color":"#FFFFFF"}',NoGravity:true,Tags:[DelayedData,HasAI,CallOnInit,CallOnTick,DamageProjectile,EnemyProjectile]}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {Item:{id:"minecraft:ender_pearl",Count:1b,tag:{Enchantments:[{}]}}}
data modify storage tusb_mob: "遅延ステータス"."ステータス".DeathCause set value '[{"translate":"%1$sは%2$sに当たって無限の悪夢世界に閉じ込められてしまった。","with":[{"selector":"@s"},{"storage":"mob_data:","nbt":"MobName","interpret":true}]}]'
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {Initial:[{Settings:[{Name:"Facing",Target:{Look:"Player",Radius:32d,IgnoreBlocks:true}}],Name:"Step",Speed:0.4d,SpeedRange:0.1d}],Tick:[{Name:"Function",Tags:[DebugRoom,Sky,Shoot,NightmareEye,StraightAppearance]}]}
