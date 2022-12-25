### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:vindicator",Team:"Friendly",CustomName:'{"translate":"通りすがりの木","color":"#FF8000","bold":true}',Silent:true,DeathTime:19s,Johnny:true,PatrolLeader:false,Patrolling:false,CanJoinRaid:false,ActiveEffects:[{Id:14b,Amplifier:127b,Duration:2147483647,ShowParticles:false},{Id:18b,Amplifier:127b,Duration:2147483647,ShowParticles:false},{Id:28b,Amplifier:1b,Duration:2147483647,ShowParticles:false}],PortalCooldown:7000,Tags:[Mob,Enemy,DelayedData,HasAI,CallOnDamage,TickingRequired,AnalyseLog]}
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
data modify storage tusb_mob: "遅延ステータス"."ステータス"."光属性値" set value -25
data modify storage tusb_mob: "遅延ステータス"."ステータス"."闇属性値" set value 100
# ステータス
data modify storage tusb_mob: "遅延ステータス"."ステータス"."最大HP" set value 500
data modify storage tusb_mob: "遅延ステータス"."ステータス"."最大MP" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理攻撃力" set value 200
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理防御力" set value 200
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法攻撃力" set value 200
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法防御力" set value 200
data modify storage tusb_mob: "遅延ステータス"."ステータス".AnalyseLog set value '[{"translate":"最終警告を無視したら怒るぞ。"}]'
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {Damage:[{Condition:[{Global:1b,Name:"HasTarget",Target:{Look:"Player",Radius:8d,IgnoreBlocks:false}},{Name:"MP",MP:15,Percent:true}],Name:"Spawn",SpawnEntities:[[{Tags:[Global,Neutrality,Blow,PassingTree,PassingGoldenApple],Level:1}]],Count:3,CountRange:5},{Name:"Message",Message:'{"translate":"いてっ！","color":"#FF0000"}'},{Condition:[{Name:"MinMP",Inverse:true,MP:50,Percent:true}],Name:"Message",Message:'{"translate":"見たいのか？ホンキの怒りを。","color":"#CA3737"}'}],TurnCount:3,Turn:[{Index:1,Skill:[{Interval:{Min:40,Max:40,Current:40},Call:[{Execute:"Random",Condition:[{Global:true,Name:"HasTarget",Target:{Look:"Player",Radius:4d,IgnoreBlocks:false}}],Name:"Message",Message:'{"translate":"通りすがりの木だ！ よく覚えておけ！","color":"#FFFFFF"}'},{Name:"Message",Message:'{"translate":"おっ？ 自然の猛威受けてみるか？","color":"#FFFFFF"}'},{Name:"Message",Message:'{"translate":"木が動ごくなって？ 気のせいだぞ！","color":"#FFFFFF"}'},{Name:"Message",Message:'{"translate":"ここ、根っこ張ったから俺の場所な！","color":"#FFFFFF"}'},{Name:"Message",Message:'{"translate":"おとなしく養分になれ！","color":"#FFFFFF"}'},{Name:"Message",Message:'{"translate":"樹齢が違うんだよ、樹齢がっ！","color":"#FFFFFF"}'},{Name:"Message",Message:'{"translate":"この木なんの木、気になる木！","color":"#FFFFFF"}'},{Name:"Message",Message:'{"translate":"背景に溶け込むのは得意だぜ！","color":"#FFFFFF"}'},{Name:"Message",Message:'{"translate":"食事の時間だ！コラッ！","color":"#FFFFFF"}'},{Name:"Message",Message:'{"translate":"こっちが加工してやるぜぇ！","color":"#FFFFFF"}'},{Name:"Message",Message:'{"translate":"日照権の侵害だ！ 頭が高い！","color":"#FFFFFF"}'}]}],Exit:{Loop:{Max:1,Current:1}}},{Index:2,Skill:[{Interval:{Min:40,Max:40,Current:40},Call:[{Condition:[{Name:"MinMP",Inverse:true,MP:20,Percent:true}],Name:"ChangeTurn",Loop:1},{Condition:[{Name:"MinMP",MP:20,Percent:true}],Name:"ChangeTurn",Loop:2}]}]},{Index:3,Skill:[{Interval:{Min:40,Max:40,Current:40},Loop:{Max:1,Current:1},Call:[{Name:"Message",Message:'{"translate":"普段温厚な木もこの対応にはプッツンしたぜ～！ 絶対許さんからな～！","color":"#FF4C4C"}'}]},{Interval:{Min:40,Max:40,Current:40},Loop:{Max:1,Current:1},Call:[{Name:"Spawn",SpawnEntities:[[{Tags:[Global,Ground,Shoot,AngryTree,Main],Level:45}]]},{Name:"Kill"}]}]}]}
