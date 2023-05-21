### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:armor_stand",Small:1b,Invisible:1b,Invulnerable:1b,PortalCooldown:100,Tags:[DelayedData,HasAI,CallOnDeath,CallOnInit,CallOnAttack,CooldownRequired,SmartMotion,Break,DamageProjectile,EnemyProjectile]}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {ArmorItems:[{},{},{},{}],DisabledSlots:4144959}
### 遅延ステータス
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理攻撃力" set value 50
data modify storage tusb_mob: "遅延ステータス"."ステータス".DeathCause set value '[{"translate":"%1$sは%2$sによって未知の手段で死亡した。","with":[{"selector":"@s"},{"storage":"mob_data:","nbt":"MobName","interpret":true}]}]'
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {Initial:[{Settings:[{Name:"Facing",Target:{Look:"Friendly",Radius:32,IgnoreBlocks:true}},{Name:"Rotation",Direction:[-5f,-5f],DirectionRange:[10f,10f]}],Name:"SmartMotion",TP:1b,Speed:{Set:30}}],Death:[{Condition:[{Name:"HasTarget",Target:{Look:"Friendly",Radius:16d}}],Name:"Damage",Explosion:-1}],Attack:[{Name:"Damage",Explosion:-1}],TurnCount:1,Turn:[{Index:1,Once:1,Skill:[{Interval:{Min:6,Max:6,Current:6},Loop:{Max:1,Current:1},Call:[{Name:"MergeNBT",NBT:{ArmorItems:[{},{},{},{id:"minecraft:firework_star",Count:1b,tag:{Explosion:{Type:0b,Colors:[I;16711833]},CustomModelData:125}}],DisabledSlots:4144959}}]}],Exit:{Loop:{Max:1,Current:1}}}]}
