###summonさせるmob ここに装備とかいろいろと設定
###PortalCooldownが時間経過に使ってる
summon husk ~ ~ ~ {Tags:["now_spawn"],PortalCooldown:100}

###Oh My Datの呼び出し
execute as @e[tag=now_spawn] run function oh_my_dat:please

###行動の設定
##死亡でのcall
#data modify storage mob_data: AI merge value {Death:""}
##時間でのcall
#data modify storage mob_data: AI merge value {Time:"Time"}
##メイン部分
##Turn1
#Turnの追加
data modify storage mob_data: AI.Turn append value {}
#Targetの管理
data modify storage mob_data: AI.Turn[-1].Target merge value {Look:"",Radius:0.0d}
#Moveの管理
data modify storage mob_data: AI.Turn[-1].Move merge value {Front:0,Side:0,Rotate:{Speed_x:0,Speed_y:0}}
#Skillsの管理
data modify storage mob_data: AI.Turn[-1].Skills merge value {Damage:"Damage",OnBlock:"OnBlock",Fire:"Fire",Water:"Water",Falling:"Falling",Flying:"Flying"}
#data modify storage mob_data: AI.Turn[-1].Skills.Passenger append value {}
#data modify storage mob_data: AI.Turn[-1].Skills.Skill append value {}


#データの移行
data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].AI set from storage mob_data: AI
data merge entity @e[tag=now_spawn,limit=1] {Tags:["tusb_dummy"]}
data remove storage mob_data: AI
#######NBT階層
#	AI:{
#		Death:""
#		Time:""
#		Turn:[
#			{
#				Target:{
#					Look:"player","enemy","all","none"
#					Radius:double
#				},
#				Move:{
#					Front:int
#					Side:int
#					Rotate:{
#						Speed_x:double
#						Speed_y:double
#					}
#				},
#				Skills:{
#					Damage:""
#					OnBlock:""
#					Fire:""
#					Water:""
#					Falling:""
#					Flying:""
#					Passenger:{
#						Type:"up","down"
#						Check:0b,1b
#						Call:""
#					},
#					Skill:[
#						{
#							lowInterval:int
#							highInterval:int
#							Iterval:int(実行までに遅延を発生させたいのみ設定)
#							Once:int
#							Loop:int
#							Call:""
#						}
#					]
#				},
#				Exit:{
#					Loop:int
#					Radius:double
#					Half:"up","down","flont","back"
#					Time:int
#			}
#		]
#	}
#######NBT解説
###### の場合どちらでもよい
######*が付いている行は必須
######親に!が付いていて使用する場合その子の全ての設定が必須
######親に?が付いていて使用する場合その子のどれか(1個以上)の設定が必須
######_の場合は親に依存する
#*|	AI:MOBを動かすAIの親
# |		Death:死んだときに呼び出される
# |		Time:PortalCooldownが0の時呼び出される
#*|		Turn:ここでMOBの動きがメインとして管理されている
#*|			Target:MOBが反応する対象の親
#*|				Look:MOBが敵対する相手を指定 最寄りのプレイヤー(player) 最寄りの敵(enemy) 全て(all) 設定なし(none)
#*|				Radius:MOBが敵対する相手を探す際の半径を指定
#*|			Move:MOBの移動を管理
#*|				Front:前後方向の移動速度を管理 1.0d=1block
#*|				Side:左右方向の移動速度を管理 上に同じ
#*|				Rotate:視線の回転速度を管理
#*|					Speed_x:横方向の回転速度を管理
#*|					Speed_y:縦方向の回転速度を管理
#?|			Skills:スキルに関するもの
# |				Damage:ダメージを受けたときに呼び出し
# |				Onblock:視線座標^^^のところがairじゃないときに呼び出し
# |				Fire:炎上したら呼び出し
# |				Water:水に足が浸かったら呼び出し
# |				Falling:落下しきったら呼び出し
# |				Flying:空に浮いたら呼び出し
#!|				Passenger:乗ってる||乗られてる系に関する処理
#_|					Type:上か下かを指定
#_|					Check:0bでいないときに 1bでいる時を指定
#_|					Call:条件が一致したときに呼び出すもの
#!|				Skill:スキルメイン部分
#_|					lowInterval:待機時間の最低値を指定
#_|					hightInterval:待機の最大値を指定
#_|					Interval:待機時間を指定(一回のみ)
#_|					Once:何回Loop出来るかを指定 0になると実行されなくなる
#_|					Loop:Loopの回数を指定 0になると次に移る
#_|					Call:呼び出しする物の指定
#?|			Exit:このTurnから抜ける条件
#_|				Loop:n回繰り返した後に次に移る
#_|				Time:n tickたったら抜ける
#_|				Target:Trun.Targetの対象がいなかったら抜ける