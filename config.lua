Config = {}
Config.Debug = false

Config.RemoveItemsOnDeath = false 
Config.UseTokens = false -- false = use price, true = use cw-tokens
Config.Cooldown = 500 --- Cooldown until next allowed meth run
Config.DefaultValues = {
    armor = 10,
    accuracy = 40,
}

-------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------
--- JOB - METH
-------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------

local MethBoss = {
    coords = vector4(-1169.94, 4926.49, 224.38, 258.4),
    model = 'u_m_m_streetart_01',             -- https://docs.fivem.net/docs/game-references/ped-models/
    animation = 'WORLD_HUMAN_GUARD_STAND',  -- https://github.com/JarretOnline/PedAnimationList
    missionTitle = "SUPPLY RUN",
    available = {from = 0, to = 24},
}

local MethItems = {
    FetchItemLocation = vector4(3828.87, 4471.85, 3.0, 176.02),
    FetchItemTime = 300000, -- time it takes for the item to activate
    FetchItem = 'securitycase', -- always use securitycase and this will open into something boss rewards
    FetchItemProp = 'hei_prop_hei_security_case', -- item (world object)
    FetchItemContents = 'reward_bags_blue', -- item that drops from FetchItem after FetchItemTime is over
    FetchItemContentsAmount = 1, -- Amount of FetchItemContent items
    FetchItemMinigame = {
        Type = 'Circle',
        Variables = { math.random(5,10), math.random(8,12) }
    },
}

local MethGuards = {
        { coords = vector4(3820.32, 4458.0, 3.57, 230.37),  model = 'g_m_y_lost_01', weapon = 'WEAPON_PISTOL'},
        { coords = vector4(3819.05, 4464.62, 3.61, 162.91), model = 'g_m_y_lost_01', weapon = 'WEAPON_PISTOL'},
        { coords = vector4(3810.61, 4469.97, 3.97, 110.91), model = 'g_m_y_lost_01', weapon = 'WEAPON_PISTOL'},
        { coords = vector4(3803.51, 4464.97, 4.81, 18.9), model = 'g_m_y_lost_01', weapon = 'WEAPON_PISTOL'},
        { coords = vector4(3809.33, 4455.14, 4.13, 352.57), model = 'g_m_y_lost_01', weapon = 'WEAPON_PISTOL'},
        { coords = vector4(3800.44, 4452.45, 4.54, 309.68), model = 'g_m_y_lost_01', weapon = 'WEAPON_PISTOL'},
        { coords = vector4(3799.84, 4474.73, 5.99, 108.55), model = 'g_m_y_lost_01', weapon = 'WEAPON_PISTOL'},
        { coords = vector4(3820.13, 4483.23, 5.99, 66.19), model = 'g_m_y_lost_01', weapon = 'WEAPON_PISTOL'},
        { coords = vector4(3849.42, 4463.54, 2.7, 59.84),  model = 'g_m_y_lost_01', weapon = 'WEAPON_PISTOL'},
        { coords = vector4(3829.66, 4458.0, 2.75, 88.73),  model = 'g_m_y_lost_01', weapon = 'WEAPON_PISTOL'},
}

local MethVehicles = {
    { coords = vector4(3814.76, 4461.75, 3.6, 230), model = 'slamvan2'}
}

local MethSpecialRewards = {
    { Item = 'meth_baggies', Amount = math.random(20, 40), Chance = 100 },
    { Item = 'markedbills', Amount = math.random(10, 20), Chance = 40 }
}

local MethMessages = {
    Sender = 'BOSS',
    Subject = 'SUPPLIES',
    Message = "GRAB THE BRIEFCASE MARKED ON GPS!"
}


local MethJobPayout = math.random(40000, 60000)

local MethJob = {
    JobName = 'meth',
    Token = 'raidmeth',
    Boss = MethBoss,
    Guards = MethGuards,
    Vehicles = MethVehicles,
    Items = MethItems,
    MinimumPolice = 0,
    RunCost = 4000,
    Payout =  MethJobPayout,
    SpecialRewards = MethSpecialRewards,
    Messages = MethMessages,
    CamActive = true,
    camera = vector3(3889.22, 4464.16, 17.06),
    camerapoint = vector3(3829.1, 4471.77, 3.08),
    camoffset = vector3(3834.06, 4469.18, 5.86)
}

-------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------
--- JOB - COCAINE
-------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------

local CokeBoss = {
    coords = vector4(-2612.29, 1869.73,  167.32, 277.32),
    model = 'u_m_m_streetart_01', -- https://docs.fivem.net/docs/game-references/ped-models/
    animation = 'WORLD_HUMAN_GUARD_STAND', -- https://github.com/JarretOnline/PedAnimationList
    missionTitle = "SUPPLY RUN",
    available = {from = 0, to = 24},
}

local CokeItems = {
    FetchItemLocation = vector4(-2082.82, -1019.6, 12.62, 180.78),
    FetchItemTime = 300000, -- time it takes for the item to activate
    FetchItem = 'securitycase', -- always use securitycase and this will open into something boss rewards
    FetchItemProp = 'hei_prop_hei_security_case', -- item (world object)
    FetchItemContents = 'reward_bags_black', -- item that drops from FetchItem after FetchItemTime is over
    FetchItemContentsAmount = 1, -- Amount of FetchItemContent items
    FetchItemMinigame = {
        Type = 'Circle',
        Variables = { math.random(5,10), math.random(8,12) }
    },
}

-- These will be used to pick random spots for the guards
local CokeGuardPositions = {
    vector4(-2048.04, -1033.31, 2.57, 333.61),
    vector4(-2061.42, -1032.78, 5.88, 161.71),
    vector4(-2077.04, -1024.95, 5.88, 70.61),
    vector4(-2071.45, -1020.09, 5.88, 66.23),
    vector4(-2078.82, -1020.1, 5.88, 10.66),
    vector4(-2089.93, -1013.48, 5.88, 258.26),
    vector4(-2091.54, -1021.34, 5.91, 250.19),
    vector4(-2092.88, -1008.09, 5.88, 325.87),
    vector4(-2105.32, -1005.26, 8.97, 334.65),
    vector4(-2108.19, -1016.64, 8.97, 208.1),
    vector4(-2096.17, -1018.9, 8.97, 108.6),
    vector4(-2093.38, -1010.66, 8.97, 38.31),
    vector4(-2085.1, -1018.12, 8.97, 72.87),
    vector4(-2077.95, -1027.82, 8.97, 173.91),
    vector4(-2074.35, -1014.07, 8.97, 313.32),
    vector4(-2053.42, -1031.69, 8.97, 347.54),
    vector4(-2050.5, -1026.81, 8.97, 188.6),
    vector4(-2037.12, -1035.75, 8.97, 263.51),
    vector4(-2035.78, -1031.22, 8.97, 232.05),
    vector4(-2057.16, -1020.12, 11.91, 28.73),
    vector4(-2062.66, -1032.35, 11.91, 141.95),
    vector4(-2059.16, -1029.9, 11.91, 265.68),
    vector4(-2084.53, -1020.01, 12.78, 46.12)
}

local CokeCivilians = {
    { coords = vector4(-2084.22, -1018.2, 12.78, 258.77), model = 'mp_m_boatstaff_01' },
    { coords = vector4(-2113.34, -1006.53, 9.64, 100.85), model = 'a_f_y_beach_01', animation = 'WORLD_HUMAN_SUNBATHE' },
    { coords = vector4(-2114.71, -1010.66, 9.63, 66.88), model = 'a_f_y_beach_01', animation = 'WORLD_HUMAN_SUNBATHE_BACK' },
}

local CokeGuards = {
    { model = 's_m_m_highsec_02', weapon = 'weapon_pumpshotgun', armor = 100 },
    { model = 's_m_m_highsec_02', weapon = 'WEAPON_PISTOL'},
    { model = 's_m_m_highsec_02', weapon = 'WEAPON_PISTOL'},
    { model = 's_m_m_highsec_02', weapon = 'weapon_pumpshotgun', armor = 100 },
    { model = 's_m_m_highsec_02', weapon = 'WEAPON_PISTOL'},
    { model = 's_m_m_highsec_02', weapon = 'WEAPON_PISTOL'},
    { model = 's_m_m_highsec_02', weapon = 'weapon_pumpshotgun', armor = 100 },
    { model = 's_m_m_highsec_02', weapon = 'WEAPON_PISTOL'},
    { coords = vector4(-2082.71, -1012.14, 5.88, 159.0), model = 's_m_m_highsec_01', weapon = 'WEAPON_PISTOL50'},
    { coords = vector4(-2041.38, -1032.34, 11.98, 88.73), model = 's_m_m_highsec_01', weapon = 'WEAPON_SMG', armor = 100 },
}

local CokeVehicles = {
    { coords = vector4(-2014.52, -1052.52, -0.53, 285.69), model = 'speeder'}
}

local CokeSpecialRewards = {
    { Item = 'coke_leaf', Amount = math.random(60, 90), Chance = 100 },
    { Item = 'markedbills', Amount = math.random(10, 20), Chance = 60 },
    { Item = 'emptydropphone', Amount = 1, Chance = 10 },
}

local CokeMessages = {
    Sender = 'BOSS',
    Subject = 'SUPPLIES',
    Message = "GRAB THE BRIEFCASE MARKED ON GPS!"
}

local CokeJob = {
    JobName = 'coke',
    Token = 'raidcocaine',
    Boss = CokeBoss,
    Guards = CokeGuards,
    GuardPositions = CokeGuardPositions,
    Civilians = CokeCivilians,
    Vehicles = CokeVehicles,
    Items = CokeItems,
    MinimumPolice = 0,
    RunCost = 6000,
    Payout =  math.random(15000, 22000),
    SpecialRewards = CokeSpecialRewards,
    Messages = CokeMessages,
    CamActive = false,
    camera = vector3(-2014.32, -1016.42, 15.96),
    camerapoint = vector3(-2067.22, -1023.66, 8.89),
    camoffset = vector3(-2117.28, -1012.29, 16.01)
}


-------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------
--- JOB - WEED
-------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------
local WeedBoss = {
    coords = vector4(526.69, -1655.61, 29.36, 60.04),
    model = 'u_m_m_streetart_01', -- https://docs.fivem.net/docs/game-references/ped-models/
    animation = 'WORLD_HUMAN_GUARD_STAND', -- https://github.com/JarretOnline/PedAnimationList
    missionTitle = "SUPPLY RUN",
    available = {from = 0, to = 24},
}

local WeedItems = {
    FetchItemLocation = vector4(2194.9, 5601.85, 53.37, 343.94),
    FetchItemTime = 300000, -- time it takes for the item to activate
    FetchItem = 'securitycase', -- always use securitycase and this will open into something boss rewards
    FetchItemProp = 'hei_prop_hei_security_case', -- item (world object)
    FetchItemContents = 'reward_bags_teal', -- item that drops from FetchItem after FetchItemTime is over
    FetchItemContentsAmount = 1, -- Amount of FetchItemContent items
    FetchItemMinigame = {
        Type = 'Circle',
        Variables = { math.random(5,10), math.random(8,12) }
    },
}

local WeedGuards = {
        { coords = vector4(2220.62, 5614.49, 54.72, 100.83), model = 'a_m_m_hillbilly_02', weapon = 'WEAPON_PISTOL', accuracy = 30, armor = 25 },
        { coords = vector4(2221.24, 5602.82, 54.76, 153.79), model = 'a_m_m_hillbilly_02', weapon = 'WEAPON_PISTOL', accuracy = 30, armor = 25 },
        { coords = vector4(2211.45, 5574.69, 53.58, 23.77), model = 'a_m_m_hillbilly_02', weapon = 'WEAPON_PISTOL', accuracy = 30, armor = 25 },
        { coords = vector4(2195.79, 5574.87, 53.83, 0.81), model = 'a_m_m_rurmeth_01', weapon = 'WEAPON_PISTOL', accuracy = 30, armor = 25 },
        { coords = vector4(2246.8, 5561.69, 52.1, 226.76), model = 'a_m_m_rurmeth_01', weapon = 'WEAPON_PISTOL', accuracy = 30, armor = 25 },
        { coords = vector4(2250.25, 5563.66, 52.15, 186.65), model = 'a_m_m_rurmeth_01', weapon = 'WEAPON_PISTOL', accuracy = 30, armor = 25 },
        { coords = vector4(2181.14, 5554.24, 53.93, 167.81), model = 'a_m_m_hillbilly_01', weapon = 'WEAPON_DBSHOTGUN', accuracy = 30, armor = 25 },
}

local WeedVehicles = {
    { coords = vector4(2207.95, 5600.41, 53.78, 354.28), model = 'pony2'}
}

-- Add random chance of getting different kind of weed. maybe. figure out something for the special item too
local WeedSpecialRewards = {
    { Item = 'weed_purple-haze_crop', Amount = math.random(40, 60), Chance = 100 },
    { Item = 'markedbills', Amount = math.random(20, 30), Chance = 40 },
    { Item = 'emptydropphone', Amount = 1, Chance = 20 },
}

local WeedMessages = {
    Sender = 'BOSS',
    Subject = 'SUPPLIES',
    Message = "GRAB THE BRIEFCASE MARKED ON GPS!"
}

local WeedJob = {
    JobName = 'weed',
    Token = 'raidweed',
    Boss = WeedBoss,
    Guards = WeedGuards,
    Vehicles = WeedVehicles,
    Items = WeedItems,
    MinimumPolice = 0,
    RunCost = 8000,
    Payout =  math.random(15000, 40000),
    SpecialRewards = WeedSpecialRewards,
    Messages = WeedMessages,
    CamActive = false,
    camera = vector3(2233.61, 5545.18, 78.83),
    camerapoint = vector3(2194.96, 5601.54, 54.61),
    camoffset = vector3(2256.33, 5631.74, 78.83)
}

-------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------
--- JOB - CLOWNS - THERMITE
-------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------
local ClownBoss = {
    coords = vector4(-1373.25, -464.11, 72.04, 164.96),
    model = 'u_m_m_streetart_01', -- https://docs.fivem.net/docs/game-references/ped-models/
    animation = 'WORLD_HUMAN_GUARD_STAND', -- https://github.com/JarretOnline/PedAnimationList
    missionTitle = "SUPPLY RUN",
    available = {from = 0, to = 24},
}

local ClownItems = {
    FetchItemLocation = vector4(-1578.44, 2099.56, 67.54, 343.32),
    FetchItemTime = 300000, -- time it takes for the item to activate
    FetchItem = 'securitycase', -- always use securitycase and this will open into something boss rewards
    FetchItemProp = 'hei_prop_hei_security_case', -- item (world object)
    FetchItemContents = 'reward_crate_red', -- item that drops from FetchItem after FetchItemTime is over
    FetchItemContentsAmount = 1, -- Amount of FetchItemContent items
    FetchItemMinigame = {
        Type = 'Circle',
        Variables = { math.random(5,10), math.random(8,12) }
    },
}

-- These will be used to pick random spots for the guards
local ClownGuardPositions = {
    vector4(-1579.7, 2097.14, 68.85, 9.44),
    vector4(-1566.39, 2100.68, 68.97, 346.99),
    vector4(-1581.25, 2089.2, 70.51, 31.35),
    vector4(-1586.97, 2104.1, 67.43, 336.84),
    vector4(-1583.12, 2109.8, 66.01, 314.2),
    vector4(-1571.17, 2118.67, 62.83, 343.53),
    vector4(-1568.33, 2118.86, 62.76, 283.28),
    vector4(-1569.99, 2107.57, 65.99, 212.12),    
}

local ClownGuards = {
        { model = 's_m_y_clown_01', weapon = 'weapon_snspistol'},
        { model = 's_m_y_clown_01', weapon = 'weapon_snspistol'},
        { model = 's_m_y_clown_01', weapon = 'weapon_snspistol'},
        { model = 's_m_y_clown_01', weapon = 'weapon_snspistol'},
        { coords = vector4(-1575.7, 2100.51, 68.36, 91.81), model = 's_m_y_clown_01', weapon = 'weapon_snspistol'},
        { coords = vector4(-1578.12, 2101.79, 68.15, 143.86), model = 's_m_y_clown_01', weapon = 'weapon_minismg'},
}

local ClownVehicles = {
    { coords = vector4(-1582.67, 2098.87, 70.23, 12.97), model = 'speedo2'}
}

local ClownSpecialRewards = {
    { Item = 'thermite', Amount = math.random(4, 8), Chance = 100 },
    { Item = 'trojan_usb', Amount = math.random(1, 2), Chance = 10 },
    { Item = 'electronickit', Amount = math.random(1, 2), Chance = 20 },
}

local ClownMessages = {
    Sender = 'BOSS',
    Subject = 'SUPPLIES',
    Message = "GRAB THE BRIEFCASE MARKED ON GPS!"
}

local ClownJob = {
    JobName = 'clown',
    Boss = ClownBoss,
    Guards = ClownGuards,
    GuardPositions = ClownGuardPositions,
    Vehicles = ClownVehicles,
    Items = ClownItems,
    MinimumPolice = 0,
    RunCost = 2000,
    Payout =  math.random(15000, 40000),
    SpecialRewards = ClownSpecialRewards,
    Messages = ClownMessages,
    CamActive = false,
    camera = vector3(-1542.66, 2068.95, 92.41),
    camerapoint = vector3(-1578.44, 2099.56, 67.54),
    camoffset = vector3(-1572.42, 2094.17, 72.63)
}



-------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------
--- JOB - ART
-------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------

local ArtBoss = {
    coords = vector4(-687.34, -2418.73, 13.94, 60.97),
    model = 'u_m_m_streetart_01', -- https://docs.fivem.net/docs/game-references/ped-models/
    animation = 'WORLD_HUMAN_GUARD_STAND', -- https://github.com/JarretOnline/PedAnimationList
    missionTitle = "SUPPLY RUN",
    available = {from = 0, to = 24},
}

local ArtItems = {
    FetchItemLocation = vector4(8.4, 529.35, 169.64, 53.86),
    FetchItemTime = 300000, -- time it takes for the item to activate
    FetchItem = 'securitycase', -- always use securitycase and this will open into something boss rewards
    FetchItemProp = 'hei_prop_hei_security_case', -- item (world object)
    FetchItemContents = 'reward_bags_green', -- item that drops from FetchItem after FetchItemTime is over
    FetchItemContentsAmount = 1, -- Amount of FetchItemContent items
    FetchItemMinigame = {
        Type = 'Circle',
        Variables = { math.random(5,10), math.random(8,12) }
    },
    FetchItemRandom = {
        CircleCenter = vector3(3.63, 528.46, 174.63),
        Locations = {
            vector4(10.2, 526.48, 173.63, 96.2),
            vector4(2.48, 529.84, 173.63, 222.46),
            vector4(-6.1, 520.83, 173.63, 329.94),
            vector4(-8.76, 516.18, 173.63, 147.25),
            vector4(10.78, 529.79, 174.09, 122.99),
            vector4(10.5, 536.42, 169.62, 111.98),
            vector4(-5.38, 530.57, 169.62, 12.19),
            vector4(-9.63, 532.47, 170.08, 213.65),
            vector4(-1.68, 525.97, 169.63, 276.11),
            vector4(-1.1, 524.02, 170.32, 294.44),
            vector4(10.06, 526.79, 169.64, 30.19),
            vector4(14.24, 533.73, 169.63, 298.7),
            vector4(24.24, 541.11, 175.03, 32.01)
        }
    }
}

-- These will be used to pick random spots for the guards
local ArtGuardPositions = {
    vector4(1.52, 523.65, 170.62, 309.18),
    vector4(-6.97, 509.82, 170.63, 135.18),
    vector4(-1.14, 518.09, 170.63, 302.91),
    vector4(9.01, 519.67, 170.23, 221.82),
    vector4(24.15, 520.22, 170.23, 217.78),
    vector4(15.68, 529.01, 170.63, 293.99),
    vector4(19.14, 530.15, 174.63, 222.93),
    vector4(10.95, 523.67, 174.63, 206.1),
    vector4(-13.21, 510.2, 174.63, 138.64),
    vector4(9.04, 540.48, 176.03, 12.24),
    vector4(3.82, 533.99, 170.62, 21.58),
    vector4(-9.31, 531.47, 170.62, 289.24),
    vector4(22.25, 535.58, 170.63, 112.54),
}

local ArtCivilians = {
    { coords = vector4(24.15, 520.22, 170.23, 217.78), model = 'g_m_m_mexboss_02',animation = 'PROP_HUMAN_BBQ' },
    { coords = vector4(21.95, 520.2, 170.23, 229.74), model = 'a_f_y_beach_01', animation = 'WORLD_HUMAN_PARTYING' },
    { coords = vector4(25.37, 521.02, 170.23, 150.87), model = 'a_f_y_beach_01', animation = 'WORLD_HUMAN_PARTYING' },
    { coords = vector4(13.92, 521.27, 170.23, 192.74), model = 'a_f_m_beach_01', animation = 'WORLD_HUMAN_SMOKING_POT' },
}

local ArtGuards = {
    { model = 'g_m_y_mexgang_01', weapon = 'weapon_pistol50', armor = 100 },
    { model = 'ig_ramp_mex', weapon = 'weapon_vintagepistol'},
    { model = 'ig_ramp_mex', weapon = 'weapon_vintagepistol'},
    { model = 'ig_ramp_mex', weapon = 'weapon_pumpshotgun', armor = 100 },
    { model = 'g_m_y_mexgoon_03', weapon = 'weapon_vintagepistol'},
    { model = 'g_m_y_mexgoon_03', weapon = 'WEAPON_PISTOL'},
    { model = 'g_m_y_mexgoon_03', weapon = 'weapon_pumpshotgun', armor = 100 },
    { model = 'g_m_y_pologoon_01', weapon = 'WEAPON_PISTOL'},
    { coords = vector4(0.81, 521.57, 170.62, 220.58), model = 'a_m_y_mexthug_01', weapon = 'weapon_microsmg'},
    { coords = vector4(-6.92, 529.97, 175.04, 198.58), model = 'a_m_y_mexthug_01', weapon = 'weapon_microsmg', armor = 100 },
}

local ArtVehicles = {
    { coords = vector4(13.72, 547.47, 176.08, 78.14), model = 'nero'}
}

local ArtSpecialRewards = {
    { Item = 'diamond', Amount = math.random(20, 30), Chance = 100 },
    { Item = 'casinochips', Amount = math.random(1000, 2000), Chance = 80 },
    { Item = 'silveringot', Amount = math.random(10, 20), Chance = 50 },
    { Item = 'goldingot', Amount = math.random(10, 20), Chance = 25 },

}

local ArtMessages = {
    Sender = 'BOSS',
    Subject = 'SUPPLIES',
    Message = "GRAB THE BRIEFCASE MARKED ON GPS!"
}

local ArtJob = {
    JobName = 'art',
    Token = 'raidart',
    Boss = ArtBoss,
    Guards = ArtGuards,
    GuardPositions = ArtGuardPositions,
    Civilians = ArtCivilians,
    Vehicles = ArtVehicles,
    Items = ArtItems,
    MinimumPolice = 0,
    RunCost = 8000,
    Payout =  math.random(15000, 40000),
    SpecialRewards = ArtSpecialRewards,
    Messages = ArtMessages,
    CamActive = false,
    camera = vector3(48.51, 518.04, 174.9),
    camerapoint = vector3(8.79, 522.09, 173.58),
    camoffset = vector3(5.15, 501.15, 173.04)
}





-------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------
--- JOB - BANK
-------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------

local BankBoss = {
    coords = vector4(-1060.06, -2332.46, 13.94, 332.28),
    model = 'u_m_m_streetart_01', -- https://docs.fivem.net/docs/game-references/ped-models/
    animation = 'WORLD_HUMAN_GUARD_STAND', -- https://github.com/JarretOnline/PedAnimationList
    missionTitle = "SUPPLY RUN",
    available = {from = 0, to = 24},
}

local BankItems = {
    FetchItemLocation = vector4(1716.77, 4804.79, 40.75, 274.82),
    FetchItemTime = 300000, -- time it takes for the item to activate
    FetchItem = 'securitycase', -- always use securitycase and this will open into something boss rewards
    FetchItemProp = 'hei_prop_hei_security_case', -- item (world object)
    FetchItemContents = 'reward_bags_purple', -- item that drops from FetchItem after FetchItemTime is over
    FetchItemContentsAmount = 1, -- Amount of FetchItemContent items
    FetchItemMinigame = {
        Type = 'Circle',
        Variables = { math.random(5,10), math.random(8,12) }
    },
    FetchItemRandom = {
        CircleCenter = vector3(1712.29, 4801.04, 41.76),
        Locations = {
            vector4(1718.58, 4791.65, 40.98, 356.21),
            vector4(1706.8, 4792.43, 40.98, 21.51),
            vector4(1724.56, 4809.79, 40.94, 101.93),
            vector4(1722.18, 4799.87, 40.95, 306.16),
        }
    }
}

-- These will be used to pick random spots for the guards
local BankGuardPositions = {
    vector4(1728.55, 4807.32, 41.71, 101.07),
    vector4(1729.89, 4800.09, 41.77, 105.73),
    vector4(1734.73, 4787.48, 41.92, 70.0),
    vector4(1686.23, 4807.72, 41.82, 263.64),
    vector4(1690.17, 4812.21, 41.84, 135.05),
    vector4(1663.2, 4789.43, 41.93, 271.64),
    vector4(1660.26, 4818.29, 41.93, 229.75),
    vector4(1687.86, 4814.22, 42.03, 110.51),
    vector4(1706.87, 4821.54, 42.07, 17.05),
    vector4(1720.83, 4820.15, 58.53, 145.27),
    vector4(1711.96, 4819.7, 58.53, 169.37),
    vector4(1695.22, 4758.44, 41.93, 33.33),
    vector4(1695.6, 4784.9, 42.0, 71.12),

}

local BankCivilians = {
    { coords = vector4(1688.92, 4789.39, 41.92, 97.55), model = 'a_f_m_beach_01',animation = 'PROP_HUMAN_BBQ' },
    { coords = vector4(1698.4, 4806.66, 41.84, 132.32), model = 'a_f_y_beach_01', animation = 'WORLD_HUMAN_PARTYING' },
    { coords = vector4(1706.81, 4791.61, 41.98, 53.31), model = 'a_f_y_beach_01', animation = 'WORLD_HUMAN_PARTYING' },
    { coords = vector4(1723.86, 4794.41, 41.87, 229.2), model = 'a_f_m_beach_01', animation = 'WORLD_HUMAN_SMOKING_POT' },
}

local BankGuards = {
    { model = 'g_m_y_mexgang_01', weapon = 'weapon_pistol50', armor = 60 },
    { model = 'ig_ramp_mex', weapon = 'weapon_vintagepistol', armor = 40 },
    { model = 'ig_ramp_mex', weapon = 'weapon_vintagepistol', armor = 100 },
    { model = 'ig_ramp_mex', weapon = 'weapon_pumpshotgun', armor = 60 },
    { model = 'g_m_y_mexgoon_03', weapon = 'weapon_vintagepistol', armor = 40 },
    { model = 'g_m_y_mexgoon_03', weapon = 'WEAPON_PISTOL', armor = 100 },
    { model = 'g_m_y_mexgoon_03', weapon = 'weapon_pumpshotgun', armor = 60 },
    { model = 'g_m_y_pologoon_01', weapon = 'WEAPON_PISTOL', armor = 40 },
    { model = 'a_m_y_mexthug_01', weapon = 'weapon_microsmg', armor = 100 },
    { model = 'a_m_y_mexthug_01', weapon = 'weapon_microsmg', armor = 60 },
}

local BankVehicles = {
    { coords = vector4(1710.13, 4803.6, 41.79, 90.66), model = 'stockade'}
}

local BankSpecialRewards = {
    { Item = 'goldingot', Amount = math.random(20, 30), Chance = 100 },
    { Item = 'silveringot', Amount = math.random(10, 20), Chance = 80 },
    { Item = 'diamond', Amount = math.random(10, 20), Chance = 50 },
    { Item = 'laptop', Amount = math.random(1, 1), Chance = 20 },
    { Item = 'casinochips', Amount = math.random(20000, 30000), Chance = 10 },

}

local BankMessages = {
    Sender = 'BOSS',
    Subject = 'SUPPLIES',
    Message = "GRAB THE BRIEFCASE MARKED ON GPS!"
}

local BankJob = {
    JobName = 'bank',
    Token = 'raidbank',
    Boss = BankBoss,
    Guards = BankGuards,
    GuardPositions = BankGuardPositions,
    Civilians = BankCivilians,
    Vehicles = BankVehicles,
    Items = BankItems,
    MinimumPolice = 0,
    RunCost = 6000,
    Payout =  math.random(20000, 60000),
    SpecialRewards = BankSpecialRewards,
    Messages = BankMessages,
    CamActive = false,
    camera = vector3(48.51, 518.04, 174.9),
    camerapoint = vector3(8.79, 522.09, 173.58),
    camoffset = vector3(5.15, 501.15, 173.04)
}


-------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------
--- JOB - MILITARY
-------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------

local MilitaryBoss = {
    coords = vector4(-1814.95, 2915.23, 37.67, 69.55),
    model = 'u_m_m_streetart_01', -- https://docs.fivem.net/docs/game-references/ped-models/
    animation = 'WORLD_HUMAN_GUARD_STAND', -- https://github.com/JarretOnline/PedAnimationList
    missionTitle = "SUPPLY RUN",
    available = {from = 0, to = 24},
}

local MilitaryItems = {
    FetchItemLocation = vector4(3092.17, -4703.81, 27.26, 192.76),
    FetchItemTime = 300000, -- time it takes for the item to activate
    FetchItem = 'securitycase', -- always use securitycase and this will open into something boss rewards
    FetchItemProp = 'hei_prop_hei_security_case', -- item (world object)
    FetchItemContents = 'reward_bags_blue', -- item that drops from FetchItem after FetchItemTime is over
    FetchItemContentsAmount = 1, -- Amount of FetchItemContent items
    FetchItemMinigame = {
        Type = 'Circle',
        Variables = { math.random(5,10), math.random(8,12) }
    },
    FetchItemRandom = {
        CircleCenter = vector3(3091.43, -4704.37, 27.26),
        Locations = {
            vector4(3084.95, -4685.3, 26.98, 199.88),
            vector4(3080.67, -4692.36, 26.96, 215.37),
            vector4(3091.6, -4691.1, 26.94, 113.16),
            vector4(3093.66, -4723.0, 27.97, 285.83),
            vector4(3090.29, -4725.42, 27.0, 312.53),
            vector4(3082.27, -4698.13, 26.26, 202.47),
            vector4(3086.81, -4718.69, 26.26, 16.79),
            vector4(3093.1, -4694.96, 26.26, 205.88),
            vector4(3096.34, -4722.15, 26.26, 287.44),

        }
    }
}

-- These will be used to pick random spots for the guards
local MilitaryGuardPositions = {
    vector4(3083.34, -4710.73, 27.26, 326.92),
    vector4(3083.08, -4699.91, 27.26, 154.36),
    vector4(3086.32, -4716.9, 27.26, 18.72),
    vector4(3091.02, -4700.15, 24.26, 130.03),
    vector4(3084.74, -4709.69, 24.26, 265.66),
    vector4(3089.37, -4723.43, 24.26, 109.85),
    vector4(3099.66, -4720.89, 24.26, 12.62),
    vector4(3093.12, -4695.97, 24.26, 195.43),
    vector4(3094.35, -4704.87, 18.32, 47.63),
    vector4(3084.18, -4709.5, 15.25, 313.46),
    vector4(3096.0, -4701.41, 12.24, 128.13),
    vector4(3086.11, -4741.38, 10.74, 193.1),
    vector4(3066.07, -4778.49, 11.57, 311.71),
    vector4(3060.58, -4757.2, 10.74, 308.87),
    vector4(3052.43, -4727.97, 10.74, 274.75),
    vector4(3036.35, -4677.22, 6.08, 281.37),
    vector4(3043.71, -4688.35, 6.08, 265.59),
    vector4(3071.14, -4693.52, 6.08, 102.39),
    vector4(3049.71, -4673.69, 6.08, 4.95),
    vector4(3067.18, -4670.57, 10.65, 67.38),
    vector4(3059.53, -4641.48, 6.08, 177.25),
    vector4(3075.24, -4727.62, 6.55, 285.0),
    vector4(3078.46, -4737.72, 6.23, 10.13),
    vector4(3066.99, -4747.04, 6.72, 315.12),
    vector4(3082.04, -4748.17, 6.56, 118.16),
    vector4(3107.06, -4729.86, 15.26, 101.3),
    vector4(3101.34, -4755.84, 15.26, 40.51),
    vector4(3079.18, -4693.51, 15.26, 45.68),
    vector4(3091.32, -4680.96, 15.26, 85.87),
    vector4(3095.73, -4706.75, 12.24, 14.22),
    vector4(3084.58, -4709.39, 15.25, 19.09),
    vector4(3094.81, -4718.8, 15.26, 82.53),
    vector4(3036.79, -4738.11, 15.26, 310.65),
    vector4(3023.33, -4705.29, 14.26, 258.68),
    vector4(3018.02, -4675.14, 16.76, 264.02),
    vector4(3013.59, -4646.06, 15.26, 226.05),
    vector4(3044.81, -4624.6, 15.26, 202.35),

}

local MilitaryCivilians = {
    { coords = vector4(3069.14, -4728.06, 6.08, 13.94), model = 'mp_m_waremech_01',animation = 'PROP_HUMAN_BBQ' },
    { coords = vector4(3085.23, -4688.88, 27.25, 187.65), model = 'mp_m_weapwork_01', animation = 'WORLD_HUMAN_SMOKING_POT' },
}

local MilitaryGuards = {
    { model = 's_m_y_blackops_02', weapon = 'weapon_pistol50', armor = 60 },
    { model = 'csb_mweather', weapon = 'weapon_vintagepistol', armor = 40 },
    { model = 's_m_y_blackops_02', weapon = 'weapon_vintagepistol', armor = 100 },
    { model = 'csb_ramp_marine', weapon = 'weapon_pumpshotgun', armor = 60 },
    { model = 's_m_y_blackops_02', weapon = 'weapon_vintagepistol', armor = 40 },
    { model = 'csb_mweather', weapon = 'WEAPON_PISTOL', armor = 100 },
    { model = 's_m_y_blackops_02', weapon = 'weapon_pumpshotgun', armor = 60 },
    { model = 'csb_mweather', weapon = 'WEAPON_PISTOL', armor = 40 },
    { model = 's_m_y_blackops_02', weapon = 'weapon_microsmg', armor = 100 },
    { model = 'csb_ramp_marine', weapon = 'weapon_microsmg', armor = 60 },
    { model = 's_m_y_blackops_02', weapon = 'weapon_pistol50', armor = 60 },
    { model = 'csb_mweather', weapon = 'weapon_vintagepistol', armor = 40 },
    { model = 's_m_y_blackops_02', weapon = 'weapon_vintagepistol', armor = 100 },
    { model = 'csb_ramp_marine', weapon = 'weapon_pumpshotgun', armor = 60 },
    { model = 's_m_y_blackops_02', weapon = 'weapon_vintagepistol', armor = 40 },
    { model = 'csb_mweather', weapon = 'WEAPON_PISTOL', armor = 100 },
    { model = 's_m_y_blackops_02', weapon = 'weapon_pumpshotgun', armor = 60 },
    { model = 'csb_mweather', weapon = 'WEAPON_PISTOL', armor = 40 },
    { model = 's_m_y_blackops_02', weapon = 'weapon_microsmg', armor = 100 },
    { model = 'csb_ramp_marine', weapon = 'weapon_microsmg', armor = 60 },
    { model = 's_m_y_blackops_02', weapon = 'weapon_pumpshotgun', armor = 60 },
    { model = 'csb_mweather', weapon = 'WEAPON_PISTOL', armor = 40 },
    { model = 's_m_y_blackops_02', weapon = 'weapon_microsmg', armor = 100 },
    { model = 'csb_ramp_marine', weapon = 'weapon_microsmg', armor = 60 },
}

local MilitaryVehicles = {
   -- { coords = vector4(3041.29, -4685.4, 16.26, 205.45), model = 'rhino'},
}

local MilitarySpecialRewards = {
    { Item = 'rifle_ammo', Amount = math.random(2, 3), Chance = 100 },
    { Item = 'smg_ammo', Amount = math.random(4, 6), Chance = 20 },
    { Item = 'shotgun_ammo', Amount = math.random(4, 6), Chance = 20 },
    { Item = 'weapon_machinepistol', Amount = math.random(4, 6), Chance = 10 },
    { Item = 'weapon_militaryrifle', Amount =  math.random(2, 4), Chance = 5 },
    { Item = 'weapon_specialcarbine_mk2', Amount =  math.random(2, 4), Chance = 5 },
    { Item = 'weapon_bullpuprifle_mk2', Amount =  math.random(2, 4), Chance = 5 },
    { Item = 'weapon_combatshotgun', Amount =  math.random(2, 4), Chance = 5 },
    { Item = 'weapon_combatpdw', Amount =  math.random(2, 4), Chance = 5 },
    { Item = 'weapon_ceramicpistol', Amount =  math.random(2, 4), Chance = 5 },
    { Item = 'weapon_m4', Amount =  math.random(2, 4), Chance = 5 },
    { Item = 'weapon_m70', Amount =  math.random(2, 4), Chance = 5 },
    { Item = 'weapon_ar15', Amount =  math.random(2, 4), Chance = 5 },
    { Item = 'weapon_de', Amount =  math.random(2, 4), Chance = 5 },
    { Item = 'weapon_fnx45', Amount = math.random(2, 4), Chance = 5 },
}

local MilitaryMessages = {
    Sender = 'BOSS',
    Subject = 'SUPPLIES',
    Message = "GRAB THE BRIEFCASE MARKED ON GPS!"
}

local MilitaryJob = {
    JobName = 'military',
    Token = 'raidmilitary',
    Boss = MilitaryBoss,
    Guards = MilitaryGuards,
    GuardPositions = MilitaryGuardPositions,
    Civilians = MilitaryCivilians,
    Vehicles = MilitaryVehicles,
    Items = MilitaryItems,
    MinimumPolice = 0,
    RunCost = 9000,
    Payout =  math.random(60000, 90000),
    SpecialRewards = MilitarySpecialRewards,
    Messages = MilitaryMessages,
    CamActive = false,
    camera = vector3(48.51, 518.04, 174.9),
    camerapoint = vector3(8.79, 522.09, 173.58),
    camoffset = vector3(5.15, 501.15, 173.04)
}


Config.Jobs = {
    MethJob, 
    CokeJob,
    WeedJob,
    ClownJob,
    ArtJob,
    BankJob,
    MilitaryJob,
}
