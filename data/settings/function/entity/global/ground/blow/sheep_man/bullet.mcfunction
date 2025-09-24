### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:snowball",CustomName:'{"translate":"羊毛弾","color":"#FFFFFF"}',NoGravity:true,PortalCooldown:60,Tags:[DelayedData,CallOnInit,CallOnAttack,TickingRequired,DamageProjectile,EnemyProjectile]}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {Item:{id:"minecraft:white_wool",count:1}}
### 遅延ステータス
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理攻撃力" set value 10
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法攻撃力" set value 10
data modify storage tusb_mob: "遅延ステータス"."ステータス"."理外攻撃力" set value 0
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {Initial:[{Name:"step",Speed:0.5d}],Attack:[{Name:"function",Tags:[Global,Ground,Blow,SheepMan,DamageSound]},{Settings:[{Name:"Anchor",Anchor:"Eyes"},{Name:"Direction",Speed:1d}],Name:"function",Tags:[Global,Ground,Blow,SheepMan,BulletParticle]}]}
#Function
playsound entity.sheep.hurt hostile @a[distance=..32] ~ ~ ~ 1.0 2.0 0
playsound entity.sheep.step hostile @a[distance=..32] ~ ~ ~ 1.0 0.5 0
