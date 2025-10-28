### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:armor_stand",Silent:1b,CustomName:'{"translate":"蒼白魂","color":"#FFFFFF","bold":true}',Invulnerable:1b,Small:1b,Invisible:1b,PortalCooldown:200,DeathLootTable:"empty",Tags:[DelayedData,HasAI,CallOnInit,CallOnAttack,TickingRequired,SmartMotion,Break,DamageProjectile,EnemyProjectile]}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {}
### 遅延ステータス
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理攻撃力" set value 50
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法攻撃力" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."理外攻撃力" set value 0
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {Initial:[{Settings:[{Name:"Facing",Target:{Look:"Player",Radius:64d,IgnoreBlocks:true}}],Name:"smart_motion",TP:1b,Speed:{Set:15},Gravity:{Set:0}},{Condition:[{Name:"has_target",Inverse:true,Target:{Look:"Player",Radius:64d,IgnoreBlocks:true}}],Name:"kill"},{Name:"function",Tags:[Skylands,Ground,Shoot,PaleSpirit,Sound]}],Attack:[{Condition:[{Name:"random_chance",Chance:0.75d}],Name:"function",Tags:[Skylands,Ground,Shoot,PaleSpirit,Effect2]},{Name:"kill"}],TurnCount:1,Turn:[{Index:1,Skill:[{Interval:{Min:1,Max:1,Current:1},Loop:{Max:1,Current:1},Call:[{Settings:[{Name:"Facing",Target:{Look:"Player",Radius:64d,IgnoreBlocks:true},Anchor:"Eyes"}],Name:"smart_motion",TP:1b,Speed:{Set:15}},{Settings:[{Name:"Anchor",Anchor:"Eyes"}],Name:"function",Tags:[Skylands,Ground,Shoot,PaleSpirit,BulletAppearance]}]}],Exit:{Loop:{Max:1,Current:1}}}]}
