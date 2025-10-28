### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:zombie",Tags:[Mob,Enemy,DelayedData,HasAI,CallOnInit,CallOnTimeOut,CallOnDamage,CooldownRequired,HasLootTable,AnalyseLog,"Unmoved"],CustomName:'{"translate":"ポット・デ","color":"#FF009A"}',Silent:true,IsBaby:true,DeathTime:19s,active_effects:[{id:"minecraft:invisibility",amplifier:127b,duration:-1,show_particles:false}],PortalCooldown:3000,DeathLootTable:"empty"}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {ArmorItems:[{},{},{},{id:"minecraft:firework_star",count:1,components:{"minecraft:firework_explosion":{shape:"small_ball",colors:[I;16766331]},"minecraft:custom_model_data":1007}}]}
data modify storage tusb_mob: "即時ステータス"."最大感知範囲" set value 0d
data modify storage tusb_mob: "即時ステータス"."基本移動力" set value 0d
data modify storage tusb_mob: "即時ステータス"."ノックバック耐性" set value 0d
data modify storage tusb_mob: "即時ステータス"."ノックバック力" set value 0d

### 遅延ステータス
# ステータス
data modify storage tusb_mob: "遅延ステータス"."ステータス"."最大HP" set value -2.5
data modify storage tusb_mob: "遅延ステータス"."ステータス"."最大MP" set value -2.5
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理攻撃力" set value -23
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理防御力" set value -5
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法攻撃力" set value -4
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法防御力" set value -5
data modify storage tusb_mob: "遅延ステータス"."ステータス"."理外攻撃力" set value 0
data modify storage tusb_mob: "遅延ステータス"."ステータス"."理外防御力" set value 0
data modify storage tusb_mob: "遅延ステータス"."ステータス".LootTable set value [{Loot:"item:group/drop_item/all/elusive_vase",Count:1,Chance:1d},{Loot:"item:group/magic_stone/tier1_4/mystery",Count:1,Chance:0.3d}]
data modify storage tusb_mob: "遅延ステータス"."ステータス".AnalyseLog set value '[{"translate":"%1$s神出鬼没の壺。倒すと良い事が起きると伝えられているが、そのせいで個体数が減少傾向にある。また壊さずにいると消滅しよくないものを呼ぶとされている。","with":[{"translate":"【能力：コール・引寄無効】","color":"#00FF00"}]}]'
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {Initial:[{Name:"function",Tags:[Global,Event,Function,CommonExe,BlockAlign]}],Time:[{Name:"spawn",SpawnEntities:[[{Tags:[Global,Ground,Summon,ElusiveVase,Aec],Level:1}]]}],Damage:[{Condition:[{Name:"check_block",Inverse:true,Block:[Water,Lava,Air]}],Name:"function",Tags:[Global,Event,Function,CommonExe,UpAlign1]},{Name:"function",Tags:[Global,Event,Function,DamageSound,VaseBreak]},{Name:"merge_nbt",NBT:{NoAI:false,OnGround:false,ArmorItems:[{},{},{},{id:"minecraft:firework_star",Count:1b,tag:{Explosion:{Type:0b,Colors:[I;16766331]},CustomModelData:1009}}]}},{Name:"change_turn",Set:3},{Condition:[{Name:"has_target",Inverse:true,Target:{Look:"Enemy",Radius:0.1d,IgnoreBlocks:true}},{Name:"has_target",Target:{Look:"Enemy",Radius:4d,IgnoreBlocks:true}}],Name:"kill"}],TurnCount:4,Turn:[{Index:1,Skill:[{Interval:{Min:2,Max:2,Current:2},Call:[{Condition:[{Name:"check_nbt",Global:true,NBT:{OnGround:true}}],Name:"function",Tags:[Global,Event,Function,CommonExe,BlockAlign]},{Name:"merge_nbt",NBT:{NoAI:true}},{Name:"change_turn",Set:2}]}]},{Index:2,Skill:[{Interval:{Min:1000,Max:1000,Current:1000},Call:[{}]}]},{Index:3,Skill:[{Interval:{Min:2,Max:2,Current:2},Call:[{Condition:[{Name:"check_nbt",Global:true,NBT:{OnGround:true}}],Name:"function",Tags:[Global,Event,Function,CommonExe,BlockAlign]},{Name:"merge_nbt",NBT:{NoAI:true}},{Name:"change_turn",Set:4}]}]},{Index:4,Skill:[{Interval:{Min:2,Max:2,Current:2},Call:[{Condition:[{Name:"min_hp",HP:61,Percent:true}],Name:"merge_nbt",NBT:{ArmorItems:[{},{},{},{id:"minecraft:firework_star",Count:1b,tag:{Explosion:{Type:0b,Colors:[I;16766331]},CustomModelData:1007}}]}},{Condition:[{Name:"min_hp",Inverse:true,HP:60,Percent:true},{Name:"min_hp",HP:31,Percent:true}],Name:"merge_nbt",NBT:{ArmorItems:[{},{},{},{id:"minecraft:firework_star",Count:1b,tag:{Explosion:{Type:0b,Colors:[I;16766331]},CustomModelData:1008}}]}},{Condition:[{Name:"min_hp",Inverse:true,HP:30,Percent:true}],Name:"merge_nbt",NBT:{ArmorItems:[{},{},{},{id:"minecraft:firework_star",Count:1b,tag:{Explosion:{Type:0b,Colors:[I;16766331]},CustomModelData:1009}}]}}]}],Exit:{Loop:{Max:1,Current:1}}}]}
