### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:vindicator",Team:"Friendly",Tags:[Mob,Enemy,DelayedData,HasAI,CallOnDeath,CallOnDamage,TickingRequired,HasLootTable,AnalyseLog,"Unmoved"],CustomName:'{"translate":"通りすがりの木","color":"#FF8000","bold":true}',Silent:true,DeathTime:19s,Johnny:true,PatrolLeader:false,Patrolling:false,CanJoinRaid:false,ActiveEffects:[{Id:14,Amplifier:127b,Duration:-1,ShowParticles:false},{Id:18,Amplifier:127b,Duration:-1,ShowParticles:false},{Id:28,Amplifier:1b,Duration:-1,ShowParticles:false}],PortalCooldown:7000}
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
data modify storage tusb_mob: "遅延ステータス"."ステータス".LootTable set value [{Loot:"item:group/drop_item/tier3/common",Count:1,Chance:0.3d}]
data modify storage tusb_mob: "遅延ステータス"."ステータス".AnalyseLog set value '[{"translate":"%1$s怒らせると怖い木。","with":[{"translate":"【能力：アイテムドロップ・反撃・置換・引寄無効】","color":"#00FF00"}]}]'
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {Death:[{Condition:[{Name:"HasTarget",Inverse:true,Target:{Look:"Player",Radius:64d}},{Name:"HasTarget",Target:{Look:"Player",Radius:64d,IgnoreBlocks:true}}],Name:"Message",Message:'{"translate":"【通りすがりの木】： こんな日が差さない場所にいられるか！ じゃあな！","color":"#FF5037"}'},{Condition:[{Name:"HasTarget",Target:{Look:"Player",Radius:64d}},{Name:"HasTarget",Target:{Look:"Player",Radius:64d,IgnoreBlocks:true}}],Name:"Message",Message:'{"translate":"【通りすがりの木】： 短命の者にしてはなかなかやるな。覚えておいてやろう。","color":"#FF5037"}'}],Damage:[{Condition:[{Name:"HasTarget",Target:{Look:"Player",Radius:8d}},{Name:"MP",MP:20,Percent:true}],Name:"Spawn",SpawnEntities:[[{Tags:[Global,Neutrality,Blow,PassingTree,PassingGoldenApple],Level:1}]],Count:3,CountRange:5},{Condition:[{Name:"HasTarget",Target:{Look:"Player",Radius:8d}}],Name:"Message",Message:'{"translate":"いてっ！","color":"#FF0000"}'},{Condition:[{Name:"HasTarget",Target:{Look:"Player",Radius:80d}},{Name:"MinMP",Inverse:true,MP:50,Percent:true}],Name:"ChangeTurn",Set:4}],TurnCount:4,Turn:[{Index:1,Skill:[{Interval:{Min:40,Max:40,Current:40},Call:[{Execute:"Random",Condition:[{Global:true,Name:"HasTarget",Target:{Look:"Player",Radius:4d,IgnoreBlocks:false}}],Name:"Message",Message:'{"translate":"通りすがりの木だ！ よく覚えておけ！","color":"#FFFFFF"}'},{Name:"Message",Message:'{"translate":"おっ？ 自然の猛威受けてみるか？","color":"#FFFFFF"}'},{Name:"Message",Message:'{"translate":"木が動ごくなって？ 気のせいだぞ！","color":"#FFFFFF"}'},{Name:"Message",Message:'{"translate":"ここ、根っこ張ったから俺の場所な！","color":"#FFFFFF"}'},{Name:"Message",Message:'{"translate":"おとなしく養分になれ！","color":"#FFFFFF"}'},{Name:"Message",Message:'{"translate":"樹齢が違うんだよ、樹齢がっ！","color":"#FFFFFF"}'},{Name:"Message",Message:'{"translate":"この木なんの木、気になる木！","color":"#FFFFFF"}'},{Name:"Message",Message:'{"translate":"背景に溶け込むのは得意だぜ！","color":"#FFFFFF"}'},{Name:"Message",Message:'{"translate":"食事の時間だ！コラッ！","color":"#FFFFFF"}'},{Name:"Message",Message:'{"translate":"こっちが加工してやるぜぇ！","color":"#FFFFFF"}'},{Name:"Message",Message:'{"translate":"日照権の侵害だ！ 頭が高い！","color":"#FFFFFF"}'}]}],Exit:{Loop:{Max:1,Current:1}}},{Index:2,Skill:[{Interval:{Min:20,Max:20,Current:20},Call:[{Name:"Function",Tags:[Global,Event,Function,TextDisplay,LifeScouterScale],Scale:2.5f,Translation_y:4.5f},{Condition:[{Name:"MinMP",Inverse:true,MP:20,Percent:true}],Name:"ChangeAI",Damage:[{}]},{Condition:[{Name:"HasTarget",Target:{Look:"Player",Radius:64d}},{Name:"MinMP",Inverse:true,MP:20,Percent:true}],Name:"ChangeTurn",Set:3},{Condition:[{Name:"MinMP",MP:20,Percent:true}],Name:"ChangeTurn",Set:1}]}]},{Index:3,Skill:[{Interval:{Min:40,Max:40,Current:40},Loop:{Max:1,Current:1},Call:[{Execute:"Random",Name:"Message",Message:'{"translate":"普段温厚な木もこの対応にはプッツンしたぜ～！ 絶対許さんからな～！","color":"#FF4C4C"}'},{Name:"Message",Message:'{"translate":"いい加減その面見飽きたな、俺好みのリンゴ色に染めてやる。覚悟しろやー！","color":"#FF4C4C"}'},{Name:"Message",Message:'{"translate":"丁度いい。養分が足りなくなってきたところだ。短命なる者よ、その場にいた己の不運を呪うが良い！","color":"#FF4C4C"}'},{Name:"Message",Message:'{"translate":"我が木の葉が囁くのだ、貴様を倒せと！ 失った緑を取り戻せと！！ 巨木の怒りを思い知れー！！！","color":"#FF4C4C"}'},{Name:"Message",Message:'{"translate":"警告を何度も無視したな！ モリモリの王国法第1条に則り貴様に死を下してやる！","color":"#FF4C4C"}'}]},{Interval:{Min:40,Max:40,Current:40},Loop:{Max:1,Current:1},Call:[{Name:"Spawn",SpawnEntities:[[{Tags:[Global,Ground,Shoot,AngryTree,Main],Level:45}]]},{Name:"ChangeAI",Death:[{}]},{Name:"Kill"}]}]},{Index:4,Skill:[{Interval:{Min:1,Max:1,Current:1},Loop:{Max:1,Current:1},Call:[{Execute:"Random",Condition:[{Global:true,Name:"HasTarget",Target:{Look:"Player",Radius:48d}}],Name:"Message",Message:'{"translate":"見たいのか？ホンキの怒りを。","color":"#CA3737"}'},{Name:"Message",Message:'{"translate":"あー幹がしなってきたなぁー！しなってきたなぁー！","color":"#CA3737"}'},{Name:"Message",Message:'{"translate":"俺は根に持つタイプだ。後はわかるな？","color":"#CA3737"}'},{Name:"Message",Message:'{"translate":"いってぇ～！ 今ので枝数本折れたわー！","color":"#CA3737"}'},{Name:"Message",Message:'{"translate":"アニ木に言いつけるぞ！！","color":"#CA3737"}'},{Name:"Message",Message:'{"translate":"おきにの葉がーーー！ 何すんじゃワレーー！","color":"#CA3737"}'},{Name:"Message",Message:'{"translate":"は～キレソウ生えそう！！","color":"#CA3737"}'},{Name:"Message",Message:'{"translate":"どこの森出身じゃワレー！","color":"#CA3737"}'},{Name:"Message",Message:'{"translate":"リンゴの渋みを知りたいのか？","color":"#CA3737"}'},{Name:"Message",Message:'{"translate":"丸太にするぞコラァ！！","color":"#CA3737"}'},{Name:"Message",Message:'{"translate":"樹液が流れてきたわー！","color":"#CA3737"}'}]}],Exit:{Loop:{Max:1,Current:1}}}]}
