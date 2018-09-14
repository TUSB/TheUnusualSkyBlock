##############################
### バースト発動
##############################

scoreboard players set #Aura MP 10000
scoreboard players set バースト MP 10000

scoreboard players set @a ChangeSkillLimit 0
tellraw @a {"text":"スキルが再設定できるようになった！","color":"green"}
tellraw @a [{"selector":"@s"},{"text":"を取り巻く空気が変わった！！！","color":"green"},{"text":"と思ったが気のせいだったようだ…。ちゃんちゃん。","color":"black"}]
