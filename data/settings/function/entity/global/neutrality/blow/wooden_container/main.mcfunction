### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:zombie",Tags:[Mob,Enemy,DelayedData,HasAI,CallOnDeath,CallOnInit,CallOnDamage,TickingRequired,HasLootTable,AnalyseLog,"NonBurst","Trap"],CustomName:'{"translate":"木のコンテナ","color":"#FF8000","bold":true}',Silent:true,IsBaby:true,DeathTime:19s,active_effects:[{id:"minecraft:invisibility",amplifier:127b,duration:-1,show_particles:false}],PortalCooldown:3000,DeathLootTable:"empty"}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {ArmorItems:[{},{},{},{id:"minecraft:carrot_on_a_stick",count:1,components:{"minecraft:unbreakable":{},"minecraft:custom_model_data":1014}}]}
data modify storage tusb_mob: "即時ステータス"."最大感知範囲" set value 0d
data modify storage tusb_mob: "即時ステータス"."基本移動力" set value 0d
data modify storage tusb_mob: "即時ステータス"."ノックバック耐性" set value 0d
data modify storage tusb_mob: "即時ステータス"."ノックバック力" set value 0d

### 遅延ステータス
# ステータス
data modify storage tusb_mob: "遅延ステータス"."ステータス"."最大HP" set value -25
data modify storage tusb_mob: "遅延ステータス"."ステータス"."最大MP" set value -25
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理攻撃力" set value -50
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理防御力" set value -5
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法攻撃力" set value -4
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法防御力" set value -5
data modify storage tusb_mob: "遅延ステータス"."ステータス"."理外攻撃力" set value 0
data modify storage tusb_mob: "遅延ステータス"."ステータス"."理外防御力" set value 0
data modify storage tusb_mob: "遅延ステータス"."ステータス".LootTable set value [{Loot:"item:group/drop_item/all/wooden_container",Count:1,Chance:1d}]
data modify storage tusb_mob: "遅延ステータス"."ステータス".AnalyseLog set value '[{"translate":"%1$s物資が入った無害箱。ただしたまに爆弾が混入している。","with":[{"translate":"【能力：コール・ノンバースト】","color":"#00FF00"}]}]'
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {Initial:[{Name:"function",Tags:[Global,Event,Function,CommonExe,TrapSpawnLimit]},{Name:"function",Tags:[Global,Event,Function,CommonExe,BlockAlign]}],Death:[{Name:"function",Tags:[Global,Neutrality,Blow,WoodenContainer,BreakingContainer]}],Damage:[{Name:"function",Tags:[Global,Neutrality,Blow,WoodenContainer,BangingContainer]},{Name:"merge_nbt",NBT:{NoAI:false,OnGround:false}},{Name:"change_turn",Set:3}],TurnCount:3,Turn:[{Index:1,Skill:[{Interval:{Min:2,Max:2,Current:2},Call:[{Condition:[{Name:"check_nbt",Global:true,NBT:{OnGround:true}}],Name:"function",Tags:[Global,Event,Function,CommonExe,BlockAlign]},{Name:"merge_nbt",NBT:{NoAI:true}},{Name:"change_turn",Set:2}]}]},{Index:2,Skill:[{Interval:{Min:1000,Max:1000,Current:1000},Call:[{}]}]},{Index:3,Skill:[{Interval:{Min:2,Max:2,Current:2},Call:[{Condition:[{Name:"check_nbt",Global:true,NBT:{OnGround:true}}],Name:"function",Tags:[Global,Event,Function,CommonExe,BlockAlign]},{Name:"merge_nbt",NBT:{NoAI:true}},{Name:"change_turn",Set:1}]}]}]}
