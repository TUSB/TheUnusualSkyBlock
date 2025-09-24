### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:snowball",CustomName:'{"translate":"呪怨魂","color":"#FFFFFF","bold":true}',Item:{id:"minecraft:firework_star",Count:1b,tag:{CustomModelData:8,Explosion:{Type:0b,Colors:[I;16777215]}}},PortalCooldown:120,DeathLootTable:"empty",Tags:[DelayedData,HasAI,CallOnInit,CallOnAttack,CallOnTick,CooldownRequired,DamageProjectile,EnemyProjectile]}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {}
### 遅延ステータス
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理攻撃力" set value 75
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法攻撃力" set value 40
data modify storage tusb_mob: "遅延ステータス"."ステータス"."理外攻撃力" set value 0
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {Initial:[{Settings:[{Name:"Facing",Target:{Look:"Player",Radius:32d,IgnoreBlocks:true},Anchor:"Eyes"}],Name:"step",Speed:1.5d,SpeedRange:0.5d},{Name:"function",Tags:[Skylands,Ground,Shoot,BlackGrudge2,Direction2]}],Attack:[{Condition:[{Name:"random_chance",Chance:0.2d}],Name:"function",Tags:[Skylands,Ground,Blow,BlackGrudge,Debuff2]}],Tick:[{Name:"function",Tags:[Skylands,Ground,Shoot,BlackGrudge2,Direction]}],TurnCount:1,Turn:[{Index:1,Skill:[{Interval:{Min:2,Max:2,Current:2},Loop:{Max:1,Current:1},Call:[{Name:"damage",Player:{Effectiveness:100,DeathCause:'[{"translate":"%1$sは%2$sのまとう強力な呪いによって、息を引き取った。","with":[{"selector":"@s"},{"storage":"mob_data:","nbt":"MobName","interpret":true}]}]'},Distance:{Max:2.5d}},{Condition:[{Name:"has_target",Target:{Look:"Player",Radius:2.5d,IgnoreBlocks:true}},{Name:"random_chance",Chance:0.1d}],Name:"function",Tags:[Skylands,Ground,Blow,BlackGrudge,Debuff2]}]}]}]}
