### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:area_effect_cloud",CustomName:'{"translate":"カオスドゥーム","color":"#FF0000","bold":true}',Particle:"block air",Radius:0.001f,Duration:40,Tags:[DelayedData,HasAI,CallOnInit,CallOnTick,DamageProjectile,EnemyProjectile]}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {}
### 遅延ステータス
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理攻撃力" set value 125
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法攻撃力" set value 125
data modify storage tusb_mob: "遅延ステータス"."ステータス".DeathCause set value '[{"translate":"%1$sは%2$sの衝撃波に巻き込まれて、発狂してしまった。","with":[{"selector":"@s"},{"storage":"mob_data:","nbt":"MobName","interpret":true}]}]'
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {Initial:[{Name:"Function",Tags:[Skylands,Sky,Shoot,ImpureSkull,DoomInit]}],Tick:[{Name:"Function",Tags:[Skylands,Sky,Shoot,ImpureSkull,DoomTick1]}],TurnCount:1,Turn:[{Index:1,Skill:[{Interval:{Min:1,Max:1,Current:1},Loop:{Max:1,Current:1},Call:[{Name:"DelayAction",Tags:["Casting","DoomBomb"]}],Once:1},{Interval:{Min:20,Max:20,Current:20},Loop:{Max:1,Current:1},Call:[{Name:"ChangeAI",Tick:[]}],Once:1},{Interval:{Min:11,Max:11,Current:11},Loop:{Max:1,Current:1},Call:[{Name:"Function",Tags:[Skylands,Sky,Shoot,ImpureSkull,DoomDamage1]}],Once:1}]}]}
