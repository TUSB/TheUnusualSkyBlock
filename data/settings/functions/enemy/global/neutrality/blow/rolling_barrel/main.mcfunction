### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:zombie",CustomName:'{"translate":"ローリングバレル","color":"#FF8000","bold":true}',Silent:true,IsBaby:true,DeathTime:19s,ActiveEffects:[{Id:14b,Amplifier:127b,Duration:2147483647,ShowParticles:false}],PortalCooldown:3000,DeathLootTable:"empty",Tags:[Mob,Enemy,DelayedData,HasAI,CallOnDeath,CallOnInit,CallOnTimeOut,CallOnDamage,TickingRequired,NativeTask,SmartMotion,Bounce,DamageProjectile,FriendlyProjectile]}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {ArmorItems:[{},{},{},{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:1015}}],DisabledSlots:4144959}
data modify storage tusb_mob: "即時ステータス"."最大感知範囲" set value 0d
data modify storage tusb_mob: "即時ステータス"."基本移動力" set value 0d
data modify storage tusb_mob: "即時ステータス"."ノックバック耐性" set value 0d
data modify storage tusb_mob: "即時ステータス"."ノックバック力" set value 0d

### 遅延ステータス
# 属性値
data modify storage tusb_mob: "遅延ステータス"."ステータス"."炎属性値" set value 200
data modify storage tusb_mob: "遅延ステータス"."ステータス"."氷属性値" set value 50
data modify storage tusb_mob: "遅延ステータス"."ステータス"."雷属性値" set value 200
data modify storage tusb_mob: "遅延ステータス"."ステータス"."光属性値" set value 50
data modify storage tusb_mob: "遅延ステータス"."ステータス"."闇属性値" set value 50
# ステータス
data modify storage tusb_mob: "遅延ステータス"."ステータス"."最大HP" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."最大MP" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理攻撃力" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理防御力" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法攻撃力" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法防御力" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス".DeathCause set value '[{"translate":"「ﾌﾟﾁｯ」%1$sは%2$sによって轢かれカーペットとして第二の生を歩み出した。","with":[{"selector":"@s"},{"storage":"mob_data:","nbt":"MobName","interpret":true}]}]'
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {Initial:[{Settings:[{Name:"Facing",Target:{Look:"All",Radius:48d,IgnoreBlocks:true}}],Name:"SmartMotion",Gravity:{Set:300d}}],Death:[{Condition:[{Name:"HasTarget",Target:{Look:"Player",Radius:48d,IgnoreBlocks:true}},{Name:"RandomChance",Chance:0.35d}],Name:"Spawn",Count:1,CountRange:4,SpawnEntities:[[{Tags:[Global,Event,Bullet,CommonBomb,Main],Level:1}]]}],Time:[{Condition:[{Name:"HasTarget",Target:{Look:"Player",Radius:48d,IgnoreBlocks:true}}],Name:"Spawn",SpawnEntities:[[{Tags:[Global,Event,Function,FireExplosion,AecHuge],Level:1}]]},{Condition:[{Name:"HasTarget",Target:{Look:"Player",Radius:48d,IgnoreBlocks:true}}],Name:"Damage",Player:{DamageType:[Blast],DeathCause:'[{"translate":"%1$sは%2$sの爆発に巻きこまれ頭皮に致命的を負った。","with":[{"selector":"@s"},{"storage":"mob_data:","nbt":"MobName"}]}]'},Mob:{Hit:true,Physical:50,Fire:100},Distance:{Max:7d},Explosion:-1},{Name:"ChangeAI",Death:[{}]}],Damage:[{Settings:[{Name:"Facing",Target:{Look:"All",Radius:24d,IgnoreBlocks:true}},{Name:"Rotation",Flip:true}],Name:"Function",Tags:[Global,Event,Function,CommonExe,ApplyRotation]},{Name:"SmartMotion",TP:true,Speed:{Set:50d},E:150},{Name:"MergeNBT",NBT:{ArmorItems:[{},{},{},{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:1016}}]}},{Name:"ChangeAI",Damage:[{}],Attack:[{Condition:[{Name:"HP",HP:5}],Settings:[{Name:"As",Target:{Look:"Mob",Radius:1d,IgnoreBlocks:true}},{Name:"Rotation",Target:{Look:"All",Radius:1d,IgnoreBlocks:true}}],Name:"Step",Speed:8d}]}],ProjectileDamage:{Physical:100}}
