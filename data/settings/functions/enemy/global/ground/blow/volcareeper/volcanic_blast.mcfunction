### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:arrow",CustomName:'{"translate":"ヴォルケニックブラスト","color":"#FFFFFF"}',life:1200,Fire:30000s,Color:43877,CustomPotionEffects:[{Id:7,Amplifier:0b,Duration:1}],PortalCooldown:120,Tags:[DelayedData,HasAI,CallOnInit,CallOnTick,TickingRequired,DamageProjectile,EnemyProjectile]}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {}
### 遅延ステータス
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理攻撃力" set value 50
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法攻撃力" set value 50
data modify storage tusb_mob: "遅延ステータス"."ステータス".DeathCause set value '[{"translate":"不運にも%1$sは%2$sに当たり燃え尽きた。","with":[{"selector":"@s"},{"storage":"mob_data:","nbt":"MobName","interpret":true}]}]'
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {Initial:[{Settings:[{Name:"Anchor",Anchor:"Eyes"},{Name:"Rotation",Direction:[-180f,-180f],DirectionRange:[360f,360f]},{Name:"Direction",Speed:1d}],Name:"Step",Speed:1.2d,SpeedRange:1.2d}],Tick:[{Name:"Function",Tags:[Global,Ground,Blow,Volcareeper,ParticleAndSound2]}]}
#Function
particle flame ~ ~ ~ 0.1 0.1 0.1 0.5 20 force @a[distance=..32]
