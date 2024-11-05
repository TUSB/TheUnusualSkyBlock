### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:vindicator",CustomName:'{"translate":"完全体赤キノコ","color":"#FF0000","bold":true}',Silent:true,PatrolLeader:false,Patrolling:false,CanJoinRaid:false,active_effects:[{id:"minecraft:invisibility",amplifier:127b,duration:-1,show_particles:false},{id:"minecraft:slow_falling",amplifier:1b,duration:-1,show_particles:false}],PortalCooldown:3000,Tags:[Mob,Enemy,DelayedData,HasAI,CallOnDamage,CallOnAttack,TickingRequired,HasLootTable,AnalyseLog]}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {ArmorItems:[{},{},{},{id:"scute",Count:1b,tag:{CustomModelData:3}}],ArmorDropChances:[-1E40f,-1E40f,-1E40f,-1E40f]}
data modify storage tusb_mob: "即時ステータス"."最大感知範囲" set value 32d
data modify storage tusb_mob: "即時ステータス"."基本移動力" set value 0.31d
data modify storage tusb_mob: "即時ステータス"."ノックバック耐性" set value 1d
data modify storage tusb_mob: "即時ステータス"."ノックバック力" set value 4d

### 遅延ステータス
# 属性値
data modify storage tusb_mob: "遅延ステータス"."ステータス"."炎属性値" set value 1
data modify storage tusb_mob: "遅延ステータス"."ステータス"."氷属性値" set value 80
data modify storage tusb_mob: "遅延ステータス"."ステータス"."雷属性値" set value 80
data modify storage tusb_mob: "遅延ステータス"."ステータス"."光属性値" set value 130
data modify storage tusb_mob: "遅延ステータス"."ステータス"."闇属性値" set value -100
# ステータス
data modify storage tusb_mob: "遅延ステータス"."ステータス"."最大HP" set value 150
data modify storage tusb_mob: "遅延ステータス"."ステータス"."最大MP" set value 50
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理攻撃力" set value 200
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理防御力" set value 50
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法攻撃力" set value 50
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法防御力" set value 50
data modify storage tusb_mob: "遅延ステータス"."ステータス".LootTable set value [{Loot:"item:group/drop_item/tier2/common",Count:1,Chance:0.3d},{Loot:"item:item/mushroom_stew/mana/giant",Count:1,Chance:1d}]
data modify storage tusb_mob: "遅延ステータス"."ステータス".AnalyseLog set value '[{"translate":"%1$s見てみて～赤くなってきた～！","with":[{"translate":"【能力：移動・追撃・反撃・MP吸収】","color":"#00FF00"}]}]'
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {Damage:[{Name:"Function",Tags:[Underworld,Ground,Blow,RedMushroom,SporeVeil]},{Name:"Damage",Player:{DamageType:[Global,Fire,Blast,Projectile],DeathCause:'[{"translate":"%1$sは%2$sの胞子によってくしゃみが止まらなくなったので家に帰った。","with":[{"selector":"@s"},{"storage":"mob_data:","nbt":"MobName","interpret":true}]}]'},MP:{MP:30,Absorb:true},Distance:{Max:2.5d},AEC:{effects:[{id:"minecraft:invisibility",amplifier:9b,duration:5}]}},{Name:"Function",Tags:[Global,Event,Function,DamageSound,Amorphous]},{Name:"Function",Tags:[Global,Event,Function,DamageSound,Dark]}],Attack:[{Name:"Function",Tags:[Underworld,Ground,Blow,RedMushroom,SporeVeil]},{Name:"Damage",Player:{DamageType:[Global,Fire,Blast,Projectile],DeathCause:'[{"translate":"%1$sは%2$sの胞子によってくしゃみが止まらなくなったので家に帰った。","with":[{"selector":"@s"},{"storage":"mob_data:","nbt":"MobName","interpret":true}]}]'},MP:{MP:60,Absorb:true},Distance:{Max:2.5d},AEC:{effects:[{id:"minecraft:invisibility",amplifier:9b,duration:5}]}},{Name:"Function",Tags:[Global,Event,Function,DamageSound,Amorphous]}],TurnCount:3,Turn:[{Index:1,Skill:[{Interval:{Min:60,Max:60,Current:60},Call:[{}]}],Exit:{Loop:{Max:1,Current:1}}},{Index:2,Skill:[{Interval:{Min:20,Max:20,Current:20},Call:[{Condition:[{Name:"HasTarget",Target:{Look:"Player",Radius:30d},Half:"front"}],Name:"ChangeTurn",Loop:1}]}]},{Index:3,Skill:[{Interval:{Min:1,Max:1,Current:1},Call:[{Settings:[{Name:"Facing",Target:{Look:"Friendly",Radius:64d,IgnoreBlocks:true},Anchor:"Eyes"}],Name:"SmartMotion",OnBlock:"Slide",TP:true,Start:true,Speed:{Set:0d},Gravity:{Set:100d}}],MP:1},{Interval:{Min:20,Max:20,Current:20},Loop:{Max:1,Current:1},Call:[{Settings:[{Name:"Facing",Target:{Look:"Friendly",Radius:64d,IgnoreBlocks:true},Anchor:"Eyes"}],Name:"SmartMotion",TP:true,Speed:{Set:50d}}],MP:1},{Interval:{Min:2,Max:2,Current:2},Loop:{Max:5,Current:5,Range:15},Call:[{Name:"Function",Tags:[Global,Event,Function,CommonExe,SmartMotionToRotation]},{Name:"Function",Tags:[Underworld,Ground,Blow,RedMushroom,SporeVeil]},{Name:"Damage",Player:{DamageType:[Global,Fire,Blast,Projectile],DeathCause:'[{"translate":"%1$sは%2$sの胞子によってくしゃみが止まらなくなったので家に帰った。","with":[{"selector":"@s"},{"storage":"mob_data:","nbt":"MobName","interpret":true}]}]'},Distance:{Max:2.5d},AEC:{effects:[{id:"minecraft:invisibility",amplifier:9b,duration:5}]}},{Name:"SmartMotion",TP:true,Speed:{Add:15d,Limit:100d}}],MP:1},{Interval:{Min:2,Max:2,Current:2},Loop:{Max:10,Current:10},Call:[{Name:"Function",Tags:[Global,Event,Function,CommonExe,SmartMotionToRotation]},{Name:"Function",Tags:[Underworld,Ground,Blow,RedMushroom,SporeVeil]},{Name:"Damage",Player:{DamageType:[Global,Fire,Blast,Projectile],DeathCause:'[{"translate":"%1$sは%2$sの胞子によってくしゃみが止まらなくなったので家に帰った。","with":[{"selector":"@s"},{"storage":"mob_data:","nbt":"MobName","interpret":true}]}]'},Distance:{Max:2.5d},AEC:{effects:[{id:"minecraft:invisibility",amplifier:9b,duration:5}]}},{Name:"SmartMotion",TP:true,Speed:{Add:-20d,Limit:0d}}],MP:1},{Interval:{Min:2,Max:2,Current:2},Loop:{Max:5,Current:5},Call:[{Name:"SmartMotion",TP:true,Speed:{Add:-20d,Limit:0d}}]},{Interval:{Min:20,Max:20,Current:20},Loop:{Max:1,Current:1},Call:[{Name:"SmartMotion",Stop:true,OnBlock:"Stick",Speed:{Set:0d},Gravity:{Set:100d}},{Condition:[{Name:"HasTarget",Inverse:true,Target:{Look:"Player",Radius:48d,IgnoreBlocks:true}}],Name:"ChangeTurn",Set:1}]},{Interval:{Min:5,Max:25,Current:10},Loop:{Max:1,Current:1},Call:[{}]}]}]}
