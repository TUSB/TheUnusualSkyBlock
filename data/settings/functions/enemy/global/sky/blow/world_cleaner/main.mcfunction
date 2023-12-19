### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:armor_stand",CustomName:'{"translate":"ワールドクリーナー","color":"#666666","bold":true}',Silent:true,Invulnerable:true,ShowArms:false,Invisible:true,NoBasePlate:true,DisabledSlots:4144959,PortalCooldown:500,DeathLootTable:"empty",Tags:[DelayedData,HasAI,CallOnInit,CallOnAttack,CallOnTick,TickingRequired,DamageProjectile,EnemyProjectile,FriendlyProjectile,AnalyseLog]}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {ArmorItems:[{},{},{},{id:"minecraft:firework_star",Count:1b,tag:{Explosion:{Type:0b,Colors:[I;1703991]},CustomModelData:1039}}]}
### 遅延ステータス
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理攻撃力" set value 9999
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法攻撃力" set value 9999
data modify storage tusb_mob: "遅延ステータス"."ステータス".DeathCause set value '[{"translate":"%1$sは%2$sに触れたことによって虚無の彼方へと消えた。","with":[{"selector":"@s"},{"storage":"mob_data:","nbt":"MobName","interpret":true}]}]'
data modify storage tusb_mob: "遅延ステータス"."ステータス".AnalyseLog set value '[{"translate":"%1$s清掃者。バン■ル、■ュルカーボックスを除■全てのアイテムを■■する。","with":[{"translate":"【■力：清掃】","color":"#FF0000"}]}]'
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {Initial:[{}],Attack:[{}],Tick:[{}],ProjectileDamage:{Physical:9999}}
