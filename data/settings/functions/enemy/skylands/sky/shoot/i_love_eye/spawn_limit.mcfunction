#Function
# 出現時半径128m以内にいる目玉アイ好家3体までに近い順で削除除外タグを付与
tag @e[tag=ILoveEyeCarrierOwner,tag=!Garbage,distance=..128,sort=nearest,limit=2] add IgnoreGarbage
# 削除除外されなかった遠いMOBは削除
tag @e[tag=ILoveEyeCarrierOwner,tag=!Garbage,tag=!IgnoreGarbage,distance=..128] add Garbage
# 除外タグを片付け
tag @e[tag=IgnoreGarbage,distance=..128] remove IgnoreGarbage
