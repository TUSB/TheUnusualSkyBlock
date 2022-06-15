### 村人会話時処理

### 取引更新
execute positioned ^ ^ ^2 as @e[tag=UpdateOffers,distance=..5,sort=nearest,limit=9] run function player:trigger/talk/update_offers
### トリガーリセット
scoreboard players reset @s Talk
