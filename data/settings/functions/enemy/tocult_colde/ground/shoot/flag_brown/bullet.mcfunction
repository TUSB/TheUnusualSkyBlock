### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:armor_stand",Invisible:1b,Invulnerable:1b,PortalCooldown:80,Tags:[DelayedData,HasAI,CallOnDeath,CallOnInit,CallOnAttack,CallOnBlock,CallOnTick,TickingRequired,SmartMotion,Break,DamageProjectile,EnemyProjectile]}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {ArmorItems:[{},{},{},{}],DisabledSlots:4144959}
### 遅延ステータス
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理攻撃力" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法攻撃力" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス".DeathCause set value '[{"translate":"%1$sは%2$sによって未知の手段で死亡した。","with":[{"selector":"@s"},{"storage":"mob_data:","nbt":"MobName","interpret":true}]}]'
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {Initial:[{Name:"SmartMotion",TP:1b,Speed:{Set:120}}],Death:[{Name:"Damage",Explosion:4}],Attack:[{Name:"Damage",Explosion:4}],Block:[{Name:"Damage",Explosion:4}],Tick:[{Name:"ChangeAI",Tick:[{Name:"MergeNBT",NBT:{ArmorItems:[{},{},{},{id:"minecraft:firework_star",Count:1b,tag:{Explosion:{Type:0b,Colors:[I;16754017]},CustomModelData:125}}],DisabledSlots:4144959}},{Name:"ChangeAI",Tick:[{}]}]}]}
