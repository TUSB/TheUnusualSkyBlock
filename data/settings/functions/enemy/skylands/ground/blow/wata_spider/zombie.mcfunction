### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:husk",CustomName:'{"translate":"綿飴","color":"#FFFFFF","bold":true}',Silent:1b,Invulnerable:1b,ActiveEffects:[{Id:12,Amplifier:1b,Duration:-1,ShowParticles:0b},{Id:14,Amplifier:127b,Duration:-1,ShowParticles:0b}],IsBaby:1b,PortalCooldown:3000,DeathLootTable:"empty",Tags:[DelayedData,HasAI,CallOnAttack,CallOnTick,TickingRequired,DamageProjectile,EnemyProjectile]}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {ArmorItems:[{},{},{},{id:"minecraft:stick",Count:1b,tag:{CustomModelData:1003}}],ArmorDropChances:[-1E40f,-1E40f,-1E40f,-1E40f]}
### 遅延ステータス
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理攻撃力" set value 120
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法攻撃力" set value 0
data modify storage tusb_mob: "遅延ステータス"."ステータス".DeathCause set value '[{"translate":"%1$sは%2$sでベトベトになり、動けなくなってしまった。","with":[{"selector":"@s"},{"storage":"mob_data:","nbt":"MobName","interpret":true}]}]'
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {Attack:[{Name:"Function",Tags:[Skylands,Ground,Blow,WataSpider,ZombieDebuff]}],Tick:[{Name:"Function",Tags:[Global,Event,Function,CommonExe,RotationYFixed]}],Passenger:{Type:"down",Check:false,Call:[{Name:"Kill"}]},TurnCount:1,Turn:[{Index:1,Skill:[{Interval:{Min:80,Max:140,Current:120},Loop:{Max:1,Current:1},Call:[{Settings:[{Name:"Facing",Target:{Look:"Player",Radius:32d,IgnoreBlocks:true},Anchor:"Eyes"},{Name:"Direction",Direction:[-60f,0f],DirectionRange:[120f,0f],Speed:2d,SpeedRange:2d}],Name:"Spawn",SpawnEntities:[[{Tags:[Skylands,Ground,Blow,WataSpider,Watage],Level:15}]]}]}]}]}
