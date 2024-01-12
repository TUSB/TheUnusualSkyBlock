### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:arrow",CustomName:'{"translate":"ヴォルケニックブラスト","color":"#FFFFFF"}',life:1000,Fire:30000s,HasVisualFire:true,Color:1118481,CustomPotionEffects:[{Id:14b,Amplifier:3b,Duration:500,ShowParticles:false}],PortalCooldown:320,Tags:[DelayedData,HasAI,CallOnInit,CallOnTick,TickingRequired,AnalyseLog]}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {}
### 遅延ステータス
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理攻撃力" set value 50
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法攻撃力" set value 50
data modify storage tusb_mob: "遅延ステータス"."ステータス".AnalyseLog set value '[{"translate":"%1$s風前の灯だが、一矢報いてやるぞー！","with":[{"translate":"【能力：未設定】","color":"#00FF00"}]}]'
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {Initial:[{Settings:[{Name:"Anchor",Anchor:"Eyes"},{Name:"Rotation",Direction:[0f,-90f],Absolute:{Vertical:true}},{Name:"Rotation",Direction:[-120f,-120f],DirectionRange:[240f,240f]},{Name:"Direction",Speed:2d}],Name:"Step",Speed:0.5d,SpeedRange:1.0d}],Tick:[{Name:"Function",Tags:[Global,Ground,Blow,Volcareeper,ParticleAndSound2]},{Condition:[{Name:"HasTarget",Target:{Look:"Friendly",Radius:1d,IgnoreBlocks:true}}],Name:"Damage",Player:{Damage:1d,DamageType:[Fire,Blast],BypassArmor:true,DeathCause:'[{"translate":"不運にも%1$sは%2$sに当たり消し飛んだ。","with":[{"selector":"@s"},{"storage":"mob_data:","nbt":"MobName","interpret":true}]}]'},Distance:{Max:1d},Explosion:-1,AEC:{Particle:"lava",Effects:[{Id:14b,Amplifier:9b,Duration:40,ShowParticles:false}]}}]}
#Function
particle minecraft:lava ~ ~ ~ 0.05 0.05 0.05 0.0 1 force @a[distance=..32]
