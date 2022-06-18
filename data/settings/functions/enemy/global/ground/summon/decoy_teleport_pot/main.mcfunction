### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:zombie",CustomName:'{"translate":"デコイテレポット","color":"#FFFF00"}',Silent:true,IsBaby:true,DeathTime:19s,ActiveEffects:[{Id:14b,Amplifier:127b,Duration:2147483647,ShowParticles:false}],PortalCooldown:3000,DeathLootTable:"empty",Tags:[Mob,Enemy,DelayedData,HasAI,CallOnDeath,CallOnInit,CallOnTimeOut,CallOnDamage,TickingRequired,HasLootTable]}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {ArmorItems:[{},{},{},{id:"minecraft:firework_star",Count:1b,tag:{Explosion:{Type:0,Colors:[I;6684641]},CustomModelData:1007}}],DisabledSlots:4144959}
data modify storage tusb_mob: "即時ステータス"."最大感知範囲" set value 0d
data modify storage tusb_mob: "即時ステータス"."基本移動力" set value 0d
data modify storage tusb_mob: "即時ステータス"."ノックバック耐性" set value 0d
data modify storage tusb_mob: "即時ステータス"."ノックバック力" set value 0d

### 遅延ステータス
# 属性値
data modify storage tusb_mob: "遅延ステータス"."ステータス"."炎属性値" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."氷属性値" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."雷属性値" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."光属性値" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."闇属性値" set value 100
# ステータス
data modify storage tusb_mob: "遅延ステータス"."ステータス"."最大HP" set value -2.5
data modify storage tusb_mob: "遅延ステータス"."ステータス"."最大MP" set value -2.5
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理攻撃力" set value -23
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理防御力" set value -5
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法攻撃力" set value -4
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法防御力" set value -5
data modify storage tusb_mob: "遅延ステータス"."ステータス".LootTable set value [{Loot:"item:group/vanilla_item/tier_all/ender_pearl",Count:1,Chance:1d}]
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {Initial:[{Name:"Function",Tags:[Global,Event,Function,Common,BlockAlign]}],Death:[{Name:"Spawn",SpawnEntities:[[{Tags:[Global,Ground,Summon,DecoyTeleportPot,Aec],Level:1}]]}],Time:[{Name:"ChangeAI",Death:[{}]}],Damage:[{Name:"Function",Tags:[Global,Event,Function,DamageSound,VaseBreak]},{Name:"MergeNBT",NBT:{NoAI:false,OnGround:false,ArmorItems:[{},{},{},{id:"minecraft:firework_star",Count:1b,tag:{Explosion:{Type:0,Colors:[I;6684641]},CustomModelData:1009}}]}},{Name:"ChangeTurn",Set:3}],TurnCount:4,Turn:[{Index:1,Skill:[{Interval:{Min:2,Max:2,Current:2},Call:[{CallOnExit:true,Condition:[{Name:"CheckNBT",Global:true,NBT:{OnGround:true}}],Name:"Function",Tags:[Global,Event,Function,Common,BlockAlign]},{Name:"MergeNBT",NBT:{NoAI:true}},{Name:"ChangeTurn",Set:2}]}]},{Index:2,Skill:[{Interval:{Min:1000,Max:1000,Current:1000},Call:[{}]}]},{Index:3,Skill:[{Interval:{Min:2,Max:2,Current:2},Call:[{CallOnExit:true,Condition:[{Name:"CheckNBT",Global:true,NBT:{OnGround:true}}],Name:"Function",Tags:[Global,Event,Function,Common,BlockAlign]},{Name:"MergeNBT",NBT:{NoAI:true}},{Name:"ChangeTurn",Set:4}]}]},{Index:4,Skill:[{Interval:{Min:2,Max:2,Current:2},Call:[{Condition:[{Name:"MinHP",HP:61,Percent:true}],Name:"MergeNBT",NBT:{ArmorItems:[{},{},{},{id:"minecraft:firework_star",Count:1b,tag:{Explosion:{Type:0,Colors:[I;6684641]},CustomModelData:1007}}]}},{Condition:[{Name:"MinHP",Inverse:true,HP:60,Percent:true},{Name:"MinHP",HP:31,Percent:true}],Name:"MergeNBT",NBT:{ArmorItems:[{},{},{},{id:"minecraft:firework_star",Count:1b,tag:{Explosion:{Type:0,Colors:[I;6684641]},CustomModelData:1008}}]}},{Condition:[{Name:"MinHP",Inverse:true,HP:30,Percent:true}],Name:"MergeNBT",NBT:{ArmorItems:[{},{},{},{id:"minecraft:firework_star",Count:1b,tag:{Explosion:{Type:0,Colors:[I;6684641]},CustomModelData:1009}}]}}]}],Exit:{Loop:{Max:1,Current:1}}}]}
