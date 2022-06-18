### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:armor_stand",Silent:1b,Invulnerable:1b,Small:1b,Invisible:1b,PortalCooldown:200,DeathLootTable:"empty",Tags:[DelayedData,HasAI,CallOnInit,CallOnTimeOut,CallOnAttack,CallOnBlock,CooldownRequired,NativeTask,SmartMotion,Bounce,DamageProjectile,EnemyProjectile]}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {ArmorItems:[{},{},{},{id:"minecraft:ender_eye",Count:1b}]}
### 遅延ステータス
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理攻撃力" set value 200
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法攻撃力" set value 200
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {Initial:[{Settings:[{Name:"Facing",Target:{Look:"Player",Radius:64,IgnoreBlocks:true}}],Name:"SmartMotion",TP:1b,Speed:{Set:50},Gravity:{Set:70}}],Time:[{Name:"Kill"}],Attack:[{Name:"Function",Tags:[End,Boss,Blow,NightmareEye,ArrestBulletHitSound]},{Name:"Function",Tags:[End,Boss,Blow,NightmareEye,ArrestBulletEffect]},{Condition:[{Name:"RandomChance",Chance:0.05d}],Name:"Function",Tags:[End,Boss,Blow,NightmareEye,ArrestBulletCurseEffect]},{Name:"Kill"}],Block:[{Name:"Function",Tags:[End,Boss,Blow,NightmareEye,ArrestBulletBlockSound]}],TurnCount:1,Turn:[{Index:1,Skill:[{Interval:{Min:1,Max:1,Current:1},Loop:{Max:1,Current:1},Call:[{Settings:[{Name:"Anchor",Anchor:"Eyes"}],Name:"Function",Tags:[End,Boss,Blow,NightmareEye,ArrestBulletAppearance]}]}],Exit:{Loop:{Max:1,Current:1}}}],ProjectileDamage:{Physical:100,Dark:100}}
