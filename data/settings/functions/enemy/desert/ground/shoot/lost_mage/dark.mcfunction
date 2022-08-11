### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:snowball",NoGravity:1b,Silent:1b,CustomName:'{"translate":"ロストメイジの闇魔法","color":"#FFFFFF"}',Silent:1b,PortalCooldown:60,Tags:[DelayedData,CallOnInit,CallOnTimeOut,TickingRequired,DamageProjectile,EnemyProjectile]}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {}
data modify storage tusb_mob: "遅延ステータス"."ステータス".DeathCause set value '[{"translate":"%1$sは%2$によって虚無に還ってしまった。","with":[{"selector":"@s"},{"storage":"mob_data:","nbt":"MobName","interpret":true}]}]'
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {Initial:[{Settings:[{Name:"Facing",Target:{Look:"Player",Radius:64d,IgnoreBlocks:true}}],Name:"Step",Speed:1d}],Time:[{Name:"Kill"}]}
