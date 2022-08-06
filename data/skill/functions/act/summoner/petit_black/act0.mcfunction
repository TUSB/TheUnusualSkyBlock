##############################
### サモン：ぷちブラック 発動
##############################

#近くに召喚直後のぷちブラックがあれば拡大
scoreboard players set _ Calc 0
execute store success score _ Calc as @e[tag=PetitBlack,scores={Calc=..5},distance=..10,limit=1,sort=nearest] run function skill:act/summoner/petit_black/expand
execute if score _ Calc matches 0 run function skill:act/summoner/petit_black/create0
