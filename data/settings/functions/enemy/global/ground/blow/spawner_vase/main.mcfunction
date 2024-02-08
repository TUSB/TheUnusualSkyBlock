### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:zombie",Tags:[Mob,Enemy,DelayedData,HasAI,CallOnInit,CallOnDamage,CooldownRequired,HasLootTable,AnalyseLog,"Unmoved"],CustomName:'{"translate":"スポット","color":"#FF0000"}',Silent:true,IsBaby:true,DeathTime:19s,ActiveEffects:[{Id:14,Amplifier:127b,Duration:-1,ShowParticles:false}],PortalCooldown:3000,DeathLootTable:"empty"}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {ArmorItems:[{},{},{},{id:"minecraft:firework_star",Count:1b,tag:{Explosion:{Type:0b,Colors:[I;16711680]},CustomModelData:1007}}],DisabledSlots:4144959}
data modify storage tusb_mob: "即時ステータス"."最大感知範囲" set value 0d
data modify storage tusb_mob: "即時ステータス"."基本移動力" set value 0d
data modify storage tusb_mob: "即時ステータス"."ノックバック耐性" set value 0d
data modify storage tusb_mob: "即時ステータス"."ノックバック力" set value 0d

### 遅延ステータス
# 属性値
data modify storage tusb_mob: "遅延ステータス"."ステータス"."炎属性値" set value 10
data modify storage tusb_mob: "遅延ステータス"."ステータス"."氷属性値" set value 10
data modify storage tusb_mob: "遅延ステータス"."ステータス"."雷属性値" set value 10
data modify storage tusb_mob: "遅延ステータス"."ステータス"."光属性値" set value 10
data modify storage tusb_mob: "遅延ステータス"."ステータス"."闇属性値" set value 10
# ステータス
data modify storage tusb_mob: "遅延ステータス"."ステータス"."最大HP" set value 97.5
data modify storage tusb_mob: "遅延ステータス"."ステータス"."最大MP" set value 97.5
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理攻撃力" set value -5
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理防御力" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法攻撃力" set value -5
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法防御力" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス".LootTable set value [{Loot:"item:group/magic_stone/tier1_7/mix",Count:3,Chance:0.3d},{Loot:"item:group/magic_stone/tier1_4/mystery",Count:1,Chance:0.3d}]
data modify storage tusb_mob: "遅延ステータス"."ステータス".AnalyseLog set value '[{"translate":"%1$s瘴気を振りまき敵を湧かせる壺であり、塩っ辛く酸っぱい珍味としての価値もある。","with":[{"translate":"【能力：コール・引寄無効】","color":"#00FF00"}]}]'
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {Initial:[{Name:"Function",Tags:[Global,Event,Function,CommonExe,BlockAlign]}],Damage:[{Condition:[{Name:"CheckBlock",Inverse:true,Block:[Water,Lava,Air]}],Name:"Function",Tags:[Global,Event,Function,CommonExe,UpAlign1]},{Condition:[{Name:"HasTarget",Target:{Look:"Player",Radius:32d,IgnoreBlocks:true}}],Name:"Function",Tags:[Global,Event,Function,CommonExe,SummonFromRegion]},{Name:"Function",Tags:[Global,Event,Function,DamageSound,VaseBreak]},{Name:"MergeNBT",NBT:{NoAI:false,OnGround:false,ArmorItems:[{},{},{},{id:"minecraft:firework_star",Count:1b,tag:{Explosion:{Type:0b,Colors:[I;16711680]},CustomModelData:1009}}]}},{Name:"ChangeTurn",Set:3}],TurnCount:4,Turn:[{Index:1,Skill:[{Interval:{Min:2,Max:2,Current:2},Call:[{Condition:[{Name:"CheckNBT",Global:true,NBT:{OnGround:true}}],Name:"Function",Tags:[Global,Event,Function,CommonExe,BlockAlign]},{Name:"MergeNBT",NBT:{NoAI:true}},{Name:"ChangeTurn",Set:2}]}]},{Index:2,Skill:[{Interval:{Min:20,Max:100,Current:40},Call:[{Condition:[{Name:"HasTarget",Target:{Look:"Enemy",Radius:32d}},{Name:"MP",MP:10,Percent:true}],Name:"Function",Tags:[Global,Event,Function,CommonExe,SummonFromRegion]},{Condition:[{Name:"MinMP",MP:61,Percent:true}],Name:"MergeNBT",NBT:{ArmorItems:[{},{},{},{id:"minecraft:firework_star",Count:1b,tag:{Explosion:{Type:0b,Colors:[I;11534336]},CustomModelData:1007}}]}},{Condition:[{Name:"MinMP",Inverse:true,MP:60,Percent:true},{Name:"MinMP",MP:31,Percent:true}],Name:"MergeNBT",NBT:{ArmorItems:[{},{},{},{id:"minecraft:firework_star",Count:1b,tag:{Explosion:{Type:0b,Colors:[I;6815744]},CustomModelData:1008}}]}},{Condition:[{Name:"MinMP",Inverse:true,MP:30,Percent:true}],Name:"MergeNBT",NBT:{ArmorItems:[{},{},{},{id:"minecraft:firework_star",Count:1b,tag:{Explosion:{Type:0b,Colors:[I;4390912]},CustomModelData:1009}}]}},{Condition:[{Name:"MinMP",Inverse:true,MP:1,Percent:true}],Name:"Kill"}]}]},{Index:3,Skill:[{Interval:{Min:2,Max:2,Current:2},Call:[{Condition:[{Name:"CheckNBT",Global:true,NBT:{OnGround:true}}],Name:"Function",Tags:[Global,Event,Function,CommonExe,BlockAlign]},{Name:"MergeNBT",NBT:{NoAI:true}},{Name:"ChangeTurn",Set:4}]}]},{Index:4,Skill:[{Interval:{Min:2,Max:2,Current:2},Call:[{Condition:[{Name:"MinHP",HP:61,Percent:true}],Name:"MergeNBT",NBT:{ArmorItems:[{},{},{},{id:"minecraft:firework_star",Count:1b,tag:{Explosion:{Type:0b,Colors:[I;16711680]},CustomModelData:1007}}]}},{Condition:[{Name:"MinHP",Inverse:true,HP:60,Percent:true},{Name:"MinHP",HP:31,Percent:true}],Name:"MergeNBT",NBT:{ArmorItems:[{},{},{},{id:"minecraft:firework_star",Count:1b,tag:{Explosion:{Type:0b,Colors:[I;16711680]},CustomModelData:1008}}]}},{Condition:[{Name:"MinHP",Inverse:true,HP:30,Percent:true}],Name:"MergeNBT",NBT:{ArmorItems:[{},{},{},{id:"minecraft:firework_star",Count:1b,tag:{Explosion:{Type:0b,Colors:[I;16711680]},CustomModelData:1009}}]}}]}],Exit:{Loop:{Max:1,Current:1}}}]}
