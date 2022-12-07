### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:armor_stand",Silent:1b,Invulnerable:1b,Small:1b,Marker:1b,NoGravity:1b,Invisible:true,PortalCooldown:20,DeathLootTable:"empty",Tags:[DelayedData,HasAI,CallOnInit,CooldownRequired]}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {}
### 遅延ステータス
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理攻撃力" set value 150
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法攻撃力" set value 100
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {Initial:[{Name:"Function",Tags:[Skylands,Ground,Shoot,SatSpider,MagnumSound]},{Settings:[{Name:"As",Target:{Look:"Self"}},{Name:"Facing",Target:{Look:"Player",Radius:32d,IgnoreBlocks:true},Anchor:"Eyes"},{Name:"Rotation",Direction:[-5f,-5f],DirectionRange:[10f,10f]},{Name:"Anchor",Anchor:"Eyes"}],Name:"Function",Tags:[Global,Event,Function,CommonExe,TpWithRotation]}],TurnCount:1,Turn:[{Index:1,Skill:[{Interval:{Min:1,Max:1,Current:2},Loop:{Max:1,Current:1},Call:[{Name:"Function",Tags:[Skylands,Ground,Shoot,SatSpider,MagnumInit]},{Settings:[{Name:"Direction",Speed:2d}],Name:"Function",Tags:[Global,Event,Function,CommonExe,TpWithRotation]}],Once:12}]}]}
