### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:armor_stand",Tags:[Mob,Enemy,DelayedData,HasAI,CallOnDeath,CallOnInit,CallOnDamage,TickingRequired,NativeTask,SmartMotion,Bounce,DamageProjectile,EnemyProjectile,Ugomekusuna_LootAdd,sm.KeepPose],CustomName:'{"translate":"ウゴメクスナ","color":"#FF0000","bold":true}',Silent:true,Invulnerable:true,ShowArms:false,Invisible:true,NoBasePlate:true,DisabledSlots:4144959,PortalCooldown:3000}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {ArmorItems:[{},{},{},{id:"minecraft:firework_star",Count:1b,tag:{Explosion:{Type:0,Colors:[I;65516]},CustomModelData:1006}}]}
data modify storage tusb_mob: "即時ステータス"."最大感知範囲" set value 0d
data modify storage tusb_mob: "即時ステータス"."基本移動力" set value 0d
data modify storage tusb_mob: "即時ステータス"."ノックバック耐性" set value 0d
data modify storage tusb_mob: "即時ステータス"."ノックバック力" set value 0d

### 遅延ステータス
# 属性値
data modify storage tusb_mob: "遅延ステータス"."ステータス"."炎属性値" set value -100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."氷属性値" set value 50
data modify storage tusb_mob: "遅延ステータス"."ステータス"."雷属性値" set value -100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."光属性値" set value 150
data modify storage tusb_mob: "遅延ステータス"."ステータス"."闇属性値" set value 150
# ステータス
data modify storage tusb_mob: "遅延ステータス"."ステータス"."最大HP" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."最大MP" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理攻撃力" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理防御力" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法攻撃力" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法防御力" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス".DeathCause set value '[{"translate":"%1$sは%2$sによって未知の手段で死亡した。","with":[{"selector":"@s"},{"storage":"mob_data:","nbt":"MobName","interpret":true}]}]'
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {Initial:[{Name:"Function",Tags:[Global,Event,Function,Common,BlockAlign]}],Death:[{Name:"Function",Tags:[Global,Event,Function,DamageSound,Dark]}],Damage:[{Name:"Function",Tags:[Global,Event,Function,DamageSound,Dark]}],TurnCount:1,Turn:[{Index:1,Skill:[{Interval:{Min:10,Max:10,Current:10},Loop:{Max:1,Current:1},Call:[{Condition:[{Name:"CheckBlock",Block:[Water,Lava]}],Name:"Kill"},{Condition:[{Name:"HasTarget",Target:{Look:"Enemy",Radius:5}}],Name:"Function",Tags:[Desert,Ground,Blow,WrigglingSand,Parasite]},{Condition:[{Name:"HasTarget",Target:{Look:"Friendly",Radius:5d}}],Name:"Damage",Player:{BypassArmor:true,BypassResistance:true},Distance:{Min:0.1d,Max:2d},AEC:{Particle:"dust",Color:16719360,Duration:10,Radius:0.5f,Effects:[{Id:14b,Amplifier:8b,Duration:5,ShowParticles:false},{Id:14b,Amplifier:3b,Duration:120,ShowParticles:false}]}},{Name:"Function",Tags:[Global,Event,Function,Common,BlockAlign]},{Name:"SmartMotion",Stop:true}]},{Interval:{Min:1,Max:1,Current:1},Loop:{Max:1,Current:1},Call:[{Settings:[{Name:"Rotation",Direction:[-180f,-180f],DirectionRange:[360f,360f]}],Condition:[{Name:"Function",Tags:[Desert,Ground,Blow,WrigglingSand,Spread]}],Name:"SmartMotion",TP:true,Start:true,Rotation:{Horizontal:15f},Speed:{Set:100d,Range:50d},Gravity:{Set:500d}}]}]}]}
