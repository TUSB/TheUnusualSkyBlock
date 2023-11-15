#Function
# ガストにスリプガ無効、消滅時間延長を施す
    tag @s add SleepgaImmune
    data modify entity @s PortalCooldown set value 7000
# ガストのステータス変更
    function oh_my_dat:please
    data modify storage mob_data: Call set value {ElementFire:{Set:25},ElementIce:{Set:25},ElementLightning:{Set:25},ElementLight:{Set:150},ElementDark:{Set:-50},HP:{Set:1000}}
    function skill:enemy/change_status/
