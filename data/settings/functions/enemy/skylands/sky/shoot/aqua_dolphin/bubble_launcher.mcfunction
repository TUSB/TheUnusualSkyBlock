### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:armor_stand",CustomName:'{"translate":"バブルランチャー","color":"#FF0000","bold":true}',Tags:[Mob,DelayedData,HasAI,CallOnInit,CallOnTick,TickingRequired,NativeTask,SmartMotion,Break,DamageProjectile,EnemyProjectile,HideLevel],Small:1b,Invisible:1b,Invulnerable:1b,PortalCooldown:100}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {ArmorItems:[{},{},{},{}],DisabledSlots:4144959}
### 遅延ステータス
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理攻撃力" set value 200
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法攻撃力" set value 200
data modify storage tusb_mob: "遅延ステータス"."ステータス".DeathCause set value '[{"translate":"%1$sは%2$sによって泡に包まれた。","with":[{"selector":"@s"},{"storage":"mob_data:","nbt":"MobName","interpret":true}]}]'
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {Initial:[{Settings:[{Name:"Facing",Target:{Look:"Friendly",Radius:32d,IgnoreBlocks:true}}],Name:"SmartMotion",TP:true,Start:true,Speed:{Set:5d},Gravity:{Set:0d}},{Name:"DelayAction",Tags:["Casting","BubbleLauncher"]}],Tick:[{Name:"SmartMotion",Speed:{Add:1d,Limit:100d}}]}
#Function
playsound minecraft:entity.dolphin.death hostile @a[distance=..32] ~ ~ ~ 0.7 1.0 0
