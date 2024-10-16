### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:spider",CustomName:'{"translate":"リインフォーススパイダー","color":"#FF0000"}',PortalCooldown:3000,DeathLootTable:"empty",Tags:[Mob,Enemy,DelayedData,HasAI,CallOnDamage,CallOnAttack,TickingRequired,HasLootTable,AnalyseLog]}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {}
data modify storage tusb_mob: "即時ステータス"."最大感知範囲" set value 30d
data modify storage tusb_mob: "即時ステータス"."基本移動力" set value 0.4d
data modify storage tusb_mob: "即時ステータス"."ノックバック耐性" set value 10d
data modify storage tusb_mob: "即時ステータス"."ノックバック力" set value 1d

### 遅延ステータス
# 属性値
data modify storage tusb_mob: "遅延ステータス"."ステータス"."炎属性値" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."氷属性値" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."雷属性値" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."光属性値" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."闇属性値" set value 100
# ステータス
data modify storage tusb_mob: "遅延ステータス"."ステータス"."最大HP" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."最大MP" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理攻撃力" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理防御力" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法攻撃力" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法防御力" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス".LootTable set value [{Loot:"item:group/drop_item/tier1/common",Count:1,Chance:0.3d}]
data modify storage tusb_mob: "遅延ステータス"."ステータス".AnalyseLog set value '[{"translate":"%1$sここは私らの縄張りだ。たまごを破壊するものは許さん！","with":[{"translate":"【能力：移動・射的・追撃・反撃・コール・透明化】","color":"#00FF00"}]}]'
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {Damage:[{Name:"Step",Direction:[-180f,-90f],DirectionRange:[0f,-10.0f],Speed:0.5d,SpeedRange:0.3d}],Attack:[{Name:"Function",Tags:[Underworld,Ground,Blow,SpiderReinforce,SpiderwebEffect]}],TurnCount:4,Turn:[{Index:1,Skill:[{Interval:{Min:1,Max:10,Current:30},Loop:{Max:3,Current:3},Call:[{Settings:[{Name:"Facing",Target:{Look:"Friendly",Radius:24d,IgnoreBlocks:true},Anchor:"Eyes"},{Name:"Rotation",Direction:[-80f,-10f],DirectionRange:[180f,20f]}],Name:"Step",Speed:1.1d}]}],Exit:{Loop:{Max:1,Current:1}}},{Index:2,Skill:[{Interval:{Min:3,Max:3,Current:3},Call:[{Settings:[{Name:"Rotation",Target:{Look:"Player",Radius:32d,IgnoreBlocks:true}}],Name:"Function",Tags:[Global,Event,Function,CommonExe,TpWithRotation]}]}],Exit:{Loop:{Max:1,Current:1}}},{Index:3,Skill:[{Interval:{Min:1,Max:30,Current:20},Call:[{Settings:[{Name:"Facing",Target:{Look:"Player",Radius:32.0d,IgnoreBlocks:true}},{Name:"Direction",Direction:[0f,-5f],Speed:1.4d}],Name:"Spawn",SpawnEntities:[[{Tags:[Underworld,Ground,Blow,SpiderReinforce,SpiderwebShoot],Level:1}]]}],MP:8},{Interval:{Min:1,Max:1,Current:1},Loop:{Max:1,Current:1},Call:[{Settings:[{Name:"Facing",Target:{Look:"Friendly",Radius:24d,IgnoreBlocks:true},Anchor:"Eyes"},{Name:"Rotation",Direction:[-90f,-10f],DirectionRange:[180f,20f]}],Name:"Step",Speed:1.25d}]}],Exit:{Loop:{Max:1,Current:1}}},{Index:3,Skill:[{Interval:{Min:1,Max:100,Current:30},Loop:{Max:3,Current:3},Call:[{Execute:"Random",Name:"MergeNBT",NBT:{active_effects:[{id:"minecraft:invisibility",amplifier:0,duration:100,show_particles:false}]}},{Name:"MergeNBT",NBT:{active_effects:[{id:"minecraft:speed",amplifier:4,duration:-1,show_particles:false}]}}]},{Interval:{Min:10,Max:30,Current:20},Call:[{Condition:[{Name:"RandomChance",Chance:0.5d},{Name:"HasTarget",Target:{Look:"Player",Radius:32.0d,IgnoreBlocks:true}}],Name:"Spawn",SpawnEntities:[[{Tags:[Underworld,Ground,Blow,SpiderReinforce,Egg],Level:1}]]}],Once:3,MP:10}],Exit:{Loop:{Max:1,Current:1}}}]}
