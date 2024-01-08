### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:armor_stand",Tags:[Mob,Enemy,DelayedData,HasAI,CallOnInit,CallOnDamage,TickingRequired,AnalyseLog,"sm.KeepPose","Trap","Unmoved"],CustomName:'{"translate":"トゲの床","color":"#FF8000","bold":true}',Silent:true,Invulnerable:true,ShowArms:false,Invisible:true,Small:true,NoBasePlate:true,DisabledSlots:4144959,PortalCooldown:3000}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {ArmorItems:[{},{},{},{id:"minecraft:firework_star",Count:1b,tag:{Explosion:{Type:0b,Colors:[I;16777215]},CustomModelData:1015}}]}
data modify storage tusb_mob: "即時ステータス"."最大感知範囲" set value 0d
data modify storage tusb_mob: "即時ステータス"."基本移動力" set value 0d
data modify storage tusb_mob: "即時ステータス"."ノックバック耐性" set value 0d
data modify storage tusb_mob: "即時ステータス"."ノックバック力" set value 0d

### 遅延ステータス
# 属性値
data modify storage tusb_mob: "遅延ステータス"."ステータス"."炎属性値" set value 20
data modify storage tusb_mob: "遅延ステータス"."ステータス"."氷属性値" set value 20
data modify storage tusb_mob: "遅延ステータス"."ステータス"."雷属性値" set value 20
data modify storage tusb_mob: "遅延ステータス"."ステータス"."光属性値" set value 20
data modify storage tusb_mob: "遅延ステータス"."ステータス"."闇属性値" set value 20
# ステータス
data modify storage tusb_mob: "遅延ステータス"."ステータス"."最大HP" set value 1625
data modify storage tusb_mob: "遅延ステータス"."ステータス"."最大MP" set value 0
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理攻撃力" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理防御力" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法攻撃力" set value -30
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法防御力" set value -30
data modify storage tusb_mob: "遅延ステータス"."ステータス".AnalyseLog set value '[{"translate":"%1$s敵味方問わずチクっとしますよー","with":[{"translate":"【能力：物理無効・反撃・引寄無効】","color":"#00FF00"}]}]'
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {Initial:[{Name:"Function",Tags:[Global,Event,Function,CommonExe,BlockAlign]}],Damage:[{Name:"ChangeTurn",Set:2}],TurnCount:2,Turn:[{Index:1,Skill:[{Interval:{Min:2,Max:2,Current:2},Loop:{Max:1,Current:1},Call:[{Condition:[{Name:"Function",Tags:[Global,Ground,Blow,ThornFloorTrap,TargetCondition]}],Name:"ChangeTurn",Set:2}]}]},{Index:2,Skill:[{Interval:{Min:4,Max:4,Current:4},Loop:{Max:1,Current:1},Call:[{Name:"MergeNBT",NBT:{ArmorItems:[{},{},{},{id:"minecraft:firework_star",Count:1b,tag:{Explosion:{Type:0b,Colors:[I;16777215]},CustomModelData:1016}}]}}]},{Interval:{Min:4,Max:4,Current:4},Loop:{Max:1,Current:1},Call:[{Name:"MergeNBT",NBT:{ArmorItems:[{},{},{},{id:"minecraft:firework_star",Count:1b,tag:{Explosion:{Type:0b,Colors:[I;16777215]},CustomModelData:1017}}]}}]},{Interval:{Min:3,Max:3,Current:3},Loop:{Max:1,Current:1},Call:[{Name:"MergeNBT",NBT:{ArmorItems:[{},{},{},{id:"minecraft:firework_star",Count:1b,tag:{Explosion:{Type:0b,Colors:[I;16777215]},CustomModelData:1018}}]}},{Name:"Function",Tags:[Global,Ground,Blow,ThornFloorTrap,OperatingNoise]}]},{Interval:{Min:1,Max:1,Current:1},Loop:{Max:1,Current:1},Call:[{Name:"MergeNBT",NBT:{ArmorItems:[{},{},{},{id:"minecraft:firework_star",Count:1b,tag:{Explosion:{Type:0b,Colors:[I;16777215]},CustomModelData:1019}}]}}]},{Interval:{Min:1,Max:1,Current:1},Loop:{Max:1,Current:1},Call:[{Name:"MergeNBT",NBT:{ArmorItems:[{},{},{},{id:"minecraft:firework_star",Count:1b,tag:{Explosion:{Type:0b,Colors:[I;16777215]},CustomModelData:1020}}]}},{Condition:[{Name:"Function",Tags:[Global,Ground,Blow,ThornFloorTrap,TargetCondition]}],Name:"MergeNBT",NBT:{ArmorItems:[{},{},{},{id:"minecraft:firework_star",Count:1b,tag:{Explosion:{Type:0b,Colors:[I;12976128]},CustomModelData:1020}}]}},{Name:"Function",Tags:[Global,Ground,Blow,ThornFloorTrap,DamageCondition],Player:{Damage:20d,BypassArmor:true,BypassResistance:true,DeathCause:'[{"translate":"%1$sは哀れにも%2$sによってケバブめいて貫かれた。","with":[{"selector":"@s"},{"storage":"mob_data:","nbt":"MobName","interpret":true}]}]'},Mob:{Hit:true,Physical:100},Distance:{Max:0.01d},AEC:{Effects:[{Id:2,Amplifier:10b,Duration:60,ShowParticles:false}]}},{Name:"Function",Tags:[Global,Ground,Blow,ThornFloorTrap,Stabbing1]}]},{Interval:{Min:60,Max:60,Current:60},Loop:{Max:1,Current:1},Call:[{Name:"Kill"}]}]}]}
