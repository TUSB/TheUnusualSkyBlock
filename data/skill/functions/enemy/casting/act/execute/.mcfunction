###Dataの参照、書き換えはExecutingCastから行う
execute if data storage mob_data: ExecutingCast{Tags:[Cast]} run function skill:enemy/casting/act/execute/cast/
execute if data storage mob_data: ExecutingCast{Tags:[LaserPointer]}


###共通処理
function skill:enemy/casting/act/execute/common