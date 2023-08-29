### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:armor_stand",Silent:1b,CustomName:'{"translate":"自爆魂","color":"#FFFFFF","bold":true}',Invulnerable:1b,Small:1b,Invisible:1b,PortalCooldown:200,DeathLootTable:"empty",Tags:[DelayedData,HasAI,CallOnInit,CallOnAttack,CallOnBlock,TickingRequired,NativeTask,SmartMotion,Break,DamageProjectile,EnemyProjectile]}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {ArmorItems:[{},{},{},{id:"redstone_block",Count:1b,tag:{Enchantments:[{}]}}],Pose:{Head:[180f,45f,0f]}}
### 遅延ステータス
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理攻撃力" set value 0
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法攻撃力" set value 125
data modify storage tusb_mob: "遅延ステータス"."ステータス".DeathCause set value '[{"translate":"%1$sは%2$sによって爆散してしまった。","with":[{"selector":"@s"},{"storage":"mob_data:","nbt":"MobName","interpret":true}]}]'
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {Initial:[{Settings:[{Name:"Facing",Target:{Look:"Player",Radius:32d},Anchor:"Eyes"},{Name:"Rotation",Direction:[-5f,-2f],DirectionRange:[10f,8f]}],Name:"SmartMotion",TP:1b,Speed:{Set:50},Gravity:{Set:0}},{Name:"Function",Tags:[Skylands,Ground,Shoot,SuicideSpirit,BulletSound]},{Condition:[{Name:"HasTarget",Inverse:true,Target:{Look:"Player",Radius:32d}}],Name:"Kill"}],Attack:[{Name:"Damage",Player:{DamageType:[Global,Blast]},Mob:{Physical:20},Explosion:-1},{Name:"Function",Tags:[Skylands,Ground,Shoot,SuicideSpirit,BulletParticle2]},{Name:"Kill"}],Block:[{Name:"Damage",Player:{DamageType:[Global,Blast],Effectiveness:50},Mob:{Physical:10},Distance:{Max:3d},Explosion:-1},{Name:"Function",Tags:[Skylands,Ground,Shoot,SuicideSpirit,BulletParticle2]},{Name:"Kill"}],TurnCount:1,Turn:[{Index:1,Skill:[{Interval:{Min:1,Max:1,Current:1},Loop:{Max:1,Current:1},Call:[{Settings:[{Name:"Anchor",Anchor:"Eyes"}],Name:"Function",Tags:[Skylands,Ground,Shoot,SuicideSpirit,BulletParticle1]}]}]}]}
