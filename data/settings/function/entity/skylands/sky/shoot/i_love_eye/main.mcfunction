### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:zombie_villager",CustomName:'[{"translate":"t","color":"#440066","obfuscated":true},{"translate":"u","color":"#53007D","obfuscated":true},{"translate":"s","color":"#68009C","obfuscated":true},{"translate":"b","color":"#8300C4","obfuscated":true},{"translate":"目玉アイ好家","color":"#AA00FF","bold":true,"obfuscated":false},{"translate":"b","color":"#8300C4","obfuscated":true},{"translate":"s","color":"#68009C","obfuscated":true},{"translate":"u","color":"#53007D","obfuscated":true},{"translate":"t","color":"#440066","obfuscated":true}]',NoGravity:1b,Silent:1b,active_effects:[{id:"minecraft:fire_resistance",amplifier:1b,duration:-1,show_particles:0b}],Tags:[Mob,Enemy,DelayedData,HasAI,CallOnDeath,CallOnInit,CallOnTick,CooldownRequired,AnalyseLog,"Boss","SleepgaImmune","Unmoved"],PortalCooldown:7000,DeathLootTable:"empty"}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {HandItems:[{id:"minecraft:carrot_on_a_stick",count:1,components:{"minecraft:unbreakable":{},"minecraft:custom_model_data":4}},{}],ArmorItems:[{},{},{id:"minecraft:leather_chestplate",count:1,components:{"minecraft:dyed_color":11104511,"minecraft:unbreakable":{}}},{id:"minecraft:player_head",count:1,components:{"minecraft:profile":{id:[I;1,0,63,0],properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYjI5ODU4MzM0OGUzNjYyN2VhZGJkYzkxYjdhMzEyYjZkOTBhMDVjYzQ2NjZjMGI0ODU1YmYzMjRkMTdiNWE3MyJ9fX0="}]}}}],HandDropChances:[-Infinityf,-Infinityf],ArmorDropChances:[-Infinityf,-Infinityf,-Infinityf,-Infinityf]}
data modify storage tusb_mob: "即時ステータス"."最大感知範囲" set value 0d
data modify storage tusb_mob: "即時ステータス"."基本移動力" set value 0.25d
data modify storage tusb_mob: "即時ステータス"."ノックバック耐性" set value 1d
data modify storage tusb_mob: "即時ステータス"."ノックバック力" set value 0d

### 遅延ステータス
# ステータス
data modify storage tusb_mob: "遅延ステータス"."ステータス"."最大HP" set value 250
data modify storage tusb_mob: "遅延ステータス"."ステータス"."最大MP" set value 0
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理攻撃力" set value 0
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理防御力" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法攻撃力" set value 0
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法防御力" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."理外攻撃力" set value 0
data modify storage tusb_mob: "遅延ステータス"."ステータス"."理外防御力" set value 0
data modify storage tusb_mob: "遅延ステータス"."ステータス".AnalyseLog set value '[{"translate":"%1$s私にも見える。見えるわぁ。","with":[{"translate":"【能力：不明】","color":"#AA00FF"}]}]'
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {Initial:[{Name:"function",Tags:[Skylands,Sky,Shoot,ILoveEye,SpawnLimit]},{Name:"function",Tags:[Skylands,Sky,Shoot,ILoveEye,MainInit1]}],Death:[{Name:"function",Tags:[Skylands,Sky,Shoot,ILoveEye,MainDeath1]}],Tick:[{Condition:[{Name:"function",Tags:[Skylands,Sky,Shoot,ILoveEye,MainTick]}],Name:"change_turn",Set:2}],Passenger:{Type:"down",Check:false,Call:[{Name:"kill"}]},TurnCount:2,Turn:[{Index:1,Skill:[{Interval:{Min:40,Max:40,Current:120},Loop:{Max:1,Current:2,Range:2},Call:[{Condition:[{Name:"has_target",Global:true,Target:{Look:"Player",Radius:64d,IgnoreBlocks:true}}]},{Settings:[{Name:"Direction",Direction:[-180f,0f],DirectionRange:[360f,0f],Speed:0d,SpeedRange:3d,Absolute:{Vertical:true}},{Name:"Direction",Direction:[0f,-90f],Speed:2d,Absolute:{Vertical:true}}],Name:"function",Tags:[Skylands,Sky,Shoot,ILoveEye,MainSummon]}]},{Interval:{Min:300,Max:500,Current:300},Loop:{Max:1,Current:1},Call:[{}]}]},{Index:2,Skill:[{Interval:{Min:1,Max:1,Current:1},Loop:{Max:1,Current:1},Call:[{Name:"spawn",SpawnEntities:[[{Tags:[Global,Event,Function,FireExplosion,AecHuge],Level:1}]]},{Name:"function",Tags:[Global,Event,Function,AttackSound,Explosion]},{Name:"damage",Player:{DamageType:[Global,Blast],DeathCause:'[{"translate":"%2$sは爆散した！ そして不幸にも%1$sはその爆発に巻き込まれてしまった！","with":[{"selector":"@s"},{"storage":"mob_data:","nbt":"MobName","interpret":true}]}]'},Mob:{Fire:100},Distance:{Max:5d}},{Name:"kill"}]}]}]}
