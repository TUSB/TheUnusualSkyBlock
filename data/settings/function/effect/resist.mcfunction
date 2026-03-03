#> settings:effect/resist

data remove storage effect: resist

data modify storage effect: resist set value {\
  bad_effect:{\
    nausea:{value:1},\
    poison:{value:3},\
    weakness:{value:2},\
    wither:{value:4},\
    blindness:{value:3},\
    hunger:{value:2},\
    mining_fatigue:{value:3},\
    slowness:{value:1},\
    darkness:{value:4},\
    shulker_bullet:{value:2},\
    elder_guardian:{value:10}\
  },\
  too_bad_effect:{}\
}
