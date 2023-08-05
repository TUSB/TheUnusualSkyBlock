### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:armor_stand",CustomName:'{"translate":"ドゥームソウル","color":"#FF0000","bold":true}',Silent:1b,Invulnerable:1b,Small:1b,Invisible:true,PortalCooldown:300,Tags:[DelayedData,HasAI,CallOnInit,CallOnAttack,CooldownRequired,SmartMotion,Bounce,DamageProjectile,EnemyProjectile]}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {}
### 遅延ステータス
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理攻撃力" set value 125
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法攻撃力" set value 125
data modify storage tusb_mob: "遅延ステータス"."ステータス".DeathCause set value '[{"translate":"%1$sは%2$sがまとう怨念によって心を闇に落とした。","with":[{"selector":"@s"},{"storage":"mob_data:","nbt":"MobName","interpret":true}]}]'
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {Initial:[{Settings:[{Name:"Facing",Target:{Look:"Player",Radius:64d,IgnoreBlocks:true},Anchor:"Eyes"}],Name:"SmartMotion",OnBlock:"Bounce",TP:true,Start:true,Speed:{Set:30d,Range:5d},Gravity:{Set:0d}}],Attack:[{Name:"Kill"}],TurnCount:1,Turn:[{Index:1,Skill:[{Interval:{Min:1,Max:1,Current:1},Loop:{Max:5,Current:5},Call:[{Name:"SmartMotion",Gravity:{Add:40d}}],Once:1},{Interval:{Min:1,Max:1,Current:1},Loop:{Max:10,Current:10},Call:[{Name:"SmartMotion",Gravity:{Add:-40d}}]},{Interval:{Min:1,Max:1,Current:1},Loop:{Max:10,Current:10},Call:[{Name:"SmartMotion",Gravity:{Add:40d}}]}]}]}
