### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:fireball",CustomName:'{"translate":"アサガストの火球","color":"#FFFFFF","bold":true}',ExplosionPower:1b,NoGravity:1b,PortalCooldown:600,Tags:[DelayedData,CallOnInit,CooldownRequired,DamageProjectile,EnemyProjectile]}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {}
### 遅延ステータス
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理攻撃力" set value 0
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法攻撃力" set value 0
data modify storage tusb_mob: "遅延ステータス"."ステータス".DeathCause set value '[{"translate":"%1$sは%2$sの熱いモーニングコールを受けて爆破されてしまった。","with":[{"selector":"@s"},{"storage":"mob_data:","nbt":"MobName","interpret":true}]}]'
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {Initial:[{Settings:[{Name:"Facing",Target:{Look:"Player",Radius:64d,IgnoreBlocks:true},Anchor:"Eyes"},{Name:"Rotation",Direction:[-5f,-5f],DirectionRange:[10f,10f]}],Name:"Step",Speed:0.5d},{Name:"Function",Tags:[Skylands,Sky,Shoot,MorningGhast,Sound]}]}
