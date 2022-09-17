### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:arrow",CustomName:'{"translate":"デッドリーアロー","color":"#FFFFFF"}',life:1,Fire:30000s,Color:9109504,PortalCooldown:80,Tags:[DelayedData,CallOnDeath,CallOnInit,CooldownRequired]}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {}
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {Initial:[{Name:"Step",Speed:1.8d}],Death:[{Name:"Spawn",SpawnEntities:[[{Tags:[Global,Event,Function,FireExplosion,Aec],Level:1}]]},{Name:"Damage",Player:{DamageType:[Blast],DeathCause:'[{"translate":"%1$sは三角様の%2$sによって爆散した。","with":[{"selector":"@s"},{"storage":"mob_data:","nbt":"MobName"}]}]'},Distance:{Max:4d},Explosion:-1}]}
