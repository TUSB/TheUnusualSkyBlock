### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:wolf",Team:"Friendly",Tags:[Mob,DelayedData,HasAI,CallOnInit,TickingRequired,DamageProjectile,FriendlyProjectile,AnalyseLog,"BeforeEvolution"],CustomNameVisible:true,CustomName:'{"translate":"フレンド・ウルフ","color":"#FFFF00","bold":true}',active_effects:[{id:"minecraft:resistance",amplifier:4b,duration:50}],Motion:[0d,0.5d,0d],PortalCooldown:3000,DeathLootTable:"empty"}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {}
data modify storage tusb_mob: "即時ステータス"."最大感知範囲" set value 48d
data modify storage tusb_mob: "即時ステータス"."基本移動力" set value 0.29d
data modify storage tusb_mob: "即時ステータス"."ノックバック耐性" set value 0d
data modify storage tusb_mob: "即時ステータス"."ノックバック力" set value 2d

### 遅延ステータス
# ステータス
data modify storage tusb_mob: "遅延ステータス"."ステータス"."最大HP" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."最大MP" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理攻撃力" set value 200
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理防御力" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法攻撃力" set value 200
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法防御力" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."理外攻撃力" set value 0
data modify storage tusb_mob: "遅延ステータス"."ステータス"."理外防御力" set value 0
data modify storage tusb_mob: "遅延ステータス"."ステータス".AnalyseLog set value '[{"translate":"%1$sボ〇〇〇〇ー！！(規制音)","with":[{"translate":"【能力：格闘・移動】","color":"#00FF00"}]}]'
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {Initial:[{Name:"function",Tags:[Global,Friendly,Blow,FriendWolf,ThunderRush1]}],TurnCount:5,Turn:[{Index:1,Skill:[{Interval:{Min:10,Max:10,Current:10},Loop:{Max:1,Current:1},Call:[{Name:"change_ai",Tick:[{}]},{Name:"merge_nbt",NBT:{NoGravity:false,active_effects:[{id:"minecraft:invisibility",amplifier:127b,duration:0,show_particles:false},{id:"minecraft:slow_falling",amplifier:1b,duration:0,show_particles:false}]}}]}],Exit:{Loop:{Max:1,Current:1}}},{Index:2,Skill:[{Interval:{Min:10,Max:10,Current:10},Call:[{Condition:[{Name:"has_target",Target:{Look:"Enemy",Radius:8d,IgnoreBlocks:true}}],Name:"change_turn",Set:3}]}]},{Index:3,Skill:[{Interval:{Min:10,Max:10,Current:10},Loop:{Max:1,Current:1},Call:[{Name:"function",Tags:[Global,Friendly,Blow,FriendWolf,HowlingSound]}]},{Interval:{Min:20,Max:20,Current:20},Loop:{Max:1,Current:1},Call:[{Name:"change_ai",Tick:[{Name:"function",Tags:[Global,Friendly,Blow,FriendWolf,ThunderRush1]}]}]},{Interval:{Min:10,Max:10,Current:10},Loop:{Max:1,Current:1},Call:[{Condition:[{Name:"has_target",Target:{Look:"Enemy",Radius:16d,IgnoreBlocks:true}}],Name:"change_turn",Set:4},{Condition:[{Name:"has_target",Inverse:true,Target:{Look:"Enemy",Radius:16d,IgnoreBlocks:true}}],Name:"change_turn",Set:1}]}]},{Index:4,Skill:[{Interval:{Min:10,Max:10,Current:10},Loop:{Max:1,Current:1},Call:[{Name:"merge_nbt",NBT:{NoGravity:true,active_effects:[{id:"minecraft:invisibility",amplifier:127b,duration:-1,show_particles:false},{id:"minecraft:slow_falling",amplifier:1b,duration:-1,show_particles:false}]}}]},{Interval:{Min:10,Max:10,Current:10},Loop:{Max:1,Current:1},Call:[{Name:"change_ai",Tick:[{Name:"function",Tags:[Global,Friendly,Blow,FriendWolf,ThunderRush1]}]}]}],Exit:{Loop:{Max:2,Current:2}}},{Index:5,Skill:[{Interval:{Min:20,Max:30,Current:20},Loop:{Max:1,Current:1,Range:4},Call:[{Settings:[{Name:"Facing",Target:{Look:"Enemy",Radius:24d}},{Name:"Anchor",Anchor:"Eyes"}],Name:"step",Speed:3d},{Name:"function",Tags:[Global,Friendly,Blow,FriendWolf,Lightning]},{Name:"function",Tags:[Global,Event,Function,CommonExe,RandomRotation]},{Name:"function",Tags:[Global,Friendly,Blow,FriendWolf,Lightning]}]},{Interval:{Min:2,Max:2,Current:2},Loop:{Max:1,Current:1},Call:[{Settings:[{Name:"At",Target:{Look:"Player",Radius:24}},{Name:"Direction",Direction:[-180f,0f],Speed:2d}],Condition:[{Name:"has_target",Inverse:true,Target:{Look:"Enemy",Radius:16d,IgnoreBlocks:true}},{Name:"check_nbt",NBT:{OnGround:false}}],Name:"teleport"}]},{Interval:{Min:2,Max:2,Current:2},Loop:{Max:1,Current:1},Call:[{Condition:[{Name:"has_target",Global:true,Inverse:true,Target:{Look:"Enemy",Radius:16d,IgnoreBlocks:true}}],Name:"merge_nbt",NBT:{NoGravity:false,active_effects:[{id:"minecraft:invisibility",amplifier:127b,duration:0,show_particles:false}]}},{Name:"change_turn",Set:1}]}]}],ProjectileDamage:{physical:50,magic:50}}
#Function
execute if score _ Level matches 2 as @e[distance=0,tag=!Initialized] at @s run function skill:act/summoner/summon_snow_golem/health_boost
#Ownerを設定
data modify entity @e[tag=!Initialized,distance=0,limit=1] Owner set from entity @s UUID
#CollarColorをランダムに設定
execute store result score _ Calc run function calc:random
scoreboard players set _ _ 16
execute store result entity @e[tag=!Initialized,distance=0,limit=1] CollarColor byte 1 run scoreboard players operation _ Calc %= _ _
