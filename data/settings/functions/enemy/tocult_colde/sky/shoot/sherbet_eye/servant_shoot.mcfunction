### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:armor_stand",Silent:1b,Invulnerable:1b,Small:1b,Invisible:1b,PortalCooldown:200,Tags:[DelayedData,HasAI,CallOnInit,CallOnAttack,CallOnBlock,CooldownRequired,NativeTask,SmartMotion,Bounce,DamageProjectile,EnemyProjectile]}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {ArmorItems:[{},{},{},{id:"minecraft:blue_ice",Count:1b}]}
### 遅延ステータス
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理攻撃力" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法攻撃力" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス".DeathCause set value '[{"translate":"%1$sはシャーベットサーバントの%2$sによって死んでしまった。","with":[{"selector":"@s"},{"storage":"mob_data:","nbt":"MobName","interpret":true}]}]'
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {Initial:[{Settings:[{Name:"Facing",Target:{Look:"Player",Radius:32,IgnoreBlocks:true}}],Name:"SmartMotion",TP:1b,Speed:{Set:50},Gravity:{Set:70}}],Attack:[{Name:"Function",Tags:[Global,Event,Function,DamageSound,Ice]},{Name:"Function",Tags:[TocultColde,Sky,Shoot,SherbetEye,ServantShootDebuff]}],Block:[{Name:"Function",Tags:[TocultColde,Sky,Shoot,SherbetEye,ServantShootSound]}],TurnCount:1,Turn:[{Index:1,Skill:[{Interval:{Min:1,Max:1,Current:1},Loop:{Max:1,Current:1},Call:[{Name:"Function",Tags:[TocultColde,Sky,Shoot,SherbetEye,ServantShootAppearance]}]}],Exit:{Loop:{Max:1,Current:1}}}]}
