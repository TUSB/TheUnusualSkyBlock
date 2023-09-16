### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:armor_stand",CustomName:'{"translate":"ブチギレファイアー","color":"#FFFFFF","bold":true}',Silent:1b,Invulnerable:1b,Invisible:1b,DisabledSlots:4144959,Small:1b,NoGravity:1b,Tags:[DelayedData,HasAI,CallOnAttack,CallOnBlock,CallOnTick,DamageProjectile,EnemyProjectile]}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {Item:{id:"minecraft:stick",Count:1b,tag:{CustomModelData:1}}}
### 遅延ステータス
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理攻撃力" set value 125
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法攻撃力" set value 125
data modify storage tusb_mob: "遅延ステータス"."ステータス".DeathCause set value '[{"translate":"%1$sは%2$sによって灰になった。","with":[{"selector":"@s"},{"storage":"mob_data:","nbt":"MobName","interpret":true}]}]'
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {Attack:[{Name:"Kill"},{Name:"Function",Tags:[Skylands,Ground,Shoot,GrimoireZombie,FireBulletSound]},{Name:"Function",Tags:[Skylands,Ground,Shoot,GrimoireZombie,FireBulletDebuff]}],Block:[{Name:"Kill"},{Name:"Function",Tags:[Skylands,Ground,Shoot,GrimoireZombie,FireBulletSound]}],Tick:[{Name:"Function",Tags:[Skylands,Ground,Shoot,GrimoireZombie,FireBulletTick]}],TurnCount:1,Turn:[{Index:1,Skill:[{Interval:{Min:20,Max:20,Current:20},Loop:{Max:1,Current:1},Call:[{Name:"MergeNBT",NBT:{NoGravity:false}},{Settings:[{Name:"Facing",Target:{Look:"Player",Radius:32d,IgnoreBlocks:true},Anchor:"Eyes"}],Name:"SmartMotion",OnBlock:"Break",TP:true,Start:true,Speed:{Set:10d},Gravity:{Set:0d}},{Condition:[{Name:"HasTarget",Inverse:true,Target:{Look:"Player",Radius:32d}}],Name:"Kill"}],Once:1},{Interval:{Min:2,Max:2,Current:2},Loop:{Max:2,Current:2},Call:[{Name:"SmartMotion",Speed:{Add:5d}}],Once:50}]}]}
#Function
# 音
    playsound entity.blaze.shoot hostile @a[distance=..32] ~ ~ ~ 1 0.75 0
    playsound entity.blaze.shoot hostile @a[distance=..32] ~ ~ ~ 1 0.8 0 
    playsound entity.blaze.shoot hostile @a[distance=..32] ~ ~ ~ 1 0.85 0
