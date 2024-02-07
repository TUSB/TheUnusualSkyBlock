tellraw @s [{"translate":"アイテムの種類と発動条件が異なります。","color":"red"},{"text":"    "},{"translate":"<<スキル削除>>","bold": true,"color":"white","clickEvent":{"action":"run_command","value":"/trigger ChangeSkill set 10010"}}]
playsound block.dispenser.fail master @s ~ ~ ~ 1 1.2
