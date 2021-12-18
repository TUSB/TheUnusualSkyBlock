### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:vindicator",CustomName:'{"translate":"通りすがりの木","color":"#FF0000","bold":true}',Silent:true,DeathTime:19s,Team:"Friendly",Johnny:true,PatrolLeader:false,Patrolling:false,CanJoinRaid:false,ActiveEffects:[{Id:14b,Amplifier:127b,Duration:2147483647,ShowParticles:false},{Id:18b,Amplifier:127b,Duration:2147483647,ShowParticles:false},{Id:28b,Amplifier:1b,Duration:2147483647,ShowParticles:false}],PortalCooldown:7000,Tags:[Mob,DelayedData,HasAI,CallOnDamage,CooldownRequired]}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {ArmorItems:[{},{},{},{id:"scute",Count:1b,tag:{CustomModelData:2}}],ArmorDropChances:[-1E40f,-1E40f,-1E40f,-1E40f]}
data modify storage tusb_mob: "即時ステータス"."最大感知範囲" set value 32d
data modify storage tusb_mob: "即時ステータス"."基本移動力" set value 0.27d
data modify storage tusb_mob: "即時ステータス"."ノックバック耐性" set value 1d
data modify storage tusb_mob: "即時ステータス"."ノックバック力" set value 8d

### 遅延ステータス
# 属性値
data modify storage tusb_mob: "遅延ステータス"."ステータス"."炎属性値" set value 200
data modify storage tusb_mob: "遅延ステータス"."ステータス"."氷属性値" set value 150
data modify storage tusb_mob: "遅延ステータス"."ステータス"."雷属性値" set value 150
data modify storage tusb_mob: "遅延ステータス"."ステータス"."光属性値" set value -100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."闇属性値" set value 100
# ステータス
data modify storage tusb_mob: "遅延ステータス"."ステータス"."最大HP" set value 500
data modify storage tusb_mob: "遅延ステータス"."ステータス"."最大MP" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理攻撃力" set value 200
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理防御力" set value 200
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法攻撃力" set value 200
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法防御力" set value 200
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {Damage:[{Condition:[{Name:"HasTarget",Target:{Look:"player",Radius:16d,IgnoreBlocks:false}},{Name:"MP",MP:15,Percent:true}],Name:"Function",Tags:[Global,Neutrality,Blow,PassingTree,GoldenAppleDrop]},{Condition:[{Name:"HasTarget",Target:{Look:"player",Radius:16d,IgnoreBlocks:false}}],Name:"Message",Message:'{"translate":"いてっ！","color":"#FF0000"}'}],TurnCount:3,Turn:[{Index:1,Skill:[{Interval:{Min:20,Max:30,Current:20},Call:[{Execute:"Random",Condition:[{Global:true,Name:"HasTarget",Target:{Look:"player",Radius:4d,IgnoreBlocks:false}}],Name:"Message",Message:'{"translate":"通りすがりの木だ！ よく覚えておけ！","color":"#FFFFFF"}'},{Name:"Message",Message:'{"translate":"おっ？ 自然の猛威受けてみるか？","color":"#FFFFFF"}'},{Name:"Message",Message:'{"translate":"木が動ごくなって？ 気のせいだぞ！","color":"#FFFFFF"}'},{Name:"Message",Message:'{"translate":"ここ、根っこ張ったから俺の場所な！","color":"#FFFFFF"}'},{Name:"Message",Message:'{"translate":"おとなしく養分になれ！","color":"#FFFFFF"}'},{Name:"Message",Message:'{"translate":"樹齢が違うんだよ、樹齢がっ！","color":"#FFFFFF"}'},{Name:"Message",Message:'{"translate":"この木なんの木、気になる木！","color":"#FFFFFF"}'},{Name:"Message",Message:'{"translate":"背景に溶け込むのは得意だぜ！","color":"#FFFFFF"}'},{Name:"Message",Message:'{"translate":"食事の時間だ！コラッ！","color":"#FFFFFF"}'},{Name:"Message",Message:'{"translate":"こっちが加工してやるぜぇ！","color":"#FFFFFF"}'},{Name:"Message",Message:'{"translate":"日照権の侵害だ！ 頭が高い！","color":"#FFFFFF"}'}]}],Exit:{Loop:{Max:1,Current:1}}},{Index:2,Skill:[{Interval:{Min:20,Max:20,Current:20},Call:[{Condition:[{Name:"MinMP",Inverse:true,MP:20,Percent:true}],Name:"ChangeTurn",Loop:1},{Condition:[{Name:"MinMP",MP:20,Percent:true}],Name:"ChangeTurn",Loop:2},{Condition:[{Name:"Function",Tags:[Global,Neutrality,Blow,PassingTree,ItemDetectionLogs]}],Name:"ChangeTurn",Loop:1},{Condition:[{Name:"CheckNBT",Inverse:true,NBT:{Fire:-1s}}],Name:"ChangeTurn",Loop:1},{Name:"CheckBlock",Block:[Water]}],Name:"Message",Message:'{"translate":"ヒャッハー！ 水だぁ～！","color":"#FFFFFF"}'}]}]},{Index:3,Skill:[{Interval:{Min:20,Max:20,Current:20},Loop:{Max:1,Current:1},Call:[{Name:"Message",Message:'{"translate":"KILLフェイズ","color":"#FF0000"}'}]},{Interval:{Min:20,Max:20,Current:20},Loop:{Max:1,Current:1},Call:[{Name:"Spawn",SpawnEntities:[[{Tags:[Global,Ground,Shoot,AngryTree,Main],Level:45}]]},{Name:"Kill"}]}]}]}
