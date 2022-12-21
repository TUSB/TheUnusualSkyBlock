### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:armor_stand",CustomName:'{"translate":"ルナティック・ソウル","color":"#FFFFFF"}',NoGravity:1b,Silent:1b,Invulnerable:1b,Small:1b,Invisible:1b,PortalCooldown:20,Tags:[DelayedData,CallOnInit,CallOnAttack,TickingRequired,DamageProjectile,EnemyProjectile]}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {}
data modify storage tusb_mob: "遅延ステータス"."ステータス".DeathCause set value '[{"translate":"%1$sは%2$によって感電して狂ってしまった。","with":[{"selector":"@s"},{"storage":"mob_data:","nbt":"MobName","interpret":true}]}]'
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {Initial:[{Name:"Damage",Player:{DamageType:[Global,Fire,Blast]},Distance:{Min:0.1d,Max:1d}},{Condition:[{Name:"RandomChance",Chance:0.4d}],Name:"Function",Tags:[DebugRoom,Sky,Shoot,NightmareEye,Paralysis]},{Name:"Function",Tags:[DebugRoom,Sky,Shoot,NightmareEye,LunaticSoulThunderAppearance]},{Name:"Kill"}],Attack:[{Condition:[{Name:"RandomChance",Chance:0.6d}],Name:"Function",Tags:[DebugRoom,Sky,Shoot,NightmareEye,Paralysis]}]}
#Function
playsound entity.lightning_bolt.impact master @a ~ ~ ~ 1.0 2.0 1.0
