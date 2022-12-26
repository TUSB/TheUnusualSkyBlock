### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:snowball",CustomName:'{"translate":"ナイトメア・ギフト","color":"#FFFFFF"}',NoGravity:true,Tags:[DelayedData,HasAI,CallOnAttack,CallOnTick,DamageProjectile,EnemyProjectile]}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {Item:{id:"minecraft:ender_eye",Count:1b,tag:{Enchantments:[{}]}}}
### 遅延ステータス
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理攻撃力" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法攻撃力" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス".DeathCause set value '[{"translate":"「...ここは...?」%1$sは%2$sを受け取って永い眠りについた。","with":[{"selector":"@s"},{"storage":"mob_data:","nbt":"MobName","interpret":true}]}]'
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {Attack:[{Name:"Function",Tags:[DebugRoom,Sky,Shoot,NightmareEye,GiftMissileEffect]},{Condition:[{Name:"RandomChance",Chance:0.07d}],Name:"Function",Tags:[DebugRoom,Sky,Shoot,NightmareEye,Debility]}],Tick:[{Name:"Function",Tags:[DebugRoom,Sky,Shoot,NightmareEye,GiftMissileAppearance]}],TurnCount:6,Turn:[{Index:1,Skill:[{Interval:{Min:1,Max:1,Current:20},Loop:{Max:1,Current:1},Call:[{}]}],Exit:{Loop:{Max:1,Current:1}}},{Index:2,Skill:[{Interval:{Min:1,Max:1,Current:1},Loop:{Max:1,Current:1},Call:[{Settings:[{Name:"Direction",Target:{Look:"Player",Radius:64d,IgnoreBlocks:true},Direction:[-180f,-90f],DirectionRange:[360f,80f],Speed:5d}],Name:"Teleport",Message:true},{Name:"Function",Tags:[DebugRoom,Sky,Shoot,NightmareEye,TeleportDirection]}]}],Exit:{Loop:{Max:1,Current:1}}},{Index:3,Skill:[{Interval:{Min:1,Max:1,Current:1},Loop:{Max:1,Current:1},Call:[{Settings:[{Name:"Rotation",Target:{Look:"Player",Radius:64d,IgnoreBlocks:true},Direction:[0f,-90f]}],Name:"Function",Tags:[DebugRoom,Sky,Shoot,NightmareEye,GiftMissileLaunchDirection]}]}],Exit:{Time:10,TimeCount:10}},{Index:4,Target:{Look:"Player",Radius:64d,IgnoreBlocks:1b},Move:{Front:0.25d},Rotate:[-1f,-1f],Skill:[{Interval:{Min:1,Max:1,Current:1},Loop:{Max:1,Current:1},Call:[{}]}],Exit:{Time:60,TimeCount:60}},{Index:5,Skill:[{Interval:{Min:1,Max:1,Current:1},Loop:{Max:1,Current:1},Call:[{}]}],Exit:{Time:60,TimeCount:60}},{Index:6,Skill:[{Interval:{Min:1,Max:1,Current:1},Loop:{Max:1,Current:1},Call:[{Name:"Kill"}]}]}]}