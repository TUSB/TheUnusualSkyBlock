### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:snowball",CustomName:'{"translate":"羊毛弾","color":"#FFFFFF"}',NoGravity:true,PortalCooldown:60,Tags:[DelayedData,CallOnInit,CallOnAttack,TickingRequired,DamageProjectile,EnemyProjectile]}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {Item:{id:"minecraft:white_wool",Count:1b}}
### 遅延ステータス
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理攻撃力" set value 10
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法攻撃力" set value 10
data modify storage tusb_mob: "遅延ステータス"."ステータス".DeathCause set value '[{"translate":"%1$sはチュートリアルを読まなかったので、哀れにも%2$sの羊毛の角に当たってしまいその日は家に帰宅した。","with":[{"selector":"@s"},{"storage":"mob_data:","nbt":"MobName","interpret":true}]}]'
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {Initial:[{Name:"Step",Speed:0.5d}],Attack:[{Name:"Function",Tags:[Global,Ground,Blow,SheepMan,DamageSound]},{Settings:[{Name:"Direction",Direction:[0f,-90f],Speed:1d,Absolute:{Vertical:true}},{Name:"Direction",Direction:[180f,0f],Speed:1d,Absolute:{Horizontal:true}}],Name:"Function",Tags:[Global,Ground,Blow,SheepMan,BulletParticle]}]}
#Function
playsound entity.sheep.hurt hostile @a[distance=..32] ~ ~ ~ 1.0 2.0 0
playsound entity.sheep.step hostile @a[distance=..32] ~ ~ ~ 1.0 0.5 0
