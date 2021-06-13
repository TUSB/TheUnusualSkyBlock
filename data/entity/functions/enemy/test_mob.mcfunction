###summonさせるmob ここに装備とかいろいろと設定
###PortalCooldownが時間経過に使ってる
summon husk ~ ~ ~ {Tags:["now_spawn"],PortalCooldown:100}

###Oh My Datの呼び出し
execute as @e[tag=now_spawn] run function oh_my_dat:please

###データリセット
data remove storage mob_data: AI
###行動の設定
##死亡でのcall
data modify storage mob_data: AI merge value {Death:"Death"}
##時間でのcall
#data modify storage mob_data: AI merge value {Time:"Time"}
#sec Callの管理
#data modify storage mob_data: AI merge value {Call:"aaaa"}
#Passengerの管理
data modify storage mob_data: AI.Passenger merge value {Type:"down",Check:1b,Call:"Passenger"}
##メイン部分
##Turn1
#Turnの追加
data modify storage mob_data: AI.Turn append value {}
#Targetの管理
data modify storage mob_data: AI.Turn[-1].Target merge value {Look:"player",Radius:5.0d,Block:0b}
#Moveの管理
data modify storage mob_data: AI.Turn[-1].Move merge value {Front:0.05,Side:0.01,Rotate:10}
#Skillの管理
data modify storage mob_data: AI.Turn[-1].Skill append value {Interval:{Current:50,Min:10,Max:100},Call:"target_is_me",Loop:{Current:3,Max:3}}
data modify storage mob_data: AI.Turn[-1].Skill append value {Interval:{Min:5,Max:5},Call:"target_is_find",Loop:{Current:2,Max:2},Once:{Current:3}}
#exitの管理
#data modify storage mob_data: AI.Turn[-1].Exit merge value {Loop:{Current:2,Max:2}}
#データの移行
data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].AI set from storage mob_data: AI
data merge entity @e[tag=now_spawn,limit=1] {Tags:["Initialized","tusb_dummy","HasAI"]}
data remove storage mob_data: AI

#######NBT階層
#+-未完成(空白のところが
#|
###	AI:{
###		#死んだときにcall
###		Death:""
###		#PortalCoolDown:0のときにcall
###		Time:""
###		#ダメージを受けたときにcall
###		Damage:""
###		#Passenngerの管理
###		Passenger:{
###			#上||下 の指定
###			Type:"up","down"
###     #いない||いる の指定
###			Check:0b,1b
###			#呼び出しを指定
###			Call:""
###		},
###		#ターンの管理
###		Turn:[
###			{
###				#敵対対象の管理
###				Target:{
###					#敵対するentityの種類
###					Look:"player","enemy","all","none"
###					#敵対の半径 (Radius*0.5)mで処理
###					Radius:int
###					#ブロック越しに見る||見ない
###					Block:0b,1b
###				},
###				#移動に関する管理
###				Move:{
###					#前方向の移動速度
###					Front: double 0.01単位
###					#横の移動速度
###					Side: double 0.01単位
###					#視点の回転速度
###					Rotate: int
###				},
###				#Skillの管理
###				Skill:[
###				{
###					#クールタイムの下限 現在 上限
###					Interval:{Min:int,Current:int,Max:int}
###					#このSkillの実行上限(Loopによるカウントは無し)
###					Once:{Current:int}
###					#このスキルを連続で繰り返す回数
###					Loop:{Current:int,Max:int}
###					#呼び出し先
###					Call:""
###				}
###			],
###			#このTurnの抜ける条件の管理
###			Exit:{
###				#中のSkillがLoopした回数
###				Loop:{Current:int,Max:int}
###				#Targetがどこにいるときに抜けるかを指定
###				Half:"up","down","front","back"
###				#このTurnに入ってから抜ける回数を指定
###				Time:int
###			}
###		]
###	}

