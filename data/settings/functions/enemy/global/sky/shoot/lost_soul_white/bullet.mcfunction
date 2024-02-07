### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:snowball",NoGravity:true,CustomName:'{"translate":"迷える魂","color":"#FFFFFF","bold":true}',PortalCooldown:600,Tags:[DelayedData,HasAI,CallOnInit,CallOnTick,CooldownRequired,DamageProjectile,EnemyProjectile]}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {Item:{id:"minecraft:firework_star",Count:1b,tag:{CustomModelData:4,Explosion:{Type:0b,Colors:[I;16777215]}}}}
### 遅延ステータス
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理攻撃力" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法攻撃力" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス".DeathCause set value '[{"translate":"%1$sは%2$sの呪いの力によって奈落に落とされた。","with":[{"selector":"@s"},{"storage":"mob_data:","nbt":"MobName","interpret":true}]}]'
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {Initial:[{Settings:[{Name:"Facing",Target:{Look:"Player",Radius:64d,IgnoreBlocks:true}}],Name:"Step",Speed:0.6d}],Tick:[{Name:"Function",Tags:[Global,Sky,Shoot,LostSoulWhite,BulletAppearance]}]}
