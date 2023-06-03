### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:firework_rocket",NoGravity:true,Silent:true,Life:0.5,LifeTime:30,ShotAtAngle:true,PortalCooldown:120,Tags:[DelayedData,CallOnInit,TickingRequired,DamageProjectile,EnemyProjectile]}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {FireworksItem:{id:"minecraft:warped_fungus_on_a_stick",Count:1,tag:{display:{color:16777215},Fireworks:{Explosions:[{Type:1,Flicker:1b,Trail:1b,Colors:[I;16777215]}]}}}}
### 遅延ステータス
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理攻撃力" set value 200
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法攻撃力" set value 100
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {Initial:[{Name:"Step",Speed:2d}]}
