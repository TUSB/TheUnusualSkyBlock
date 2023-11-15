#Function
# メッセージ
    tellraw @a[distance=..64] {"translate":"%1$sがどこかに現れた。","color":"white","bold":true,"with":[{"selector":"@s","color":"white"}]}
# 下のガストを強化
    execute on vehicle run function settings:enemy/skylands/sky/shoot/i_love_eye/main_init2
# Oh_my_datを再起動
    function #oh_my_dat:please
