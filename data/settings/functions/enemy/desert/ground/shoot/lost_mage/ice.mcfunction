### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:snowball",CustomName:'{"translate":"ロストメイジの氷魔法","color":"#FFFFFF"}',Silent:1b,PortalCooldown:200,Tags:[DelayedData,CallOnInit,CallOnTimeOut,TickingRequired,DamageProjectile,EnemyProjectile]}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {Item:{id:"minecraft:blue_ice",Count:1b}}
### 遅延ステータス
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理攻撃力" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法攻撃力" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス".DeathCause set value '[{"translate":"%1$sは%2$sにより美しい氷のオブジェにされた。","with":[{"selector":"@s"},{"storage":"mob_data:","nbt":"MobName","interpret":true}]}]'
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {Initial:[{Settings:[{Name:"Facing",Target:{Look:"Player",Radius:64d,IgnoreBlocks:true}}],Name:"Step",Direction:[-30f,-30f],DirectionRange:[60f,10f],Speed:0.55d},{Name:"Function",Tags:[Desert,Ground,Shoot,LostMage,IceMagicSquare]}],Time:[{Name:"Kill"}]}
#Function
playsound block.amethyst_cluster.step hostile @a ~ ~ ~ 1.0 2.0 1.0
playsound entity.item.pickup hostile @a ~ ~ ~ 1.0 2.0 1.0
