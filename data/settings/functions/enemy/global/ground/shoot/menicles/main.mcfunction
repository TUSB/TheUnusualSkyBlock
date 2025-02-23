### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:zombie",Team:"Friendly",Tags:[Mob,Enemy,DelayedData,HasAI,CallOnInit,CallOnDamage,CallOnTick,TickingRequired,DamageProjectile,EnemyProjectile,FriendlyProjectile,HasLootTable,AnalyseLog,"Garlic1","Unmoved","NonBurst"],CustomName:'{"translate":"メニクル","color":"#FF8000"}',Silent:true,IsBaby:true,DeathTime:19s,ActiveEffects:[{Id:14,Amplifier:127b,Duration:-1,ShowParticles:false}],PortalCooldown:3000,DeathLootTable:"empty"}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {ArmorItems:[{},{},{},{id:"minecraft:stick",Count:1b,tag:{Unbreakable:true,CustomModelData:1}}]}
data modify storage tusb_mob: "即時ステータス"."最大感知範囲" set value 0d
data modify storage tusb_mob: "即時ステータス"."基本移動力" set value 0d
data modify storage tusb_mob: "即時ステータス"."ノックバック耐性" set value 0d
data modify storage tusb_mob: "即時ステータス"."ノックバック力" set value 0d

### 遅延ステータス
# 属性値
data modify storage tusb_mob: "遅延ステータス"."ステータス"."炎属性値" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."氷属性値" set value 1
data modify storage tusb_mob: "遅延ステータス"."ステータス"."雷属性値" set value 1
data modify storage tusb_mob: "遅延ステータス"."ステータス"."光属性値" set value -100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."闇属性値" set value 200
# ステータス
data modify storage tusb_mob: "遅延ステータス"."ステータス"."最大HP" set value 150
data modify storage tusb_mob: "遅延ステータス"."ステータス"."最大MP" set value 0
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理攻撃力" set value 0
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理防御力" set value 0
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法攻撃力" set value 150
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法防御力" set value 0
data modify storage tusb_mob: "遅延ステータス"."ステータス".LootTable set value [{Loot:"item:group/instant_item/tier8/radiance",Count:1,Chance:1d}]
data modify storage tusb_mob: "遅延ステータス"."ステータス".DeathCause set value '[{"translate":"「目にくる痛みがあああ！」%1$sは%2$s強烈なフローラルな刺激臭によって今日のところは引き上げることにした。","with":[{"selector":"@s"},{"storage":"mob_data:","nbt":"MobName","interpret":true}]}]'
data modify storage tusb_mob: "遅延ステータス"."ステータス".AnalyseLog set value '[{"translate":"%1$s「Stimulacris(スティミュラクリス：鋭い刺激を放つ者)」という別称がある。%2$sにフローラルな激痛が伴う刺激臭を放ち、同個体は出現できない性質を持つ。","with":[{"translate":"【能力：移動・格闘・自爆・引寄無効・味方逃走・村人逃走・ノンバースト】","color":"#00FF00"},{"translate":"半径64ブロック","color":"#FF0000"}]}]'
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {Initial:[{Name:"Function",Tags:[Global,Event,Function,CommonExe,BlockAlign]},{Name:"Function",Tags:[Global,Ground,Shoot,Menicles,WindWithSmell]},{Name:"Function",Tags:[Global,Event,Function,CommonExe,SetMp0]}],Damage:[{Name:"MergeNBT",NBT:{NoAI:false}},{Condition:[{Name:"CheckBlock",Inverse:true,Block:[Water,Lava,Air]}],Name:"Function",Tags:[Global,Event,Function,CommonExe,UpAlign1]},{Name:"Function",Tags:[Global,Event,Function,DamageSound,Light]},{Condition:[{Name:"MinMP",MP:1,Percent:true}],Name:"ChangeTurn",Set:3}],Tick:[{Name:"Function",Tags:[Global,Event,Function,CommonExe,ReverseLinkingRotation]}],TurnCount:3,Turn:[{Index:1,Skill:[{Interval:{Min:3,Max:3,Current:3},Call:[{Condition:[{Name:"MinHP",Inverse:true,HP:15}],Name:"Kill"},{Condition:[{Name:"Function",Inverse:true,Tags:[Global,Event,Function,CommonExe,CheckPassenger]}],Name:"Kill"},{Condition:[{Name:"CheckNBT",Global:true,NBT:{OnGround:true}}],Name:"Function",Tags:[Global,Event,Function,CommonExe,BlockAlign]},{Name:"MergeNBT",NBT:{NoAI:true}},{Name:"ChangeTurn",Set:2}]}]},{Index:2,Target:{Look:"Fixed",Rotation:"LeftDown"},Rotate:[10f,0f],Skill:[{Interval:{Min:300,Max:600,Current:600},Loop:{Max:1,Current:1},Call:[{Condition:[{Name:"MinHP",Inverse:true,HP:15}],Name:"Kill"},{Condition:[{Name:"Function",Inverse:true,Tags:[Global,Event,Function,CommonExe,CheckPassenger]}],Name:"Kill"}]}],Exit:{Loop:{Max:1,Current:1}}},{Index:3,Target:{Look:"Fixed",Rotation:"RightDown"},Rotate:[36f,0f],Skill:[{Interval:{Min:5,Max:20,Current:5},Loop:{Max:5,Current:5,Range:15},Call:[{Condition:[{Name:"MinHP",Inverse:true,HP:15}],Name:"Kill"},{Condition:[{Name:"HP",HP:15}],Name:"Function",Tags:[Global,Ground,Shoot,Menicles,WindWithSmell]},{Condition:[{Name:"CheckNBT",Global:true,NBT:{OnGround:true}}],Name:"Function",Tags:[Global,Event,Function,CommonExe,BlockAlign]},{Name:"MergeNBT",NBT:{NoAI:true}}]}],Exit:{Loop:{Max:1,Current:1}}}],ProjectileDamage:{Lightning:200,Light:300}}
#Function
tag @e[tag=Garlic1,distance=..64,sort=nearest,limit=1] add Garbage
