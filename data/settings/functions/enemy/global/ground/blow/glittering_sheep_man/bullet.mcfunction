### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:snowball",CustomName:'{"translate":"きらめく羊毛弾","color":"#FF009A"}',NoGravity:true,PortalCooldown:80,Tags:[DelayedData,HasAI,CallOnInit,CallOnAttack,CallOnTick,TickingRequired,DamageProjectile,EnemyProjectile]}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {Item:{id:"minecraft:gold_block",Count:1b}}
### 遅延ステータス
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理攻撃力" set value 10
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法攻撃力" set value 10
data modify storage tusb_mob: "遅延ステータス"."ステータス".DeathCause set value '[{"translate":"%1$sは勇敢にも挑んだが哀れにも%2$sの金の羊毛に当たってしまいその日は土に還った。","with":[{"selector":"@s"},{"storage":"mob_data:","nbt":"MobName","interpret":true}]}]'
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {Initial:[{Name:"Step",Speed:1.0d}],Attack:[{Name:"Function",Tags:[Global,Ground,Blow,SheepMan,DamageSound]},{Settings:[{Name:"Anchor",Anchor:"Eyes"},{Name:"Direction",Speed:1d}],Name:"Function",Tags:[Global,Ground,Blow,GlitteringSheepMan,BulletParticle]}],Tick:[{Condition:[{Name:"RandomChance",Chance:0.03d}],Settings:[{Name:"Facing",Target:{Look:"Friendly",Radius:32d,IgnoreBlocks:true}}],Name:"Step",Speed:0.5d,SpeedRange:0.5d}]}
#Function
playsound entity.sheep.hurt hostile @a[distance=..32] ~ ~ ~ 1.0 2.0 0
playsound entity.sheep.step hostile @a[distance=..32] ~ ~ ~ 1.0 0.5 0
