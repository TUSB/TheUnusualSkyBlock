### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:wolf",Team:"Friendly",Tags:[Mob,DelayedData,HasAI,TickingRequired,DamageProjectile,FriendlyProjectile,AnalyseLog,BeforeEvolution],CustomNameVisible:true,CustomName:'{"translate":"フレンド・ウルフ","color":"#FFFF00","bold":true}',ActiveEffects:[{Id:11b,Amplifier:4b,Duration:50}],Motion:[0d,0.5d,0d],PortalCooldown:3000,DeathLootTable:"empty"}
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
data modify storage tusb_mob: "遅延ステータス"."ステータス".AnalyseLog set value '[{"translate":"ボ〇〇〇〇ー！！(規制音)"}]'
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {TurnCount:5,Turn:[{Index:1,Skill:[{Interval:{Min:2,Max:2,Current:2},Loop:{Max:1,Current:1},Call:[{Name:"ChangeAI",Tick:[{}]},{Name:"MergeNBT",NBT:{NoGravity:false}}]}],Exit:{Loop:{Max:1,Current:1}}},{Index:2,Skill:[{Interval:{Min:80,Max:80,Current:80},Call:[{Condition:[{Name:"HasTarget",Target:{Look:"Enemy",Radius:8d,IgnoreBlocks:true}}],Name:"ChangeTurn",Set:3}]}]},{Index:3,Skill:[{Interval:{Min:2,Max:2,Current:2},Loop:{Max:1,Current:1},Call:[{Name:"Function",Tags:[Global,Friendly,Blow,FriendWolf,HowlingSound]}]},{Interval:{Min:60,Max:60,Current:60},Loop:{Max:1,Current:1},Call:[{Name:"ChangeAI",Tick:[{Name:"Function",Tags:[Global,Friendly,Blow,FriendWolf,ThunderRush1]}]}]},{Interval:{Min:2,Max:2,Current:2},Loop:{Max:1,Current:1},Call:[{Condition:[{Name:"HasTarget",Target:{Look:"Enemy",Radius:16d,IgnoreBlocks:true}}],Name:"ChangeTurn",Set:4},{Condition:[{Name:"HasTarget",Inverse:true,Target:{Look:"Enemy",Radius:16d,IgnoreBlocks:true}}],Name:"ChangeTurn",Set:1}]}]},{Index:4,Skill:[{Interval:{Min:2,Max:2,Current:2},Loop:{Max:1,Current:1},Call:[{Name:"MergeNBT",NBT:{NoGravity:true,ActiveEffects:[{Id:14b,Amplifier:127b,Duration:2147483647,ShowParticle:false},{Id:28b,Amplifier:1b,Duration:2147483647,ShowParticle:false}]}}]},{Interval:{Min:2,Max:2,Current:2},Loop:{Max:1,Current:1},Call:[{Name:"ChangeAI",Tick:[{Name:"Function",Tags:[Global,Friendly,Blow,FriendWolf,ThunderRush1]},{Name:"Function",Tags:[Global,Friendly,Blow,FriendWolf,ThunderRush2]}]}]}],Exit:{Loop:{Max:2,Current:2}}},{Index:5,Skill:[{Interval:{Min:20,Max:60,Current:20},Loop:{Max:1,Current:1,Range:3},Call:[{Settings:[{Name:"Facing",Target:{Look:"Enemy",Radius:24d}},{Name:"Anchor",Anchor:"Eyes"}],Name:"Step",Speed:3d}]},{Interval:{Min:2,Max:2,Current:2},Loop:{Max:1,Current:1},Call:[{Settings:[{Name:"At",Target:{Look:"Player",Radius:24}},{Name:"Direction",Direction:[-180f,0f],Speed:2d}],Condition:[{Name:"HasTarget",Inverse:true,Target:{Look:"Enemy",Radius:16d,IgnoreBlocks:true}},{Name:"CheckNBT",NBT:{OnGround:false}}],Name:"Teleport"}]},{Interval:{Min:2,Max:2,Current:2},Loop:{Max:1,Current:1},Call:[{Condition:[{Name:"HasTarget",Inverse:true,Target:{Look:"Enemy",Radius:16d,IgnoreBlocks:true}}],Name:"ChangeTurn",Set:1}]}]}],ProjectileDamage:{Physical:50,Lightning:50}}
#Function
execute if score _ Level matches 2 as @e[distance=0,tag=!Initialized] at @s run function skill:act/summoner/summon_snow_golem/health_boost
#Ownerを設定
data modify entity @e[tag=!Initialized,distance=0,limit=1] Owner set from entity @s UUID
#CollarColorをランダムに設定
execute store result score _ Calc run function calc:random
scoreboard players set _ _ 16
execute store result entity @e[tag=!Initialized,distance=0,limit=1] CollarColor byte 1 run scoreboard players operation _ Calc %= _ _
