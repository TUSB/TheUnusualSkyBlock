### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:item",CustomName:'{"translate":"item.minecraft.glistering_melon_slice","color":"#FFFFFF","bold":true}',PickupDelay:32767,Age:0,Tags:[DelayedData,HasAI,CallOnAttack,CooldownRequired,DamageProjectile,EnemyProjectile,AnalyseLog,"SleepgaImmune","Unmoved"],PortalCooldown:1200}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {Item:{id:"minecraft:glistering_melon_slice",Count:1b}}
### 遅延ステータス
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理攻撃力" set value 75
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法攻撃力" set value 75
data modify storage tusb_mob: "遅延ステータス"."ステータス".DeathCause set value '[{"translate":"きらめくスイカに不用意に近づいた%1$sは爆散してしまった。","with":[{"selector":"@s"},{"storage":"mob_data:","nbt":"MobName","interpret":true}]}]'
data modify storage tusb_mob: "遅延ステータス"."ステータス".AnalyseLog set value '[{"translate":"%1$s爆発するただのスイカ。","with":[{"translate":"【能力：爆発】","color":"#00FF00"}]}]'
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {Attack:[{Name:"Kill"},{Name:"Damage",Explosion:3}],TurnCount:1,Turn:[{Index:1}]}
