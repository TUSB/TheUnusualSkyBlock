### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:snowball",CustomName:'{"translate":"ソウル・ソルトッシモ","color":"#FF0000"}',NoGravity:true,PortalCooldown:120,Tags:[DelayedData,HasAI,CallOnInit,CallOnAttack,CallOnTick,TickingRequired,DamageProjectile,EnemyProjectile]}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {Item:{id:"minecraft:firework_star",Count:1b,tag:{CustomModelData:72,Explosion:{Type:0b,Colors:[I;116777215]}}}}
### 遅延ステータス
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理攻撃力" set value 30
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法攻撃力" set value 30
data modify storage tusb_mob: "遅延ステータス"."ステータス".DeathCause set value '[{"translate":"%1$sはコッコド・ヘルシェフの%2$sによって魂がシオシオになった。","with":[{"selector":"@s"},{"storage":"mob_data:","nbt":"MobName","interpret":true}]}]'
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {Initial:[{Name:"Step",Speed:0.3d}],Attack:[{Name:"Damage",Player:{Damage:1d},Distance:{Max:1d},AEC:{effects:[{id:"minecraft:invisibility",amplifier:10b,duration:5}]}}],Tick:[{Name:"Function",Tags:[Skylands,Sky,Shoot,CockdoHellchef,ParticleAndSound]}],TurnCount:1,Turn:[{Index:1,Skill:[{Interval:{Min:40,Max:40,Current:40},Loop:{Max:1,Current:1},Call:[{Settings:[{Name:"Facing",Target:{Look:"Player",Radius:64d,IgnoreBlocks:true},Anchor:"Eyes"},{Name:"Rotation",Direction:[-3f,-3f],DirectionRange:[6f,6f]}],Name:"Step",Speed:1.0d}],Once:1}]}]}
#Function
particle flame ~ ~ ~ 0.01 0.01 0.01 0.1 5 normal
playsound entity.item_frame.break hostile @a[distance=..32] ~ ~ ~ 0.7 1.8 0.8
