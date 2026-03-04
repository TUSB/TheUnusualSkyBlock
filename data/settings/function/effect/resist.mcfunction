#> settings:effect/resist

data remove storage effect: resist

execute if data storage main: difficult{world:"picnic"} run data modify storage effect: resist set value {\
  bad_effect:{\
    nausea:{value:1},\
    poison:{value:3},\
    weakness:{value:2},\
    wither:{value:4},\
    blindness:{value:3},\
    hunger:{value:2},\
    mining_fatigue:{value:2},\
    slowness:{value:2},\
    darkness:{value:4},\
    shulker_bullet:{value:2},\
    elder_guardian:{value:10},\
  },\
  too_bad_effect:{\
    doom:{value:16},\
    doom_super:{value:2147483647},\
    burn:{value:8},\
    freeze:{value:16},\
    palsy:{value:8},\
    confuse:{value:8},\
    curse:{value:8},\
    virus:{value:16},\
    tnt:{value:8},\
    pale:{value:2147483647},\
    debility:{value:32},\
  }\
}

execute unless data storage main: difficult{world:"picnic"} unless data storage main: difficult{world:"expart"} run data modify storage effect: resist set value {\
  bad_effect:{\
    nausea:{value:1},\
    poison:{value:3},\
    weakness:{value:2},\
    wither:{value:4},\
    blindness:{value:3},\
    hunger:{value:2},\
    mining_fatigue:{value:2},\
    slowness:{value:2},\
    darkness:{value:4},\
    shulker_bullet:{value:2},\
    elder_guardian:{value:10},\
  },\
  too_bad_effect:{\
    doom:{value:16},\
    doom_super:{value:2147483647},\
    burn:{value:8},\
    freeze:{value:16},\
    palsy:{value:8},\
    confuse:{value:8},\
    curse:{value:8},\
    virus:{value:16},\
    tnt:{value:8},\
    pale:{value:2147483647},\
    debility:{value:32},\
  }\
}

execute if data storage main: difficult{world:"expart"} run data modify storage effect: resist set value {\
  bad_effect:{\
    nausea:{value:1},\
    poison:{value:3},\
    weakness:{value:2},\
    wither:{value:4},\
    blindness:{value:3},\
    hunger:{value:2},\
    mining_fatigue:{value:2},\
    slowness:{value:2},\
    darkness:{value:4},\
    shulker_bullet:{value:2},\
    elder_guardian:{value:10},\
  },\
  too_bad_effect:{\
    doom:{value:16},\
    doom_super:{value:2147483647},\
    burn:{value:8},\
    freeze:{value:16},\
    palsy:{value:8},\
    confuse:{value:8},\
    curse:{value:8},\
    virus:{value:16},\
    tnt:{value:8},\
    pale:{value:2147483647},\
    debility:{value:32},\
  }\
}
