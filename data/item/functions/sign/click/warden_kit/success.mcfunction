#> item:sign/click/warden_kit/success
#
# ウォーデン栽培 成功時
#
# @within function item:sign/click/warden_kit/

fill ~-1 ~ ~-1 ~1 ~ ~1 sculk replace
setblock ~ ~1 ~1 sculk_sensor replace
setblock ~ ~1 ~-1 sculk_shrieker[can_summon=true] replace
playsound entity.warden.agitated master @a[distance=..32] ~ ~ ~ 1.0 1 0.0