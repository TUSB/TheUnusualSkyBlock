### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:zombie",Tags:[Mob,Enemy,DelayedData,HasAI,CallOnDeath,CallOnInit,CallOnTimeOut,CallOnDamage,TickingRequired,AnalyseLog,"Unmoved"],CustomName:'{"translate":"ブラックテレポット","color":"#FF009A"}',Silent:true,IsBaby:true,DeathTime:19s,active_effects:[{id:"minecraft:invisibility",amplifier:127b,duration:-1,show_particles:false}],PortalCooldown:3000,DeathLootTable:"empty"}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {ArmorItems:[{},{},{},{id:"minecraft:firework_star",Count:1b,tag:{Explosion:{Type:0b,Colors:[I;4079166]},CustomModelData:1007}}]}
data modify storage tusb_mob: "即時ステータス"."最大感知範囲" set value 0d
data modify storage tusb_mob: "即時ステータス"."基本移動力" set value 0d
data modify storage tusb_mob: "即時ステータス"."ノックバック耐性" set value 0d
data modify storage tusb_mob: "即時ステータス"."ノックバック力" set value 0d

### 遅延ステータス
# 属性値
data modify storage tusb_mob: "遅延ステータス"."ステータス"."炎属性値" set value 10
data modify storage tusb_mob: "遅延ステータス"."ステータス"."氷属性値" set value 50
data modify storage tusb_mob: "遅延ステータス"."ステータス"."雷属性値" set value 10
data modify storage tusb_mob: "遅延ステータス"."ステータス"."光属性値" set value 10
data modify storage tusb_mob: "遅延ステータス"."ステータス"."闇属性値" set value 0
# ステータス
data modify storage tusb_mob: "遅延ステータス"."ステータス"."最大HP" set value 97.5
data modify storage tusb_mob: "遅延ステータス"."ステータス"."最大MP" set value 97.5
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理攻撃力" set value -23
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理防御力" set value -5
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法攻撃力" set value -4
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法防御力" set value -5
data modify storage tusb_mob: "遅延ステータス"."ステータス".AnalyseLog set value '[{"translate":"%1$s倒すことで半径16ブロック内に存在する敵を32m以内にいる遠くのプレイヤーに送り付けるフィールドを展開する黒い壺。視界内に補足した状態で攻撃を加えると闘争を図る。","with":[{"translate":"【能力：ワープ・反撃・引寄・引寄無効】","color":"#00FF00"}]}]'
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {Initial:[{Name:"Function",Tags:[Global,Event,Function,CommonExe,BlockAlign]}],Death:[{Condition:[{Name:"HasTarget",Inverse:true,Target:{Look:"Player",Radius:32d}}],Settings:[{Name:"At",Target:{Look:"Player",Radius:32,IgnoreBlocks:true}},{Name:"Direction",Direction:[0f,-90f],Speed:6d,Absolute:{Vertical:true}}],Name:"Spawn",SpawnEntities:[[{Tags:[Global,Ground,Summon,BlackTeleportPot,Aec],Level:1}]]},{Condition:[{Name:"HasTarget",Target:{Look:"Player",Radius:32d}}],Name:"Spawn",SpawnEntities:[[{Tags:[Global,Ground,Summon,BlackTeleportPot,Loot],Level:1}]]}],Time:[{Name:"Function",Tags:[Global,Event,Function,CommonParticle,Flash]},{Name:"ChangeAI",Death:[{}]}],Damage:[{Condition:[{Name:"HasTarget",Target:{Look:"Player",Radius:32d,IgnoreBlocks:true}}],Name:"Function",Tags:[Global,Event,Function,CommonExe,SummonFromRegion]},{Condition:[{Name:"CheckBlock",Inverse:true,Block:[Water,Lava,Air]}],Name:"Function",Tags:[Global,Event,Function,CommonExe,UpAlign1]},{Condition:[{Name:"HasTarget",Target:{Look:"Player",Radius:32d}}],Name:"Function",Tags:[Global,Event,Function,CommonExe,ReduceExistingTimeToZero]},{Name:"Function",Tags:[Global,Event,Function,DamageSound,VaseBreak]},{Name:"MergeNBT",NBT:{NoAI:false,OnGround:false,ArmorItems:[{},{},{},{id:"minecraft:firework_star",Count:1b,tag:{Explosion:{Type:0b,Colors:[I;4079166]},CustomModelData:1009}}]}},{Name:"ChangeTurn",Set:3}],TurnCount:4,Turn:[{Index:1,Skill:[{Interval:{Min:2,Max:2,Current:2},Call:[{Condition:[{Name:"CheckNBT",Global:true,NBT:{OnGround:true}}],Name:"Function",Tags:[Global,Event,Function,CommonExe,BlockAlign]},{Name:"MergeNBT",NBT:{NoAI:true}},{Name:"ChangeTurn",Set:2}]}]},{Index:2,Skill:[{Interval:{Min:1000,Max:1000,Current:1000},Call:[{}]}]},{Index:3,Skill:[{Interval:{Min:2,Max:2,Current:2},Call:[{Condition:[{Name:"CheckNBT",Global:true,NBT:{OnGround:true}}],Name:"Function",Tags:[Global,Event,Function,CommonExe,BlockAlign]},{Name:"MergeNBT",NBT:{NoAI:true}},{Name:"ChangeTurn",Set:4}]}]},{Index:4,Skill:[{Interval:{Min:2,Max:2,Current:2},Call:[{Condition:[{Name:"MinHP",HP:61,Percent:true}],Name:"MergeNBT",NBT:{ArmorItems:[{},{},{},{id:"minecraft:firework_star",Count:1b,tag:{Explosion:{Type:0b,Colors:[I;4079166]},CustomModelData:1007}}]}},{Condition:[{Name:"MinHP",Inverse:true,HP:60,Percent:true},{Name:"MinHP",HP:31,Percent:true}],Name:"MergeNBT",NBT:{ArmorItems:[{},{},{},{id:"minecraft:firework_star",Count:1b,tag:{Explosion:{Type:0b,Colors:[I;4079166]},CustomModelData:1008}}]}},{Condition:[{Name:"MinHP",Inverse:true,HP:30,Percent:true}],Name:"MergeNBT",NBT:{ArmorItems:[{},{},{},{id:"minecraft:firework_star",Count:1b,tag:{Explosion:{Type:0b,Colors:[I;4079166]},CustomModelData:1009}}]}}]}],Exit:{Loop:{Max:1,Current:1}}}]}
