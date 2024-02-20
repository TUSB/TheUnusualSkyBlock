### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:villager",Team:"Friendly",Tags:[Mob,Enemy,DelayedData,HasAI,CallOnDeath,CallOnInit,CallOnTimeOut,CallOnDamage,TickingRequired,AnalyseLog,"Unmoved","Trap","NonBurst"],CustomName:'{"translate":"ドンチャン","color":"#FF8000"}',Age:-9999,InLove:0,ForcedAge:-9999,Silent:true,DeathTime:19s,ActiveEffects:[{Id:14,Amplifier:127b,Duration:-1,ShowParticles:false}],PortalCooldown:3000,DeathLootTable:"empty"}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {ArmorItems:[{},{},{},{id:"minecraft:firework_star",Count:1b,tag:{Explosion:{Type:0b,Colors:[I;10551102]},CustomModelData:1043}}]}
data modify storage tusb_mob: "即時ステータス"."最大感知範囲" set value 0d
data modify storage tusb_mob: "即時ステータス"."基本移動力" set value 0d
data modify storage tusb_mob: "即時ステータス"."ノックバック耐性" set value 0d
data modify storage tusb_mob: "即時ステータス"."ノックバック力" set value 0d

### 遅延ステータス
# 属性値
data modify storage tusb_mob: "遅延ステータス"."ステータス"."炎属性値" set value 200
data modify storage tusb_mob: "遅延ステータス"."ステータス"."氷属性値" set value 150
data modify storage tusb_mob: "遅延ステータス"."ステータス"."雷属性値" set value 150
data modify storage tusb_mob: "遅延ステータス"."ステータス"."光属性値" set value 0
data modify storage tusb_mob: "遅延ステータス"."ステータス"."闇属性値" set value 100
# ステータス
data modify storage tusb_mob: "遅延ステータス"."ステータス"."最大HP" set value 63
data modify storage tusb_mob: "遅延ステータス"."ステータス"."最大MP" set value 113
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理攻撃力" set value -100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理防御力" set value 0
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法攻撃力" set value 150
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法防御力" set value 0
data modify storage tusb_mob: "遅延ステータス"."ステータス".AnalyseLog set value '[{"translate":"%1$s盛りあがってきたあああ！","with":[{"translate":"【能力：移動・反撃・射的・自爆・引寄無効・ノンバースト】","color":"#00FF00"}]}]'
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {Initial:[{Name:"Function",Tags:[Global,Event,Function,CommonExe,BlockAlign]}],Death:[{Name:"Spawn",SpawnEntities:[[{Tags:[Global,Event,Function,FireExplosion,AecHuge],Level:1}]]},{Name:"Function",Tags:[Global,Event,Function,AttackSound,Explosion]},{Name:"Damage",Mob:{Physical:10,Fire:100,Hit:true},Distance:{Max:7d},Explosion:-1},{Name:"Damage",Player:{Damage:0d},Distance:{Max:7d},Explosion:-1,AEC:{Effects:[{Id:14b,Amplifier:3b,Duration:2000,ShowParticles:false}]}}],Time:[{Name:"ChangeAI",Death:[{}]}],Damage:[{Name:"MergeNBT",NBT:{NoAI:false}},{Condition:[{Name:"CheckBlock",Inverse:true,Block:[Water,Lava,Air]}],Name:"Function",Tags:[Global,Event,Function,CommonExe,UpAlign1]},{Name:"Function",Tags:[Global,Event,Function,DamageSound,Metal]},{Name:"ChangeTurn",Set:3}],TurnCount:4,Turn:[{Index:1,Skill:[{Interval:{Min:2,Max:2,Current:2},Call:[{Condition:[{Name:"CheckNBT",Global:true,NBT:{OnGround:true}}],Name:"Function",Tags:[Global,Event,Function,CommonExe,BlockAlign]},{Name:"MergeNBT",NBT:{NoAI:true}},{Name:"ChangeTurn",Set:2}]}]},{Index:2,Skill:[{Interval:{Min:8,Max:8,Current:8},Call:[{Condition:[{Name:"MinHP",Inverse:true,HP:100,Percent:true},{Name:"MinHP",HP:61,Percent:true}],Name:"ChangeStatus",Level:{Set:20}},{Condition:[{Name:"MinHP",Inverse:true,HP:60,Percent:true},{Name:"MinHP",HP:31,Percent:true}],Name:"ChangeStatus",Level:{Set:35}},{Condition:[{Name:"MinHP",Inverse:true,HP:30,Percent:true},{Name:"MinHP",HP:0,Percent:true}],Name:"ChangeStatus",Level:{Set:50}},{Condition:[{Name:"MinHP",Inverse:true,HP:100,Percent:true},{Name:"MinHP",HP:61,Percent:true}],Name:"MergeNBT",NBT:{ArmorItems:[{},{},{},{id:"minecraft:firework_star",Count:1b,tag:{Explosion:{Type:0b,Colors:[I;10551102]},CustomModelData:1043}}]}},{Condition:[{Name:"MinHP",Inverse:true,HP:60,Percent:true},{Name:"MinHP",HP:31,Percent:true}],Name:"MergeNBT",NBT:{ArmorItems:[{},{},{},{id:"minecraft:firework_star",Count:1b,tag:{Explosion:{Type:0b,Colors:[I;16772670]},CustomModelData:1043}}]}},{Condition:[{Name:"MinHP",Inverse:true,HP:30,Percent:true},{Name:"MinHP",HP:0,Percent:true}],Name:"MergeNBT",NBT:{ArmorItems:[{},{},{},{id:"minecraft:firework_star",Count:1b,tag:{Explosion:{Type:0b,Colors:[I;16727614]},CustomModelData:1043}}]}}]}]},{Index:3,Skill:[{Interval:{Min:2,Max:2,Current:2},Call:[{Condition:[{Name:"CheckNBT",Global:true,NBT:{OnGround:true}}],Name:"Function",Tags:[Global,Event,Function,CommonExe,BlockAlign]},{Name:"MergeNBT",NBT:{NoAI:true}},{Name:"ChangeTurn",Set:4}]}]},{Index:4,Skill:[{Interval:{Min:1,Max:1,Current:1},Call:[{Settings:[{Name:"Anchor",Anchor:"Eyes"},{Name:"Direction",Direction:[0f,-90f],Speed:0.5d,Absolute:{Vertical:true}}],Name:"Spawn",Count:1,SpawnEntities:[[{Tags:[Global,Friendly,Shoot,Donchian,Bullet],Level:1}],[{Tags:[Global,Friendly,Shoot,Donchian,BulletAec],Level:1}]]},{Name:"ChangeTurn",Set:2}]}]}]}
#Function
# 出現時半径128m以内にいるトラップグループのMOB30体までに近い順で削除除外タグを付与
tag @e[tag=Trap,tag=!Garbage,distance=..128,sort=nearest,limit=29] add IgnoreGarbage
# 削除除外されなかった遠いMOBは削除
tag @e[tag=Trap,tag=!Garbage,tag=!IgnoreGarbage,distance=..128] add Garbage
# 除外タグを片付け
tag @e[tag=IgnoreGarbage,distance=..128] remove IgnoreGarbage
