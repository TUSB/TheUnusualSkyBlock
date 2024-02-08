### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:armor_stand",CustomName:'{"translate":"シルバーアースボム","color":"#FF0000","bold":true}',Small:1b,Silent:1b,Invulnerable:1b,DisabledSlots:4144959,Invisible:1b,PortalCooldown:200,Tags:[DelayedData,HasAI,CallOnInit,CallOnBlock,CallOnTick,CooldownRequired,SmartMotion,Bounce,DamageProjectile,EnemyProjectile]}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {}
### 遅延ステータス
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理攻撃力" set value 60
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法攻撃力" set value 60
data modify storage tusb_mob: "遅延ステータス"."ステータス".DeathCause set value '[{"translate":"%2$sは%1$sによって遠く彼方へと吹き飛ばされた。","with":[{"selector":"@s"},{"storage":"mob_data:","nbt":"MobName","interpret":true}]}]'
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {Initial:[{Name:"Parabolic",MotionTick:60,MotionGravity:0.02d,Settings:[{Name:"At",Target:{Look:"Player",Radius:32d,IgnoreBlocks:true}}]}],Block:[{Name:"Parabolic",MotionTick:60,MotionGravity:0.02d,Settings:[{Name:"At",Target:{Look:"Player",Radius:32d,IgnoreBlocks:true}}]}],Tick:[{Name:"Function",Tags:[Skylands,Ground,Blow,SilverBomber,EarthBombParticle]}],TurnCount:1,Turn:[{Index:1,Skill:[{Interval:{Min:10,Max:10,Current:10},Loop:{Max:1,Current:1},Call:[{Name:"Damage",Player:{DamageType:[Global,Blast]},Distance:{Max:4d}},{Name:"Function",Tags:[Skylands,Ground,Blow,SilverBomber,EarthBombSound]}]}]}]}
