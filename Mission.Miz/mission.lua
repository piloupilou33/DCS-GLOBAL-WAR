mission = 
{
    ["requiredModules"] = 
    {
    }, -- end of ["requiredModules"]
    ["date"] = 
    {
        ["Year"] = 2021,
        ["Day"] = 28,
        ["Month"] = 2,
    }, -- end of ["date"]
    ["trig"] = 
    {
        ["actions"] = 
        {
            [1] = "a_do_script(getValueDictByKey(\"DictKey_ActionText_19\"));a_do_script(getValueDictByKey(\"DictKey_ActionText_39\"));a_do_script(getValueDictByKey(\"DictKey_ActionText_41\"));a_do_script(getValueDictByKey(\"DictKey_ActionText_40\"));",
            [2] = "a_do_script(getValueDictByKey(\"DictKey_ActionText_38\")); mission.trig.func[2]=nil;",
            [3] = "a_do_script(getValueDictByKey(\"DictKey_ActionText_37\")); mission.trig.func[3]=nil;",
            [4] = "a_do_script(getValueDictByKey(\"DictKey_ActionText_42\")); mission.trig.func[4]=nil;",
            [5] = "a_do_script(getValueDictByKey(\"DictKey_ActionText_43\")); mission.trig.func[5]=nil;",
        }, -- end of ["actions"]
        ["events"] = 
        {
        }, -- end of ["events"]
        ["custom"] = 
        {
        }, -- end of ["custom"]
        ["func"] = 
        {
            [2] = "if mission.trig.conditions[2]() then mission.trig.actions[2]() end",
            [3] = "if mission.trig.conditions[3]() then mission.trig.actions[3]() end",
            [4] = "if mission.trig.conditions[4]() then mission.trig.actions[4]() end",
            [5] = "if mission.trig.conditions[5]() then mission.trig.actions[5]() end",
        }, -- end of ["func"]
        ["flag"] = 
        {
            [1] = true,
            [2] = true,
            [3] = true,
            [4] = true,
            [5] = true,
        }, -- end of ["flag"]
        ["conditions"] = 
        {
            [1] = "return(true)",
            [2] = "return(c_time_after(1) )",
            [3] = "return(c_time_after(2) )",
            [4] = "return(c_time_after(4) )",
            [5] = "return(c_time_after(4) )",
        }, -- end of ["conditions"]
        ["customStartup"] = 
        {
        }, -- end of ["customStartup"]
        ["funcStartup"] = 
        {
            [1] = "if mission.trig.conditions[1]() then mission.trig.actions[1]() end",
        }, -- end of ["funcStartup"]
    }, -- end of ["trig"]
    ["result"] = 
    {
        ["offline"] = 
        {
            ["conditions"] = 
            {
            }, -- end of ["conditions"]
            ["actions"] = 
            {
            }, -- end of ["actions"]
            ["func"] = 
            {
            }, -- end of ["func"]
        }, -- end of ["offline"]
        ["total"] = 0,
        ["blue"] = 
        {
            ["conditions"] = 
            {
            }, -- end of ["conditions"]
            ["actions"] = 
            {
            }, -- end of ["actions"]
            ["func"] = 
            {
            }, -- end of ["func"]
        }, -- end of ["blue"]
        ["red"] = 
        {
            ["conditions"] = 
            {
            }, -- end of ["conditions"]
            ["actions"] = 
            {
            }, -- end of ["actions"]
            ["func"] = 
            {
            }, -- end of ["func"]
        }, -- end of ["red"]
    }, -- end of ["result"]
    ["maxDictId"] = 52,
    ["pictureFileNameN"] = 
    {
    }, -- end of ["pictureFileNameN"]
    ["groundControl"] = 
    {
        ["isPilotControlVehicles"] = true,
        ["roles"] = 
        {
            ["artillery_commander"] = 
            {
                ["neutrals"] = 0,
                ["blue"] = 0,
                ["red"] = 0,
            }, -- end of ["artillery_commander"]
            ["instructor"] = 
            {
                ["neutrals"] = 0,
                ["blue"] = 1,
                ["red"] = 1,
            }, -- end of ["instructor"]
            ["observer"] = 
            {
                ["neutrals"] = 0,
                ["blue"] = 0,
                ["red"] = 0,
            }, -- end of ["observer"]
            ["forward_observer"] = 
            {
                ["neutrals"] = 0,
                ["blue"] = 0,
                ["red"] = 0,
            }, -- end of ["forward_observer"]
        }, -- end of ["roles"]
    }, -- end of ["groundControl"]
    ["goals"] = 
    {
    }, -- end of ["goals"]
    ["weather"] = 
    {
        ["atmosphere_type"] = 0,
        ["wind"] = 
        {
            ["at8000"] = 
            {
                ["speed"] = 0,
                ["dir"] = 0,
            }, -- end of ["at8000"]
            ["atGround"] = 
            {
                ["speed"] = 0,
                ["dir"] = 0,
            }, -- end of ["atGround"]
            ["at2000"] = 
            {
                ["speed"] = 0,
                ["dir"] = 0,
            }, -- end of ["at2000"]
        }, -- end of ["wind"]
        ["enable_fog"] = false,
        ["groundTurbulence"] = 0,
        ["season"] = 
        {
            ["temperature"] = 20,
        }, -- end of ["season"]
        ["type_weather"] = 0,
        ["qnh"] = 760,
        ["cyclones"] = 
        {
        }, -- end of ["cyclones"]
        ["name"] = "Winter, clean sky",
        ["fog"] = 
        {
            ["thickness"] = 0,
            ["visibility"] = 0,
        }, -- end of ["fog"]
        ["visibility"] = 
        {
            ["distance"] = 80000,
        }, -- end of ["visibility"]
        ["dust_density"] = 0,
        ["enable_dust"] = false,
        ["clouds"] = 
        {
            ["thickness"] = 200,
            ["density"] = 0,
            ["base"] = 300,
            ["iprecptns"] = 0,
        }, -- end of ["clouds"]
    }, -- end of ["weather"]
    ["theatre"] = "Syria",
    ["triggers"] = 
    {
        ["zones"] = 
        {
        }, -- end of ["zones"]
    }, -- end of ["triggers"]
    ["map"] = 
    {
        ["centerY"] = -87441.026848343,
        ["zoom"] = 681.2218636139,
        ["centerX"] = -245261.51754409,
    }, -- end of ["map"]
    ["coalitions"] = 
    {
        ["neutrals"] = 
        {
            [1] = 75,
            [2] = 7,
            [3] = 70,
            [4] = 42,
            [5] = 83,
            [6] = 23,
            [7] = 65,
            [8] = 64,
            [9] = 25,
            [10] = 63,
            [11] = 76,
            [12] = 29,
            [13] = 30,
            [14] = 78,
            [15] = 31,
            [16] = 61,
            [17] = 32,
            [18] = 33,
            [19] = 60,
            [20] = 17,
            [21] = 35,
            [22] = 36,
            [23] = 59,
            [24] = 71,
            [25] = 79,
            [26] = 58,
            [27] = 57,
            [28] = 55,
            [29] = 56,
            [30] = 73,
            [31] = 39,
            [32] = 54,
            [33] = 77,
            [34] = 72,
            [35] = 41,
            [36] = 69,
            [37] = 44,
            [38] = 53,
            [39] = 22,
            [40] = 52,
            [41] = 66,
            [42] = 51,
            [43] = 82,
            [44] = 68,
            [45] = 49,
            [46] = 50,
            [47] = 48,
            [48] = 67,
            [49] = 74,
            [50] = 62,
        }, -- end of ["neutrals"]
        ["blue"] = 
        {
            [1] = 6,
            [2] = 21,
            [3] = 11,
            [4] = 8,
            [5] = 80,
            [6] = 45,
            [7] = 28,
            [8] = 13,
            [9] = 9,
            [10] = 5,
            [11] = 16,
            [12] = 15,
            [13] = 20,
            [14] = 12,
            [15] = 10,
            [16] = 40,
            [17] = 4,
            [18] = 26,
            [19] = 46,
            [20] = 3,
            [21] = 1,
            [22] = 2,
        }, -- end of ["blue"]
        ["red"] = 
        {
            [1] = 18,
            [2] = 24,
            [3] = 27,
            [4] = 81,
            [5] = 38,
            [6] = 34,
            [7] = 37,
            [8] = 19,
            [9] = 0,
            [10] = 43,
            [11] = 47,
        }, -- end of ["red"]
    }, -- end of ["coalitions"]
    ["descriptionText"] = "DictKey_descriptionText_1",
    ["pictureFileNameR"] = 
    {
    }, -- end of ["pictureFileNameR"]
    ["descriptionNeutralsTask"] = "DictKey_descriptionNeutralsTask_4",
    ["descriptionBlueTask"] = "DictKey_descriptionBlueTask_3",
    ["descriptionRedTask"] = "DictKey_descriptionRedTask_2",
    ["pictureFileNameB"] = 
    {
        [1] = "ResKey_ImageBriefing_34",
    }, -- end of ["pictureFileNameB"]
    ["coalition"] = 
    {
        ["neutrals"] = 
        {
            ["bullseye"] = 
            {
                ["y"] = 0,
                ["x"] = 0,
            }, -- end of ["bullseye"]
            ["nav_points"] = 
            {
            }, -- end of ["nav_points"]
            ["name"] = "neutrals",
            ["country"] = 
            {
            }, -- end of ["country"]
        }, -- end of ["neutrals"]
        ["blue"] = 
        {
            ["bullseye"] = 
            {
                ["y"] = 0,
                ["x"] = 0,
            }, -- end of ["bullseye"]
            ["nav_points"] = 
            {
            }, -- end of ["nav_points"]
            ["name"] = "blue",
            ["country"] = 
            {
                [1] = 
                {
                    ["helicopter"] = 
                    {
                        ["group"] = 
                        {
                            [1] = 
                            {
                                ["modulation"] = 0,
                                ["tasks"] = 
                                {
                                }, -- end of ["tasks"]
                                ["radioSet"] = false,
                                ["task"] = "CAS",
                                ["uncontrolled"] = false,
                                ["route"] = 
                                {
                                    ["points"] = 
                                    {
                                        [1] = 
                                        {
                                            ["alt"] = 500,
                                            ["action"] = "From Ground Area Hot",
                                            ["alt_type"] = "BARO",
                                            ["speed"] = 46.25,
                                            ["task"] = 
                                            {
                                                ["id"] = "ComboTask",
                                                ["params"] = 
                                                {
                                                    ["tasks"] = 
                                                    {
                                                        [1] = 
                                                        {
                                                            ["enabled"] = true,
                                                            ["key"] = "CAS",
                                                            ["id"] = "EngageTargets",
                                                            ["number"] = 1,
                                                            ["auto"] = true,
                                                            ["params"] = 
                                                            {
                                                                ["targetTypes"] = 
                                                                {
                                                                    [1] = "Helicopters",
                                                                    [2] = "Ground Units",
                                                                    [3] = "Light armed ships",
                                                                }, -- end of ["targetTypes"]
                                                                ["priority"] = 0,
                                                            }, -- end of ["params"]
                                                        }, -- end of [1]
                                                        [2] = 
                                                        {
                                                            ["enabled"] = true,
                                                            ["auto"] = true,
                                                            ["id"] = "WrappedAction",
                                                            ["number"] = 2,
                                                            ["params"] = 
                                                            {
                                                                ["action"] = 
                                                                {
                                                                    ["id"] = "EPLRS",
                                                                    ["params"] = 
                                                                    {
                                                                        ["value"] = true,
                                                                        ["groupId"] = 1,
                                                                    }, -- end of ["params"]
                                                                }, -- end of ["action"]
                                                            }, -- end of ["params"]
                                                        }, -- end of [2]
                                                    }, -- end of ["tasks"]
                                                }, -- end of ["params"]
                                            }, -- end of ["task"]
                                            ["type"] = "TakeOffGroundHot",
                                            ["ETA"] = 0,
                                            ["ETA_locked"] = true,
                                            ["y"] = -87611.867482567,
                                            ["x"] = -242675.62586457,
                                            ["name"] = "DictKey_WptName_14",
                                            ["formation_template"] = "",
                                            ["speed_locked"] = true,
                                        }, -- end of [1]
                                    }, -- end of ["points"]
                                }, -- end of ["route"]
                                ["groupId"] = 3,
                                ["hidden"] = false,
                                ["units"] = 
                                {
                                    [1] = 
                                    {
                                        ["alt"] = 500,
                                        ["alt_type"] = "BARO",
                                        ["livery_id"] = "us marines fictional",
                                        ["skill"] = "Client",
                                        ["ropeLength"] = 15,
                                        ["speed"] = 46.25,
                                        ["AddPropAircraft"] = 
                                        {
                                            ["NS430allow"] = true,
                                        }, -- end of ["AddPropAircraft"]
                                        ["type"] = "SA342M",
                                        ["Radio"] = 
                                        {
                                            [1] = 
                                            {
                                                ["modulations"] = 
                                                {
                                                    [6] = 0,
                                                    [2] = 0,
                                                    [8] = 0,
                                                    [3] = 0,
                                                    [1] = 0,
                                                    [4] = 0,
                                                    [5] = 0,
                                                    [7] = 0,
                                                }, -- end of ["modulations"]
                                                ["channels"] = 
                                                {
                                                    [6] = 41,
                                                    [2] = 31,
                                                    [8] = 50,
                                                    [3] = 32,
                                                    [1] = 30,
                                                    [4] = 33,
                                                    [5] = 40,
                                                    [7] = 42,
                                                }, -- end of ["channels"]
                                            }, -- end of [1]
                                        }, -- end of ["Radio"]
                                        ["unitId"] = 3,
                                        ["psi"] = -0,
                                        ["y"] = -87611.867482567,
                                        ["x"] = -242675.62586457,
                                        ["name"] = "DictKey_UnitName_13",
                                        ["payload"] = 
                                        {
                                            ["pylons"] = 
                                            {
                                            }, -- end of ["pylons"]
                                            ["fuel"] = 416.33,
                                            ["flare"] = 32,
                                            ["chaff"] = 0,
                                            ["gun"] = 100,
                                        }, -- end of ["payload"]
                                        ["heading"] = 0,
                                        ["callsign"] = 
                                        {
                                            [1] = 2,
                                            [2] = 1,
                                            [3] = 1,
                                            ["name"] = "Springfield11",
                                        }, -- end of ["callsign"]
                                        ["onboard_num"] = "050",
                                    }, -- end of [1]
                                }, -- end of ["units"]
                                ["y"] = -87611.867482567,
                                ["x"] = -242675.62586457,
                                ["name"] = "DictKey_GroupName_12",
                                ["communication"] = true,
                                ["start_time"] = 0,
                                ["uncontrollable"] = false,
                                ["frequency"] = 124,
                            }, -- end of [1]
                            [2] = 
                            {
                                ["modulation"] = 0,
                                ["tasks"] = 
                                {
                                }, -- end of ["tasks"]
                                ["radioSet"] = false,
                                ["task"] = "Transport",
                                ["uncontrolled"] = false,
                                ["route"] = 
                                {
                                    ["points"] = 
                                    {
                                        [1] = 
                                        {
                                            ["alt"] = 500,
                                            ["action"] = "From Ground Area Hot",
                                            ["alt_type"] = "BARO",
                                            ["speed"] = 46.25,
                                            ["task"] = 
                                            {
                                                ["id"] = "ComboTask",
                                                ["params"] = 
                                                {
                                                    ["tasks"] = 
                                                    {
                                                    }, -- end of ["tasks"]
                                                }, -- end of ["params"]
                                            }, -- end of ["task"]
                                            ["type"] = "TakeOffGroundHot",
                                            ["ETA"] = 0,
                                            ["ETA_locked"] = true,
                                            ["y"] = -87592.12829876,
                                            ["x"] = -242668.97910119,
                                            ["name"] = "DictKey_WptName_18",
                                            ["formation_template"] = "",
                                            ["speed_locked"] = true,
                                        }, -- end of [1]
                                    }, -- end of ["points"]
                                }, -- end of ["route"]
                                ["groupId"] = 4,
                                ["hidden"] = false,
                                ["units"] = 
                                {
                                    [1] = 
                                    {
                                        ["alt"] = 500,
                                        ["hardpoint_racks"] = true,
                                        ["alt_type"] = "BARO",
                                        ["livery_id"] = "Army Standard",
                                        ["skill"] = "Client",
                                        ["ropeLength"] = 15,
                                        ["speed"] = 46.25,
                                        ["AddPropAircraft"] = 
                                        {
                                            ["SoloFlight"] = false,
                                            ["ExhaustScreen"] = true,
                                            ["GunnersAISkill"] = 90,
                                            ["NetCrewControlPriority"] = 0,
                                            ["EngineResource"] = 90,
                                        }, -- end of ["AddPropAircraft"]
                                        ["type"] = "UH-1H",
                                        ["Radio"] = 
                                        {
                                            [1] = 
                                            {
                                                ["modulations"] = 
                                                {
                                                }, -- end of ["modulations"]
                                                ["channels"] = 
                                                {
                                                    [1] = 251,
                                                    [2] = 264,
                                                    [4] = 256,
                                                    [8] = 257,
                                                    [16] = 261,
                                                    [17] = 267,
                                                    [9] = 255,
                                                    [18] = 251,
                                                    [5] = 254,
                                                    [10] = 262,
                                                    [20] = 266,
                                                    [11] = 259,
                                                    [3] = 265,
                                                    [6] = 250,
                                                    [12] = 268,
                                                    [13] = 269,
                                                    [7] = 270,
                                                    [14] = 260,
                                                    [15] = 263,
                                                    [19] = 253,
                                                }, -- end of ["channels"]
                                            }, -- end of [1]
                                        }, -- end of ["Radio"]
                                        ["unitId"] = 4,
                                        ["psi"] = -0,
                                        ["y"] = -87592.12829876,
                                        ["x"] = -242668.97910119,
                                        ["name"] = "DictKey_UnitName_17",
                                        ["payload"] = 
                                        {
                                            ["pylons"] = 
                                            {
                                            }, -- end of ["pylons"]
                                            ["fuel"] = "631",
                                            ["flare"] = 60,
                                            ["chaff"] = 0,
                                            ["gun"] = 100,
                                        }, -- end of ["payload"]
                                        ["heading"] = 0,
                                        ["callsign"] = 
                                        {
                                            [1] = 2,
                                            [2] = 1,
                                            [3] = 1,
                                            ["name"] = "Springfield11",
                                        }, -- end of ["callsign"]
                                        ["onboard_num"] = "050",
                                    }, -- end of [1]
                                }, -- end of ["units"]
                                ["y"] = -87592.12829876,
                                ["x"] = -242668.97910119,
                                ["name"] = "DictKey_GroupName_16",
                                ["communication"] = true,
                                ["start_time"] = 0,
                                ["uncontrollable"] = false,
                                ["frequency"] = 251,
                            }, -- end of [2]
                        }, -- end of ["group"]
                    }, -- end of ["helicopter"]
                    ["name"] = "USA",
                    ["id"] = 2,
                    ["vehicle"] = 
                    {
                        ["group"] = 
                        {
                            [1] = 
                            {
                                ["visible"] = false,
                                ["tasks"] = 
                                {
                                }, -- end of ["tasks"]
                                ["uncontrollable"] = false,
                                ["task"] = "Pas de sol",
                                ["route"] = 
                                {
                                    ["spans"] = 
                                    {
                                    }, -- end of ["spans"]
                                    ["points"] = 
                                    {
                                        [1] = 
                                        {
                                            ["alt"] = 13,
                                            ["type"] = "Turning Point",
                                            ["ETA"] = 0,
                                            ["alt_type"] = "BARO",
                                            ["formation_template"] = "",
                                            ["y"] = -87491.438748774,
                                            ["x"] = -245254.37203069,
                                            ["name"] = "DictKey_WptName_46",
                                            ["ETA_locked"] = true,
                                            ["speed"] = 5.5555555555556,
                                            ["action"] = "Off Road",
                                            ["task"] = 
                                            {
                                                ["id"] = "ComboTask",
                                                ["params"] = 
                                                {
                                                    ["tasks"] = 
                                                    {
                                                        [1] = 
                                                        {
                                                            ["enabled"] = true,
                                                            ["auto"] = true,
                                                            ["id"] = "WrappedAction",
                                                            ["number"] = 1,
                                                            ["params"] = 
                                                            {
                                                                ["action"] = 
                                                                {
                                                                    ["id"] = "EPLRS",
                                                                    ["params"] = 
                                                                    {
                                                                        ["value"] = true,
                                                                        ["groupId"] = 2,
                                                                    }, -- end of ["params"]
                                                                }, -- end of ["action"]
                                                            }, -- end of ["params"]
                                                        }, -- end of [1]
                                                    }, -- end of ["tasks"]
                                                }, -- end of ["params"]
                                            }, -- end of ["task"]
                                            ["speed_locked"] = true,
                                        }, -- end of [1]
                                    }, -- end of ["points"]
                                }, -- end of ["route"]
                                ["groupId"] = 5,
                                ["hidden"] = false,
                                ["units"] = 
                                {
                                    [1] = 
                                    {
                                        ["transportable"] = 
                                        {
                                            ["randomTransportable"] = false,
                                        }, -- end of ["transportable"]
                                        ["skill"] = "Average",
                                        ["type"] = "M-113",
                                        ["unitId"] = 5,
                                        ["y"] = -87491.438748774,
                                        ["x"] = -245254.37203069,
                                        ["name"] = "DictKey_UnitName_45",
                                        ["heading"] = 0,
                                        ["playerCanDrive"] = false,
                                    }, -- end of [1]
                                }, -- end of ["units"]
                                ["y"] = -87491.438748774,
                                ["x"] = -245254.37203069,
                                ["name"] = "DictKey_GroupName_44",
                                ["start_time"] = 0,
                            }, -- end of [1]
                        }, -- end of ["group"]
                    }, -- end of ["vehicle"]
                    ["plane"] = 
                    {
                        ["group"] = 
                        {
                            [1] = 
                            {
                                ["modulation"] = 0,
                                ["tasks"] = 
                                {
                                }, -- end of ["tasks"]
                                ["radioSet"] = false,
                                ["task"] = "CAP",
                                ["uncontrolled"] = false,
                                ["route"] = 
                                {
                                    ["points"] = 
                                    {
                                        [1] = 
                                        {
                                            ["alt"] = 6,
                                            ["action"] = "From Parking Area Hot",
                                            ["alt_type"] = "BARO",
                                            ["speed"] = 138.88888888889,
                                            ["task"] = 
                                            {
                                                ["id"] = "ComboTask",
                                                ["params"] = 
                                                {
                                                    ["tasks"] = 
                                                    {
                                                        [1] = 
                                                        {
                                                            ["enabled"] = true,
                                                            ["key"] = "CAP",
                                                            ["id"] = "EngageTargets",
                                                            ["number"] = 1,
                                                            ["auto"] = true,
                                                            ["params"] = 
                                                            {
                                                                ["targetTypes"] = 
                                                                {
                                                                    [1] = "Air",
                                                                }, -- end of ["targetTypes"]
                                                                ["priority"] = 0,
                                                            }, -- end of ["params"]
                                                        }, -- end of [1]
                                                        [2] = 
                                                        {
                                                            ["enabled"] = true,
                                                            ["auto"] = true,
                                                            ["id"] = "WrappedAction",
                                                            ["number"] = 2,
                                                            ["params"] = 
                                                            {
                                                                ["action"] = 
                                                                {
                                                                    ["id"] = "EPLRS",
                                                                    ["params"] = 
                                                                    {
                                                                        ["value"] = true,
                                                                        ["groupId"] = 1,
                                                                    }, -- end of ["params"]
                                                                }, -- end of ["action"]
                                                            }, -- end of ["params"]
                                                        }, -- end of [2]
                                                    }, -- end of ["tasks"]
                                                }, -- end of ["params"]
                                            }, -- end of ["task"]
                                            ["type"] = "TakeOffParkingHot",
                                            ["ETA"] = 0,
                                            ["ETA_locked"] = true,
                                            ["y"] = -87918.0234375,
                                            ["x"] = -242230.96875,
                                            ["name"] = "DictKey_WptName_8",
                                            ["formation_template"] = "",
                                            ["airdromeId"] = 13,
                                            ["speed_locked"] = true,
                                        }, -- end of [1]
                                    }, -- end of ["points"]
                                }, -- end of ["route"]
                                ["groupId"] = 1,
                                ["hidden"] = false,
                                ["units"] = 
                                {
                                    [1] = 
                                    {
                                        ["alt"] = 6,
                                        ["alt_type"] = "BARO",
                                        ["livery_id"] = "vfa-37",
                                        ["skill"] = "Client",
                                        ["parking"] = "0",
                                        ["speed"] = 138.88888888889,
                                        ["AddPropAircraft"] = 
                                        {
                                            ["OuterBoard"] = 0,
                                            ["InnerBoard"] = 0,
                                            ["HelmetMountedDevice"] = 1,
                                        }, -- end of ["AddPropAircraft"]
                                        ["type"] = "FA-18C_hornet",
                                        ["Radio"] = 
                                        {
                                            [1] = 
                                            {
                                                ["modulations"] = 
                                                {
                                                    [1] = 0,
                                                    [2] = 0,
                                                    [4] = 0,
                                                    [8] = 0,
                                                    [16] = 0,
                                                    [17] = 0,
                                                    [9] = 0,
                                                    [18] = 0,
                                                    [5] = 0,
                                                    [10] = 0,
                                                    [20] = 0,
                                                    [11] = 0,
                                                    [3] = 0,
                                                    [6] = 0,
                                                    [12] = 0,
                                                    [13] = 0,
                                                    [7] = 0,
                                                    [14] = 0,
                                                    [15] = 0,
                                                    [19] = 0,
                                                }, -- end of ["modulations"]
                                                ["channels"] = 
                                                {
                                                    [1] = 305,
                                                    [2] = 264,
                                                    [4] = 256,
                                                    [8] = 257,
                                                    [16] = 261,
                                                    [17] = 267,
                                                    [9] = 255,
                                                    [18] = 251,
                                                    [5] = 254,
                                                    [10] = 262,
                                                    [20] = 266,
                                                    [11] = 259,
                                                    [3] = 265,
                                                    [6] = 250,
                                                    [12] = 268,
                                                    [13] = 269,
                                                    [7] = 270,
                                                    [14] = 260,
                                                    [15] = 263,
                                                    [19] = 253,
                                                }, -- end of ["channels"]
                                            }, -- end of [1]
                                            [2] = 
                                            {
                                                ["modulations"] = 
                                                {
                                                    [1] = 0,
                                                    [2] = 0,
                                                    [4] = 0,
                                                    [8] = 0,
                                                    [16] = 0,
                                                    [17] = 0,
                                                    [9] = 0,
                                                    [18] = 0,
                                                    [5] = 0,
                                                    [10] = 0,
                                                    [20] = 0,
                                                    [11] = 0,
                                                    [3] = 0,
                                                    [6] = 0,
                                                    [12] = 0,
                                                    [13] = 0,
                                                    [7] = 0,
                                                    [14] = 0,
                                                    [15] = 0,
                                                    [19] = 0,
                                                }, -- end of ["modulations"]
                                                ["channels"] = 
                                                {
                                                    [1] = 305,
                                                    [2] = 264,
                                                    [4] = 256,
                                                    [8] = 257,
                                                    [16] = 261,
                                                    [17] = 267,
                                                    [9] = 255,
                                                    [18] = 251,
                                                    [5] = 254,
                                                    [10] = 262,
                                                    [20] = 266,
                                                    [11] = 259,
                                                    [3] = 265,
                                                    [6] = 250,
                                                    [12] = 268,
                                                    [13] = 269,
                                                    [7] = 270,
                                                    [14] = 260,
                                                    [15] = 263,
                                                    [19] = 253,
                                                }, -- end of ["channels"]
                                            }, -- end of [2]
                                        }, -- end of ["Radio"]
                                        ["unitId"] = 1,
                                        ["psi"] = 0,
                                        ["dataCartridge"] = 
                                        {
                                            ["GroupsPoints"] = 
                                            {
                                                ["PB"] = 
                                                {
                                                }, -- end of ["PB"]
                                                ["Sequence 2 Red"] = 
                                                {
                                                }, -- end of ["Sequence 2 Red"]
                                                ["Sequence 3 Yellow"] = 
                                                {
                                                }, -- end of ["Sequence 3 Yellow"]
                                                ["Sequence 1 Blue"] = 
                                                {
                                                }, -- end of ["Sequence 1 Blue"]
                                                ["Start Location"] = 
                                                {
                                                }, -- end of ["Start Location"]
                                                ["A/A Waypoint"] = 
                                                {
                                                }, -- end of ["A/A Waypoint"]
                                                ["PP"] = 
                                                {
                                                }, -- end of ["PP"]
                                                ["Initial Point"] = 
                                                {
                                                }, -- end of ["Initial Point"]
                                            }, -- end of ["GroupsPoints"]
                                            ["Points"] = 
                                            {
                                            }, -- end of ["Points"]
                                        }, -- end of ["dataCartridge"]
                                        ["parking_id"] = "G5",
                                        ["x"] = -242230.96875,
                                        ["name"] = "DictKey_UnitName_7",
                                        ["payload"] = 
                                        {
                                            ["pylons"] = 
                                            {
                                            }, -- end of ["pylons"]
                                            ["fuel"] = 4900,
                                            ["flare"] = 30,
                                            ["ammo_type"] = 1,
                                            ["chaff"] = 60,
                                            ["gun"] = 100,
                                        }, -- end of ["payload"]
                                        ["y"] = -87918.0234375,
                                        ["heading"] = 0,
                                        ["callsign"] = 
                                        {
                                            [1] = 1,
                                            [2] = 1,
                                            [3] = 1,
                                            ["name"] = "Enfield11",
                                        }, -- end of ["callsign"]
                                        ["onboard_num"] = "010",
                                    }, -- end of [1]
                                }, -- end of ["units"]
                                ["y"] = -87918.0234375,
                                ["x"] = -242230.96875,
                                ["name"] = "DictKey_GroupName_6",
                                ["communication"] = true,
                                ["start_time"] = 0,
                                ["uncontrollable"] = false,
                                ["frequency"] = 305,
                            }, -- end of [1]
                            [2] = 
                            {
                                ["modulation"] = 0,
                                ["tasks"] = 
                                {
                                }, -- end of ["tasks"]
                                ["radioSet"] = false,
                                ["task"] = "CAP",
                                ["uncontrolled"] = false,
                                ["route"] = 
                                {
                                    ["points"] = 
                                    {
                                        [1] = 
                                        {
                                            ["alt"] = 6,
                                            ["action"] = "From Parking Area Hot",
                                            ["alt_type"] = "BARO",
                                            ["speed"] = 138.88888888889,
                                            ["task"] = 
                                            {
                                                ["id"] = "ComboTask",
                                                ["params"] = 
                                                {
                                                    ["tasks"] = 
                                                    {
                                                        [1] = 
                                                        {
                                                            ["enabled"] = true,
                                                            ["key"] = "CAP",
                                                            ["id"] = "EngageTargets",
                                                            ["number"] = 1,
                                                            ["auto"] = true,
                                                            ["params"] = 
                                                            {
                                                                ["targetTypes"] = 
                                                                {
                                                                    [1] = "Air",
                                                                }, -- end of ["targetTypes"]
                                                                ["priority"] = 0,
                                                            }, -- end of ["params"]
                                                        }, -- end of [1]
                                                        [2] = 
                                                        {
                                                            ["enabled"] = true,
                                                            ["auto"] = true,
                                                            ["id"] = "WrappedAction",
                                                            ["number"] = 2,
                                                            ["params"] = 
                                                            {
                                                                ["action"] = 
                                                                {
                                                                    ["id"] = "EPLRS",
                                                                    ["params"] = 
                                                                    {
                                                                        ["value"] = true,
                                                                        ["groupId"] = 2,
                                                                    }, -- end of ["params"]
                                                                }, -- end of ["action"]
                                                            }, -- end of ["params"]
                                                        }, -- end of [2]
                                                    }, -- end of ["tasks"]
                                                }, -- end of ["params"]
                                            }, -- end of ["task"]
                                            ["type"] = "TakeOffParkingHot",
                                            ["ETA"] = 0,
                                            ["ETA_locked"] = true,
                                            ["y"] = -87909.9140625,
                                            ["x"] = -242256.453125,
                                            ["name"] = "DictKey_WptName_11",
                                            ["formation_template"] = "",
                                            ["airdromeId"] = 13,
                                            ["speed_locked"] = true,
                                        }, -- end of [1]
                                    }, -- end of ["points"]
                                }, -- end of ["route"]
                                ["groupId"] = 2,
                                ["hidden"] = false,
                                ["units"] = 
                                {
                                    [1] = 
                                    {
                                        ["alt"] = 6,
                                        ["alt_type"] = "BARO",
                                        ["livery_id"] = "vfa-37",
                                        ["skill"] = "Client",
                                        ["parking"] = "1",
                                        ["speed"] = 138.88888888889,
                                        ["AddPropAircraft"] = 
                                        {
                                            ["OuterBoard"] = 0,
                                            ["InnerBoard"] = 0,
                                            ["HelmetMountedDevice"] = 1,
                                        }, -- end of ["AddPropAircraft"]
                                        ["type"] = "FA-18C_hornet",
                                        ["Radio"] = 
                                        {
                                            [1] = 
                                            {
                                                ["modulations"] = 
                                                {
                                                    [1] = 0,
                                                    [2] = 0,
                                                    [4] = 0,
                                                    [8] = 0,
                                                    [16] = 0,
                                                    [17] = 0,
                                                    [9] = 0,
                                                    [18] = 0,
                                                    [5] = 0,
                                                    [10] = 0,
                                                    [20] = 0,
                                                    [11] = 0,
                                                    [3] = 0,
                                                    [6] = 0,
                                                    [12] = 0,
                                                    [13] = 0,
                                                    [7] = 0,
                                                    [14] = 0,
                                                    [15] = 0,
                                                    [19] = 0,
                                                }, -- end of ["modulations"]
                                                ["channels"] = 
                                                {
                                                    [1] = 305,
                                                    [2] = 264,
                                                    [4] = 256,
                                                    [8] = 257,
                                                    [16] = 261,
                                                    [17] = 267,
                                                    [9] = 255,
                                                    [18] = 251,
                                                    [5] = 254,
                                                    [10] = 262,
                                                    [20] = 266,
                                                    [11] = 259,
                                                    [3] = 265,
                                                    [6] = 250,
                                                    [12] = 268,
                                                    [13] = 269,
                                                    [7] = 270,
                                                    [14] = 260,
                                                    [15] = 263,
                                                    [19] = 253,
                                                }, -- end of ["channels"]
                                            }, -- end of [1]
                                            [2] = 
                                            {
                                                ["modulations"] = 
                                                {
                                                    [1] = 0,
                                                    [2] = 0,
                                                    [4] = 0,
                                                    [8] = 0,
                                                    [16] = 0,
                                                    [17] = 0,
                                                    [9] = 0,
                                                    [18] = 0,
                                                    [5] = 0,
                                                    [10] = 0,
                                                    [20] = 0,
                                                    [11] = 0,
                                                    [3] = 0,
                                                    [6] = 0,
                                                    [12] = 0,
                                                    [13] = 0,
                                                    [7] = 0,
                                                    [14] = 0,
                                                    [15] = 0,
                                                    [19] = 0,
                                                }, -- end of ["modulations"]
                                                ["channels"] = 
                                                {
                                                    [1] = 305,
                                                    [2] = 264,
                                                    [4] = 256,
                                                    [8] = 257,
                                                    [16] = 261,
                                                    [17] = 267,
                                                    [9] = 255,
                                                    [18] = 251,
                                                    [5] = 254,
                                                    [10] = 262,
                                                    [20] = 266,
                                                    [11] = 259,
                                                    [3] = 265,
                                                    [6] = 250,
                                                    [12] = 268,
                                                    [13] = 269,
                                                    [7] = 270,
                                                    [14] = 260,
                                                    [15] = 263,
                                                    [19] = 253,
                                                }, -- end of ["channels"]
                                            }, -- end of [2]
                                        }, -- end of ["Radio"]
                                        ["unitId"] = 2,
                                        ["psi"] = 0,
                                        ["dataCartridge"] = 
                                        {
                                            ["GroupsPoints"] = 
                                            {
                                                ["PB"] = 
                                                {
                                                }, -- end of ["PB"]
                                                ["Sequence 2 Red"] = 
                                                {
                                                }, -- end of ["Sequence 2 Red"]
                                                ["Sequence 3 Yellow"] = 
                                                {
                                                }, -- end of ["Sequence 3 Yellow"]
                                                ["Sequence 1 Blue"] = 
                                                {
                                                }, -- end of ["Sequence 1 Blue"]
                                                ["Start Location"] = 
                                                {
                                                }, -- end of ["Start Location"]
                                                ["A/A Waypoint"] = 
                                                {
                                                }, -- end of ["A/A Waypoint"]
                                                ["PP"] = 
                                                {
                                                }, -- end of ["PP"]
                                                ["Initial Point"] = 
                                                {
                                                }, -- end of ["Initial Point"]
                                            }, -- end of ["GroupsPoints"]
                                            ["Points"] = 
                                            {
                                            }, -- end of ["Points"]
                                        }, -- end of ["dataCartridge"]
                                        ["parking_id"] = "G4",
                                        ["x"] = -242256.453125,
                                        ["name"] = "DictKey_UnitName_10",
                                        ["payload"] = 
                                        {
                                            ["pylons"] = 
                                            {
                                            }, -- end of ["pylons"]
                                            ["fuel"] = 4900,
                                            ["flare"] = 30,
                                            ["ammo_type"] = 1,
                                            ["chaff"] = 60,
                                            ["gun"] = 100,
                                        }, -- end of ["payload"]
                                        ["y"] = -87909.9140625,
                                        ["heading"] = 0,
                                        ["callsign"] = 
                                        {
                                            [1] = 1,
                                            [2] = 1,
                                            [3] = 1,
                                            ["name"] = "Enfield11",
                                        }, -- end of ["callsign"]
                                        ["onboard_num"] = "010",
                                    }, -- end of [1]
                                }, -- end of ["units"]
                                ["y"] = -87909.9140625,
                                ["x"] = -242256.453125,
                                ["name"] = "DictKey_GroupName_9",
                                ["communication"] = true,
                                ["start_time"] = 0,
                                ["uncontrollable"] = false,
                                ["frequency"] = 305,
                            }, -- end of [2]
                        }, -- end of ["group"]
                    }, -- end of ["plane"]
                    ["static"] = 
                    {
                        ["group"] = 
                        {
                            [1] = 
                            {
                                ["heading"] = 0,
                                ["route"] = 
                                {
                                    ["points"] = 
                                    {
                                        [1] = 
                                        {
                                            ["alt"] = 0,
                                            ["type"] = "",
                                            ["name"] = "",
                                            ["y"] = -87477.084750584,
                                            ["speed"] = 0,
                                            ["x"] = -245254.0024775,
                                            ["formation_template"] = "",
                                            ["action"] = "",
                                        }, -- end of [1]
                                    }, -- end of ["points"]
                                }, -- end of ["route"]
                                ["groupId"] = 6,
                                ["units"] = 
                                {
                                    [1] = 
                                    {
                                        ["category"] = "Armor",
                                        ["type"] = "M-113",
                                        ["unitId"] = 6,
                                        ["y"] = -87477.084750584,
                                        ["x"] = -245254.0024775,
                                        ["name"] = "DictKey_GroupName_47",
                                        ["heading"] = 0,
                                    }, -- end of [1]
                                }, -- end of ["units"]
                                ["y"] = -87477.084750584,
                                ["x"] = -245254.0024775,
                                ["name"] = "DictKey_GroupName_47",
                                ["dead"] = false,
                            }, -- end of [1]
                            [2] = 
                            {
                                ["heading"] = 0,
                                ["route"] = 
                                {
                                    ["points"] = 
                                    {
                                        [1] = 
                                        {
                                            ["alt"] = 0,
                                            ["type"] = "",
                                            ["name"] = "",
                                            ["y"] = -87463.388226342,
                                            ["speed"] = 0,
                                            ["x"] = -245254.2427674,
                                            ["formation_template"] = "",
                                            ["action"] = "",
                                        }, -- end of [1]
                                    }, -- end of ["points"]
                                }, -- end of ["route"]
                                ["groupId"] = 7,
                                ["units"] = 
                                {
                                    [1] = 
                                    {
                                        ["category"] = "Armor",
                                        ["type"] = "M-113",
                                        ["unitId"] = 7,
                                        ["y"] = -87463.388226342,
                                        ["x"] = -245254.2427674,
                                        ["name"] = "DictKey_GroupName_50",
                                        ["heading"] = 0,
                                    }, -- end of [1]
                                }, -- end of ["units"]
                                ["y"] = -87463.388226342,
                                ["x"] = -245254.2427674,
                                ["name"] = "DictKey_GroupName_50",
                                ["dead"] = true,
                            }, -- end of [2]
                        }, -- end of ["group"]
                    }, -- end of ["static"]
                }, -- end of [1]
            }, -- end of ["country"]
        }, -- end of ["blue"]
        ["red"] = 
        {
            ["bullseye"] = 
            {
                ["y"] = 0,
                ["x"] = 0,
            }, -- end of ["bullseye"]
            ["nav_points"] = 
            {
            }, -- end of ["nav_points"]
            ["name"] = "red",
            ["country"] = 
            {
            }, -- end of ["country"]
        }, -- end of ["red"]
    }, -- end of ["coalition"]
    ["sortie"] = "DictKey_sortie_5",
    ["version"] = 18,
    ["trigrules"] = 
    {
        [1] = 
        {
            ["rules"] = 
            {
            }, -- end of ["rules"]
            ["eventlist"] = "",
            ["comment"] = "GLOBAL WAR - LOADING",
            ["actions"] = 
            {
                [1] = 
                {
                    ["zone"] = "",
                    ["KeyDict_text"] = "DictKey_ActionText_19",
                    ["meters"] = 1000,
                    ["predicate"] = "a_do_script",
                    ["text"] = "DictKey_ActionText_19",
                }, -- end of [1]
                [2] = 
                {
                    ["zone"] = "",
                    ["text"] = "DictKey_ActionText_39",
                    ["meters"] = 1000,
                    ["KeyDict_text"] = "DictKey_ActionText_39",
                    ["predicate"] = "a_do_script",
                }, -- end of [2]
                [3] = 
                {
                    ["zone"] = "",
                    ["meters"] = 1000,
                    ["text"] = "DictKey_ActionText_41",
                    ["predicate"] = "a_do_script",
                    ["KeyDict_text"] = "DictKey_ActionText_41",
                }, -- end of [3]
                [4] = 
                {
                    ["zone"] = "",
                    ["predicate"] = "a_do_script",
                    ["text"] = "DictKey_ActionText_40",
                    ["KeyDict_text"] = "DictKey_ActionText_40",
                    ["meters"] = 1000,
                }, -- end of [4]
            }, -- end of ["actions"]
            ["predicate"] = "triggerStart",
            ["colorItem"] = "0xffff00ff",
        }, -- end of [1]
        [2] = 
        {
            ["rules"] = 
            {
                [1] = 
                {
                    ["altitude"] = 1,
                    ["seconds"] = 1,
                    ["predicate"] = "c_time_after",
                    ["unit"] = 2,
                }, -- end of [1]
            }, -- end of ["rules"]
            ["eventlist"] = "",
            ["comment"] = "GLOBAL WAR - TEST - Saving",
            ["actions"] = 
            {
                [1] = 
                {
                    ["zone"] = "",
                    ["predicate"] = "a_do_script",
                    ["text"] = "DictKey_ActionText_38",
                    ["KeyDict_text"] = "DictKey_ActionText_38",
                    ["meters"] = 1000,
                }, -- end of [1]
            }, -- end of ["actions"]
            ["predicate"] = "triggerOnce",
            ["colorItem"] = "0xffff00ff",
        }, -- end of [2]
        [3] = 
        {
            ["rules"] = 
            {
                [1] = 
                {
                    ["altitude"] = 1,
                    ["seconds"] = 2,
                    ["predicate"] = "c_time_after",
                    ["unit"] = 2,
                }, -- end of [1]
            }, -- end of ["rules"]
            ["comment"] = "GLOBAL WAR - TEST - Menu",
            ["eventlist"] = "",
            ["predicate"] = "triggerOnce",
            ["actions"] = 
            {
                [1] = 
                {
                    ["zone"] = "",
                    ["text"] = "DictKey_ActionText_37",
                    ["meters"] = 1000,
                    ["KeyDict_text"] = "DictKey_ActionText_37",
                    ["predicate"] = "a_do_script",
                }, -- end of [1]
            }, -- end of ["actions"]
            ["colorItem"] = "0xffff00ff",
        }, -- end of [3]
        [4] = 
        {
            ["rules"] = 
            {
                [1] = 
                {
                    ["altitude"] = 1,
                    ["seconds"] = 4,
                    ["predicate"] = "c_time_after",
                    ["unit"] = 2,
                }, -- end of [1]
            }, -- end of ["rules"]
            ["eventlist"] = "",
            ["comment"] = "GLOBAL WAR - TEST - Marker",
            ["actions"] = 
            {
                [1] = 
                {
                    ["zone"] = "",
                    ["predicate"] = "a_do_script",
                    ["text"] = "DictKey_ActionText_42",
                    ["KeyDict_text"] = "DictKey_ActionText_42",
                    ["meters"] = 1000,
                }, -- end of [1]
            }, -- end of ["actions"]
            ["predicate"] = "triggerOnce",
            ["colorItem"] = "0xffff00ff",
        }, -- end of [4]
        [5] = 
        {
            ["rules"] = 
            {
                [1] = 
                {
                    ["altitude"] = 1,
                    ["seconds"] = 4,
                    ["predicate"] = "c_time_after",
                    ["unit"] = 2,
                }, -- end of [1]
            }, -- end of ["rules"]
            ["comment"] = "GLOBAL WAR - TEST - Spawn",
            ["eventlist"] = "",
            ["predicate"] = "triggerOnce",
            ["actions"] = 
            {
                [1] = 
                {
                    ["zone"] = "",
                    ["meters"] = 1000,
                    ["text"] = "DictKey_ActionText_43",
                    ["predicate"] = "a_do_script",
                    ["KeyDict_text"] = "DictKey_ActionText_43",
                }, -- end of [1]
            }, -- end of ["actions"]
            ["colorItem"] = "0xffff00ff",
        }, -- end of [5]
    }, -- end of ["trigrules"]
    ["currentKey"] = 1229,
    ["start_time"] = 36000,
    ["forcedOptions"] = 
    {
        ["userMarks"] = true,
        ["birds"] = 550,
        ["optionsView"] = "optview_all",
        ["geffect"] = "realistic",
        ["civTraffic"] = "medium",
        ["cockpitVisualRM"] = true,
        ["wakeTurbulence"] = true,
        ["labels"] = 3,
    }, -- end of ["forcedOptions"]
    ["failures"] = 
    {
        ["OIL_RADIATOR_SENSOR"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "OIL_RADIATOR_SENSOR",
            ["mm"] = 0,
        }, -- end of ["OIL_RADIATOR_SENSOR"]
        ["hs_damage_GainAccumulator"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "hs_damage_GainAccumulator",
            ["mm"] = 0,
        }, -- end of ["hs_damage_GainAccumulator"]
        ["FWD_TANK_LEAK"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "FWD_TANK_LEAK",
            ["mm"] = 0,
        }, -- end of ["FWD_TANK_LEAK"]
        ["CTRL_RUDDER_ROD_MAJOR_DAMAGE"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "CTRL_RUDDER_ROD_MAJOR_DAMAGE",
            ["mm"] = 0,
        }, -- end of ["CTRL_RUDDER_ROD_MAJOR_DAMAGE"]
        ["INST_VARIOMETER_CLOGGED"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "INST_VARIOMETER_CLOGGED",
            ["mm"] = 0,
        }, -- end of ["INST_VARIOMETER_CLOGGED"]
        ["GUN_LEFT_IN_MOUNT_LOOSE"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "GUN_LEFT_IN_MOUNT_LOOSE",
            ["mm"] = 0,
        }, -- end of ["GUN_LEFT_IN_MOUNT_LOOSE"]
        ["Failure_Gear_NWS"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "Failure_Gear_NWS",
            ["mm"] = 0,
        }, -- end of ["Failure_Gear_NWS"]
        ["rws"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "rws",
            ["mm"] = 0,
        }, -- end of ["rws"]
        ["AN_ALR69V_FAILURE_SENSOR_TAIL_RIGHT"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "AN_ALR69V_FAILURE_SENSOR_TAIL_RIGHT",
            ["mm"] = 0,
        }, -- end of ["AN_ALR69V_FAILURE_SENSOR_TAIL_RIGHT"]
        ["HUDDISPLAY"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "HUDDISPLAY",
            ["mm"] = 0,
        }, -- end of ["HUDDISPLAY"]
        ["CTRL_ELEVATOR_ROD_DESTROYED"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "CTRL_ELEVATOR_ROD_DESTROYED",
            ["mm"] = 0,
        }, -- end of ["CTRL_ELEVATOR_ROD_DESTROYED"]
        ["PNEM_RH_BRAKE_HOSE_PERFORATED"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "PNEM_RH_BRAKE_HOSE_PERFORATED",
            ["mm"] = 0,
        }, -- end of ["PNEM_RH_BRAKE_HOSE_PERFORATED"]
        ["ADI_UNIT"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "ADI_UNIT",
            ["mm"] = 0,
        }, -- end of ["ADI_UNIT"]
        ["tail_reductor_chip"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "tail_reductor_chip",
            ["mm"] = 0,
        }, -- end of ["tail_reductor_chip"]
        ["l_gen"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "l_gen",
            ["mm"] = 0,
        }, -- end of ["l_gen"]
        ["OIL_RADIATOR_MOTOR"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "OIL_RADIATOR_MOTOR",
            ["mm"] = 0,
        }, -- end of ["OIL_RADIATOR_MOTOR"]
        ["hs_damage_GainAutoUnload"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "hs_damage_GainAutoUnload",
            ["mm"] = 0,
        }, -- end of ["hs_damage_GainAutoUnload"]
        ["UNCR_C_STRUT_DOWN_LOCK_FAILURE"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "UNCR_C_STRUT_DOWN_LOCK_FAILURE",
            ["mm"] = 0,
        }, -- end of ["UNCR_C_STRUT_DOWN_LOCK_FAILURE"]
        ["AN_ALE_40V_FAILURE_TOTAL"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "AN_ALE_40V_FAILURE_TOTAL",
            ["mm"] = 0,
        }, -- end of ["AN_ALE_40V_FAILURE_TOTAL"]
        ["SAR_hover_flight_glide"] = 
        {
            ["hh"] = 0,
            ["enable"] = false,
            ["prob"] = 100,
            ["id"] = "SAR_hover_flight_glide",
            ["mmint"] = 1,
            ["hidden"] = true,
            ["mm"] = 0,
        }, -- end of ["SAR_hover_flight_glide"]
        ["HORIZON_BAR_NOT_SETTLE"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "HORIZON_BAR_NOT_SETTLE",
            ["mm"] = 0,
        }, -- end of ["HORIZON_BAR_NOT_SETTLE"]
        ["AN_ALE_40V_FAILURE_CONTAINER_LEFT_WING"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "AN_ALE_40V_FAILURE_CONTAINER_LEFT_WING",
            ["mm"] = 0,
        }, -- end of ["AN_ALE_40V_FAILURE_CONTAINER_LEFT_WING"]
        ["OIL_DILUTION_WIRE"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "OIL_DILUTION_WIRE",
            ["mm"] = 0,
        }, -- end of ["OIL_DILUTION_WIRE"]
        ["FLEX_S_BKP_LAMP_DEFECTIVE"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "FLEX_S_BKP_LAMP_DEFECTIVE",
            ["mm"] = 0,
        }, -- end of ["FLEX_S_BKP_LAMP_DEFECTIVE"]
        ["OXYGEN"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "OXYGEN",
            ["mm"] = 0,
        }, -- end of ["OXYGEN"]
        ["Failure_Fuel_RightBoostPump"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "Failure_Fuel_RightBoostPump",
            ["mm"] = 0,
        }, -- end of ["Failure_Fuel_RightBoostPump"]
        ["Failure_ECS_Valve"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "Failure_ECS_Valve",
            ["mm"] = 0,
        }, -- end of ["Failure_ECS_Valve"]
        ["R_GEAR_DLK_FAULT"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "R_GEAR_DLK_FAULT",
            ["mm"] = 0,
        }, -- end of ["R_GEAR_DLK_FAULT"]
        ["fuel_sys_300left"] = 
        {
            ["hh"] = 0,
            ["enable"] = false,
            ["prob"] = 100,
            ["id"] = "fuel_sys_300left",
            ["mmint"] = 1,
            ["hidden"] = true,
            ["mm"] = 0,
        }, -- end of ["fuel_sys_300left"]
        ["FUEL_DROPTANK_MINOR_LEAK"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "FUEL_DROPTANK_MINOR_LEAK",
            ["mm"] = 0,
        }, -- end of ["FUEL_DROPTANK_MINOR_LEAK"]
        ["BOOSTER_COIL"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "BOOSTER_COIL",
            ["mm"] = 0,
        }, -- end of ["BOOSTER_COIL"]
        ["pp_damage_OilPump"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "pp_damage_OilPump",
            ["mm"] = 0,
        }, -- end of ["pp_damage_OilPump"]
        ["L_GEAR_DLK_FAULT"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "L_GEAR_DLK_FAULT",
            ["mm"] = 0,
        }, -- end of ["L_GEAR_DLK_FAULT"]
        ["GUN_FAIL_LEFT_CENTER_GUN"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "GUN_FAIL_LEFT_CENTER_GUN",
            ["mm"] = 0,
        }, -- end of ["GUN_FAIL_LEFT_CENTER_GUN"]
        ["INST_TACH0_RESISTANCE_MISMATCH"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "INST_TACH0_RESISTANCE_MISMATCH",
            ["mm"] = 0,
        }, -- end of ["INST_TACH0_RESISTANCE_MISMATCH"]
        ["IGNITION_TERM_CONNECT"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "IGNITION_TERM_CONNECT",
            ["mm"] = 0,
        }, -- end of ["IGNITION_TERM_CONNECT"]
        ["ELEVONSERVOUTERLEFT"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "ELEVONSERVOUTERLEFT",
            ["mm"] = 0,
        }, -- end of ["ELEVONSERVOUTERLEFT"]
        ["es_damage_MainGenerator"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "es_damage_MainGenerator",
            ["mm"] = 0,
        }, -- end of ["es_damage_MainGenerator"]
        ["FAULTY_ROCKET_LEFT"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "FAULTY_ROCKET_LEFT",
            ["mm"] = 0,
        }, -- end of ["FAULTY_ROCKET_LEFT"]
        ["WEAPONS_FAILURE_TOTAL"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "WEAPONS_FAILURE_TOTAL",
            ["mm"] = 0,
        }, -- end of ["WEAPONS_FAILURE_TOTAL"]
        ["BOMBS_DAMAGE_LINKAGE_LEFT"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "BOMBS_DAMAGE_LINKAGE_LEFT",
            ["mm"] = 0,
        }, -- end of ["BOMBS_DAMAGE_LINKAGE_LEFT"]
        ["FUSELAGE_TANK_PUMP_FAULT"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "FUSELAGE_TANK_PUMP_FAULT",
            ["mm"] = 0,
        }, -- end of ["FUSELAGE_TANK_PUMP_FAULT"]
        ["Failure_PP_EngR_Nozzle_CS"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "Failure_PP_EngR_Nozzle_CS",
            ["mm"] = 0,
        }, -- end of ["Failure_PP_EngR_Nozzle_CS"]
        ["hydro_main"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "hydro_main",
            ["mm"] = 0,
        }, -- end of ["hydro_main"]
        ["CICU_FAILURE_TOTAL"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "CICU_FAILURE_TOTAL",
            ["mm"] = 0,
        }, -- end of ["CICU_FAILURE_TOTAL"]
        ["es_damage_RadarInverter"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "es_damage_RadarInverter",
            ["mm"] = 0,
        }, -- end of ["es_damage_RadarInverter"]
        ["REAR_TANK_LEAK"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "REAR_TANK_LEAK",
            ["mm"] = 0,
        }, -- end of ["REAR_TANK_LEAK"]
        ["GUN_LEFT_MG131_OPEN_CIRCUIT"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "GUN_LEFT_MG131_OPEN_CIRCUIT",
            ["mm"] = 0,
        }, -- end of ["GUN_LEFT_MG131_OPEN_CIRCUIT"]
        ["CTRL_ELEVATOR_ROD_MAJOR_DAMAGE"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "CTRL_ELEVATOR_ROD_MAJOR_DAMAGE",
            ["mm"] = 0,
        }, -- end of ["CTRL_ELEVATOR_ROD_MAJOR_DAMAGE"]
        ["ELEC_STARTER_RELAY_FAILURE"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "ELEC_STARTER_RELAY_FAILURE",
            ["mm"] = 0,
        }, -- end of ["ELEC_STARTER_RELAY_FAILURE"]
        ["fsf_RightBoostPump"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "fsf_RightBoostPump",
            ["mm"] = 0,
        }, -- end of ["fsf_RightBoostPump"]
        ["asc_r"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "asc_r",
            ["mm"] = 0,
        }, -- end of ["asc_r"]
        ["BOMBS_SOLENOID_FAULT_LEFT"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "BOMBS_SOLENOID_FAULT_LEFT",
            ["mm"] = 0,
        }, -- end of ["BOMBS_SOLENOID_FAULT_LEFT"]
        ["RWR_FAILURE_SENSOR_TAIL_F"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "RWR_FAILURE_SENSOR_TAIL_F",
            ["mm"] = 0,
        }, -- end of ["RWR_FAILURE_SENSOR_TAIL_F"]
        ["BOMBS_ARMING_NO_VOLATAGE_LEFT"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "BOMBS_ARMING_NO_VOLATAGE_LEFT",
            ["mm"] = 0,
        }, -- end of ["BOMBS_ARMING_NO_VOLATAGE_LEFT"]
        ["ELEC_STARTER_FAILURE"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "ELEC_STARTER_FAILURE",
            ["mm"] = 0,
        }, -- end of ["ELEC_STARTER_FAILURE"]
        ["PITOT_HEAT_ELEMENT"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "PITOT_HEAT_ELEMENT",
            ["mm"] = 0,
        }, -- end of ["PITOT_HEAT_ELEMENT"]
        ["TAPEREC"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "TAPEREC",
            ["mm"] = 0,
        }, -- end of ["TAPEREC"]
        ["FUEL_VALVE_LEAK"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "FUEL_VALVE_LEAK",
            ["mm"] = 0,
        }, -- end of ["FUEL_VALVE_LEAK"]
        ["AN_ALE_40V_FAILURE_CONTAINER_LEFT_GEAR"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "AN_ALE_40V_FAILURE_CONTAINER_LEFT_GEAR",
            ["mm"] = 0,
        }, -- end of ["AN_ALE_40V_FAILURE_CONTAINER_LEFT_GEAR"]
        ["PPF_LE_TEMPER_LIM_OFF"] = 
        {
            ["hh"] = 0,
            ["enable"] = false,
            ["prob"] = 100,
            ["id"] = "PPF_LE_TEMPER_LIM_OFF",
            ["mmint"] = 1,
            ["hidden"] = true,
            ["mm"] = 0,
        }, -- end of ["PPF_LE_TEMPER_LIM_OFF"]
        ["TVDISPLAY"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "TVDISPLAY",
            ["mm"] = 0,
        }, -- end of ["TVDISPLAY"]
        ["CARBAIR_SHORT_CIRCUIT_BLB"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "CARBAIR_SHORT_CIRCUIT_BLB",
            ["mm"] = 0,
        }, -- end of ["CARBAIR_SHORT_CIRCUIT_BLB"]
        ["BATT_FAIL"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "BATT_FAIL",
            ["mm"] = 0,
        }, -- end of ["BATT_FAIL"]
        ["UNCR_RH_STRUT_UP_LOCK_JAMMED"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "UNCR_RH_STRUT_UP_LOCK_JAMMED",
            ["mm"] = 0,
        }, -- end of ["UNCR_RH_STRUT_UP_LOCK_JAMMED"]
        ["ELEC_EMERGENCY_GENERATOR_FAILURE"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "ELEC_EMERGENCY_GENERATOR_FAILURE",
            ["mm"] = 0,
        }, -- end of ["ELEC_EMERGENCY_GENERATOR_FAILURE"]
        ["ICS_FAILURE_AMPLIFIER_RIO_BU"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "ICS_FAILURE_AMPLIFIER_RIO_BU",
            ["mm"] = 0,
        }, -- end of ["ICS_FAILURE_AMPLIFIER_RIO_BU"]
        ["Failure_Ctrl_LEF"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "Failure_Ctrl_LEF",
            ["mm"] = 0,
        }, -- end of ["Failure_Ctrl_LEF"]
        ["GUN_FAIL_LEFT_IN_GUN"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "GUN_FAIL_LEFT_IN_GUN",
            ["mm"] = 0,
        }, -- end of ["GUN_FAIL_LEFT_IN_GUN"]
        ["CADC_FAILURE_TAS"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "CADC_FAILURE_TAS",
            ["mm"] = 0,
        }, -- end of ["CADC_FAILURE_TAS"]
        ["STARTER_SOL_SHORT"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "STARTER_SOL_SHORT",
            ["mm"] = 0,
        }, -- end of ["STARTER_SOL_SHORT"]
        ["COOLANT_SHORT_CIRCUIT"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "COOLANT_SHORT_CIRCUIT",
            ["mm"] = 0,
        }, -- end of ["COOLANT_SHORT_CIRCUIT"]
        ["PUMP_RELIEF_VALVE_SCREEN_CLOGGED"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "PUMP_RELIEF_VALVE_SCREEN_CLOGGED",
            ["mm"] = 0,
        }, -- end of ["PUMP_RELIEF_VALVE_SCREEN_CLOGGED"]
        ["abris_hardware"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "abris_hardware",
            ["mm"] = 0,
        }, -- end of ["abris_hardware"]
        ["EEC_Failure_LeftEngine"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "EEC_Failure_LeftEngine",
            ["mm"] = 0,
        }, -- end of ["EEC_Failure_LeftEngine"]
        ["RWR_FAILURE_COMPUTER"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "RWR_FAILURE_COMPUTER",
            ["mm"] = 0,
        }, -- end of ["RWR_FAILURE_COMPUTER"]
        ["esf_LeftRectifier"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "esf_LeftRectifier",
            ["mm"] = 0,
        }, -- end of ["esf_LeftRectifier"]
        ["ecm"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "ecm",
            ["mm"] = 0,
        }, -- end of ["ecm"]
        ["TGP_FAILURE_RIGHT"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "TGP_FAILURE_RIGHT",
            ["mm"] = 0,
        }, -- end of ["TGP_FAILURE_RIGHT"]
        ["BOMBS_ARMING_BROKEN_WIRING_LEFT"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "BOMBS_ARMING_BROKEN_WIRING_LEFT",
            ["mm"] = 0,
        }, -- end of ["BOMBS_ARMING_BROKEN_WIRING_LEFT"]
        ["MAINPITOT"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "MAINPITOT",
            ["mm"] = 0,
        }, -- end of ["MAINPITOT"]
        ["hs_damage_AltHydro"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "hs_damage_AltHydro",
            ["mm"] = 0,
        }, -- end of ["hs_damage_AltHydro"]
        ["BAT_SOLENOID_FAULT"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "BAT_SOLENOID_FAULT",
            ["mm"] = 0,
        }, -- end of ["BAT_SOLENOID_FAULT"]
        ["AAR_47_FAILURE_TOTAL"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "AAR_47_FAILURE_TOTAL",
            ["mm"] = 0,
        }, -- end of ["AAR_47_FAILURE_TOTAL"]
        ["UNCR_LH_STRUT_UP_LOCK_FAILURE"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "UNCR_LH_STRUT_UP_LOCK_FAILURE",
            ["mm"] = 0,
        }, -- end of ["UNCR_LH_STRUT_UP_LOCK_FAILURE"]
        ["CTRL_AILERON_ROD_MINOR_DAMAGE"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "CTRL_AILERON_ROD_MINOR_DAMAGE",
            ["mm"] = 0,
        }, -- end of ["CTRL_AILERON_ROD_MINOR_DAMAGE"]
        ["COOLANT_RADIATOR_WIRING"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "COOLANT_RADIATOR_WIRING",
            ["mm"] = 0,
        }, -- end of ["COOLANT_RADIATOR_WIRING"]
        ["asc_a"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "asc_a",
            ["mm"] = 0,
        }, -- end of ["asc_a"]
        ["FUEL_MW50_TANK_DRAIN_VALVE_SEVERED"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "FUEL_MW50_TANK_DRAIN_VALVE_SEVERED",
            ["mm"] = 0,
        }, -- end of ["FUEL_MW50_TANK_DRAIN_VALVE_SEVERED"]
        ["AIRSPEED_INDICATOR_FAILURE"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "AIRSPEED_INDICATOR_FAILURE",
            ["mm"] = 0,
        }, -- end of ["AIRSPEED_INDICATOR_FAILURE"]
        ["TURNIND_POINTER_VIBRATES"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "TURNIND_POINTER_VIBRATES",
            ["mm"] = 0,
        }, -- end of ["TURNIND_POINTER_VIBRATES"]
        ["ef_surge"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "ef_surge",
            ["mm"] = 0,
        }, -- end of ["ef_surge"]
        ["ROCKETS_INTERVALOMETER_WIRING"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "ROCKETS_INTERVALOMETER_WIRING",
            ["mm"] = 0,
        }, -- end of ["ROCKETS_INTERVALOMETER_WIRING"]
        ["GUN_RIGHT_OUT_AMMUN_FAULT"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "GUN_RIGHT_OUT_AMMUN_FAULT",
            ["mm"] = 0,
        }, -- end of ["GUN_RIGHT_OUT_AMMUN_FAULT"]
        ["CANARDFLAPLEFT"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "CANARDFLAPLEFT",
            ["mm"] = 0,
        }, -- end of ["CANARDFLAPLEFT"]
        ["GUN_RIGHT_IN_AMMUN_FAULT"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "GUN_RIGHT_IN_AMMUN_FAULT",
            ["mm"] = 0,
        }, -- end of ["GUN_RIGHT_IN_AMMUN_FAULT"]
        ["GYROS_FAILURE_TOTAL"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "GYROS_FAILURE_TOTAL",
            ["mm"] = 0,
        }, -- end of ["GYROS_FAILURE_TOTAL"]
        ["UHF_ARC_159_FAILURE_TRANSCEIVER"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "UHF_ARC_159_FAILURE_TRANSCEIVER",
            ["mm"] = 0,
        }, -- end of ["UHF_ARC_159_FAILURE_TRANSCEIVER"]
        ["GUN_RIGHT_CENTER_BARREL_WORN"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "GUN_RIGHT_CENTER_BARREL_WORN",
            ["mm"] = 0,
        }, -- end of ["GUN_RIGHT_CENTER_BARREL_WORN"]
        ["COMPASS_NO_TORQUE"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "COMPASS_NO_TORQUE",
            ["mm"] = 0,
        }, -- end of ["COMPASS_NO_TORQUE"]
        ["COOLANT_BREAK_BULB"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "COOLANT_BREAK_BULB",
            ["mm"] = 0,
        }, -- end of ["COOLANT_BREAK_BULB"]
        ["L_GEAR_BRAKE_FAULT"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "L_GEAR_BRAKE_FAULT",
            ["mm"] = 0,
        }, -- end of ["L_GEAR_BRAKE_FAULT"]
        ["MAINPOWER"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "MAINPOWER",
            ["mm"] = 0,
        }, -- end of ["MAINPOWER"]
        ["FUELTANK4R"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "FUELTANK4R",
            ["mm"] = 0,
        }, -- end of ["FUELTANK4R"]
        ["RADAR_ALTIMETR_RIGHT_ANT_FAILURE"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "RADAR_ALTIMETR_RIGHT_ANT_FAILURE",
            ["mm"] = 0,
        }, -- end of ["RADAR_ALTIMETR_RIGHT_ANT_FAILURE"]
        ["ef_vibration"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "ef_vibration",
            ["mm"] = 0,
        }, -- end of ["ef_vibration"]
        ["STARTER_BURNOUT"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "STARTER_BURNOUT",
            ["mm"] = 0,
        }, -- end of ["STARTER_BURNOUT"]
        ["OXYN_PRIMARY_CONTAINER_PERFORATED"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "OXYN_PRIMARY_CONTAINER_PERFORATED",
            ["mm"] = 0,
        }, -- end of ["OXYN_PRIMARY_CONTAINER_PERFORATED"]
        ["OIL_LEAK"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "OIL_LEAK",
            ["mm"] = 0,
        }, -- end of ["OIL_LEAK"]
        ["OIL_SYSTEM_FAIL_050"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "OIL_SYSTEM_FAIL_050",
            ["mm"] = 0,
        }, -- end of ["OIL_SYSTEM_FAIL_050"]
        ["ENGINE_FAILURE_TOTAL"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "ENGINE_FAILURE_TOTAL",
            ["mm"] = 0,
        }, -- end of ["ENGINE_FAILURE_TOTAL"]
        ["ELEC_MASTER_COMPASS_HARNESS_CUT"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "ELEC_MASTER_COMPASS_HARNESS_CUT",
            ["mm"] = 0,
        }, -- end of ["ELEC_MASTER_COMPASS_HARNESS_CUT"]
        ["CTRL_RUDDER_ROD_DESTROYED"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "CTRL_RUDDER_ROD_DESTROYED",
            ["mm"] = 0,
        }, -- end of ["CTRL_RUDDER_ROD_DESTROYED"]
        ["HYDR1PUMP"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "HYDR1PUMP",
            ["mm"] = 0,
        }, -- end of ["HYDR1PUMP"]
        ["ELEC_BOOSTER_FUEL_PUMP_COIL_FAILURE"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "ELEC_BOOSTER_FUEL_PUMP_COIL_FAILURE",
            ["mm"] = 0,
        }, -- end of ["ELEC_BOOSTER_FUEL_PUMP_COIL_FAILURE"]
        ["FUEL_FUEL_PUMP_P1_DEGRADED"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "FUEL_FUEL_PUMP_P1_DEGRADED",
            ["mm"] = 0,
        }, -- end of ["FUEL_FUEL_PUMP_P1_DEGRADED"]
        ["HYD_Flight"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "HYD_Flight",
            ["mm"] = 0,
        }, -- end of ["HYD_Flight"]
        ["PNEM_PRIMARY_CONTAINER_PERFORATED"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "PNEM_PRIMARY_CONTAINER_PERFORATED",
            ["mm"] = 0,
        }, -- end of ["PNEM_PRIMARY_CONTAINER_PERFORATED"]
        ["GUN_RIGHT_OUT_BARREL_WORN"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "GUN_RIGHT_OUT_BARREL_WORN",
            ["mm"] = 0,
        }, -- end of ["GUN_RIGHT_OUT_BARREL_WORN"]
        ["fuel_sys_swapping_pumps"] = 
        {
            ["hh"] = 0,
            ["enable"] = false,
            ["prob"] = 100,
            ["id"] = "fuel_sys_swapping_pumps",
            ["mmint"] = 1,
            ["hidden"] = true,
            ["mm"] = 0,
        }, -- end of ["fuel_sys_swapping_pumps"]
        ["PITOT_HEAT_WIRING"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "PITOT_HEAT_WIRING",
            ["mm"] = 0,
        }, -- end of ["PITOT_HEAT_WIRING"]
        ["PNEM_SUPERCHARGER_JACK_JAMMED"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "PNEM_SUPERCHARGER_JACK_JAMMED",
            ["mm"] = 0,
        }, -- end of ["PNEM_SUPERCHARGER_JACK_JAMMED"]
        ["MD1_GYRO_TOTAL_FAILURE"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "MD1_GYRO_TOTAL_FAILURE",
            ["mm"] = 0,
        }, -- end of ["MD1_GYRO_TOTAL_FAILURE"]
        ["COOLANT_T_IND_FAULT"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "COOLANT_T_IND_FAULT",
            ["mm"] = 0,
        }, -- end of ["COOLANT_T_IND_FAULT"]
        ["ENG0_WATERRADIATOR0_PIERCED"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "ENG0_WATERRADIATOR0_PIERCED",
            ["mm"] = 0,
        }, -- end of ["ENG0_WATERRADIATOR0_PIERCED"]
        ["INST_TACH0_LOOM_SEVERED"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "INST_TACH0_LOOM_SEVERED",
            ["mm"] = 0,
        }, -- end of ["INST_TACH0_LOOM_SEVERED"]
        ["VHF_FM_RADIO_FAILURE_TOTAL"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "VHF_FM_RADIO_FAILURE_TOTAL",
            ["mm"] = 0,
        }, -- end of ["VHF_FM_RADIO_FAILURE_TOTAL"]
        ["BOMBS_DAMAGE_ELINKAGE_RIGHT"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "BOMBS_DAMAGE_ELINKAGE_RIGHT",
            ["mm"] = 0,
        }, -- end of ["BOMBS_DAMAGE_ELINKAGE_RIGHT"]
        ["FUELTANK1"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "FUELTANK1",
            ["mm"] = 0,
        }, -- end of ["FUELTANK1"]
        ["IMU_FAILURE_TOTAL"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "IMU_FAILURE_TOTAL",
            ["mm"] = 0,
        }, -- end of ["IMU_FAILURE_TOTAL"]
        ["FLEX_S_NO_GUN_SIGN"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "FLEX_S_NO_GUN_SIGN",
            ["mm"] = 0,
        }, -- end of ["FLEX_S_NO_GUN_SIGN"]
        ["ecf"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["mm"] = 0,
        }, -- end of ["ecf"]
        ["HYD_PUMP_1_FAIL_100"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "HYD_PUMP_1_FAIL_100",
            ["mm"] = 0,
        }, -- end of ["HYD_PUMP_1_FAIL_100"]
        ["engine_surge_failure"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "engine_surge_failure",
            ["mm"] = 0,
        }, -- end of ["engine_surge_failure"]
        ["hs_damage_GainPump"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "hs_damage_GainPump",
            ["mm"] = 0,
        }, -- end of ["hs_damage_GainPump"]
        ["PNEM_LOW_PRS_JUNCTION_BOX_DESTROYED"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "PNEM_LOW_PRS_JUNCTION_BOX_DESTROYED",
            ["mm"] = 0,
        }, -- end of ["PNEM_LOW_PRS_JUNCTION_BOX_DESTROYED"]
        ["CTRL_AILERON_ROD_MAJOR_DAMAGE"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "CTRL_AILERON_ROD_MAJOR_DAMAGE",
            ["mm"] = 0,
        }, -- end of ["CTRL_AILERON_ROD_MAJOR_DAMAGE"]
        ["CK_UNIT"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "CK_UNIT",
            ["mm"] = 0,
        }, -- end of ["CK_UNIT"]
        ["TransitionalReductor_ShaveInOil"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "TransitionalReductor_ShaveInOil",
            ["mm"] = 0,
        }, -- end of ["TransitionalReductor_ShaveInOil"]
        ["TURBINE"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "TURBINE",
            ["mm"] = 0,
        }, -- end of ["TURBINE"]
        ["FUEL_REAR_TANK_MINOR_LEAK"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "FUEL_REAR_TANK_MINOR_LEAK",
            ["mm"] = 0,
        }, -- end of ["FUEL_REAR_TANK_MINOR_LEAK"]
        ["RADARALTUNIT"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "RADARALTUNIT",
            ["mm"] = 0,
        }, -- end of ["RADARALTUNIT"]
        ["CARBAIR_OPEN_CIRCUIT_BLB"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "CARBAIR_OPEN_CIRCUIT_BLB",
            ["mm"] = 0,
        }, -- end of ["CARBAIR_OPEN_CIRCUIT_BLB"]
        ["Failure_Comp_ADC"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "Failure_Comp_ADC",
            ["mm"] = 0,
        }, -- end of ["Failure_Comp_ADC"]
        ["RIGHT_TANK_PUMP_FAULT"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "RIGHT_TANK_PUMP_FAULT",
            ["mm"] = 0,
        }, -- end of ["RIGHT_TANK_PUMP_FAULT"]
        ["UHF_ARC_159_FAILURE_REMOTE_DISPLAY"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "UHF_ARC_159_FAILURE_REMOTE_DISPLAY",
            ["mm"] = 0,
        }, -- end of ["UHF_ARC_159_FAILURE_REMOTE_DISPLAY"]
        ["Failure_Ctrl_FCS_Ch1"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "Failure_Ctrl_FCS_Ch1",
            ["mm"] = 0,
        }, -- end of ["Failure_Ctrl_FCS_Ch1"]
        ["OXYN_LEFT_CONTAINER_PERFORATED"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "OXYN_LEFT_CONTAINER_PERFORATED",
            ["mm"] = 0,
        }, -- end of ["OXYN_LEFT_CONTAINER_PERFORATED"]
        ["HYDRO_LOW_AIR_PRESSURE"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "HYDRO_LOW_AIR_PRESSURE",
            ["mm"] = 0,
        }, -- end of ["HYDRO_LOW_AIR_PRESSURE"]
        ["K14_MOTOR_DEFECTIVE"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "K14_MOTOR_DEFECTIVE",
            ["mm"] = 0,
        }, -- end of ["K14_MOTOR_DEFECTIVE"]
        ["HYD_Combined"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "HYD_Combined",
            ["mm"] = 0,
        }, -- end of ["HYD_Combined"]
        ["ELEC_GENERATOR_FAILURE"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "ELEC_GENERATOR_FAILURE",
            ["mm"] = 0,
        }, -- end of ["ELEC_GENERATOR_FAILURE"]
        ["FR24ANTENNA"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "FR24ANTENNA",
            ["mm"] = 0,
        }, -- end of ["FR24ANTENNA"]
        ["ef_rt12"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "ef_rt12",
            ["mm"] = 0,
        }, -- end of ["ef_rt12"]
        ["es_damage_DMR"] = 
        {
            ["hh"] = 0,
            ["enable"] = false,
            ["prob"] = 100,
            ["id"] = "es_damage_DMR",
            ["mmint"] = 1,
            ["hidden"] = true,
            ["mm"] = 0,
        }, -- end of ["es_damage_DMR"]
        ["GENERATOR_FAULT"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "GENERATOR_FAULT",
            ["mm"] = 0,
        }, -- end of ["GENERATOR_FAULT"]
        ["ssf_static_pressure_fail"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "ssf_static_pressure_fail",
            ["mm"] = 0,
        }, -- end of ["ssf_static_pressure_fail"]
        ["FUEL_PUMP_FAILURE"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "FUEL_PUMP_FAILURE",
            ["mm"] = 0,
        }, -- end of ["FUEL_PUMP_FAILURE"]
        ["ppf_RightNozzleControl"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "ppf_RightNozzleControl",
            ["mm"] = 0,
        }, -- end of ["ppf_RightNozzleControl"]
        ["ELEC_NAVLIGHT_RED_FAILURE"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "ELEC_NAVLIGHT_RED_FAILURE",
            ["mm"] = 0,
        }, -- end of ["ELEC_NAVLIGHT_RED_FAILURE"]
        ["RWR_FAILURE_QUAD45"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "RWR_FAILURE_QUAD45",
            ["mm"] = 0,
        }, -- end of ["RWR_FAILURE_QUAD45"]
        ["JAMMER"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "JAMMER",
            ["mm"] = 0,
        }, -- end of ["JAMMER"]
        ["GUN_FAIL_RIGHT_IN_GUN"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "GUN_FAIL_RIGHT_IN_GUN",
            ["mm"] = 0,
        }, -- end of ["GUN_FAIL_RIGHT_IN_GUN"]
        ["fs_damage_right_cell_boost_pump"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "fs_damage_right_cell_boost_pump",
            ["mm"] = 0,
        }, -- end of ["fs_damage_right_cell_boost_pump"]
        ["MAGNETO_1"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "MAGNETO_1",
            ["mm"] = 0,
        }, -- end of ["MAGNETO_1"]
        ["BOMBS_NO_VOLATAGE_AT_RACK_RIGHT"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "BOMBS_NO_VOLATAGE_AT_RACK_RIGHT",
            ["mm"] = 0,
        }, -- end of ["BOMBS_NO_VOLATAGE_AT_RACK_RIGHT"]
        ["GUN_RIGHT_OUT_MOUNT_LOOSE"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "GUN_RIGHT_OUT_MOUNT_LOOSE",
            ["mm"] = 0,
        }, -- end of ["GUN_RIGHT_OUT_MOUNT_LOOSE"]
        ["ef_fuel_reg"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "ef_fuel_reg",
            ["mm"] = 0,
        }, -- end of ["ef_fuel_reg"]
        ["autopilot"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "autopilot",
            ["mm"] = 0,
        }, -- end of ["autopilot"]
        ["TransitionalReductor_LowOilPressure"] = 
        {
            ["hh"] = 0,
            ["enable"] = false,
            ["prob"] = 100,
            ["id"] = "TransitionalReductor_LowOilPressure",
            ["mmint"] = 1,
            ["hidden"] = true,
            ["mm"] = 0,
        }, -- end of ["TransitionalReductor_LowOilPressure"]
        ["OIL_SYSTEM_FAIL_100"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "OIL_SYSTEM_FAIL_100",
            ["mm"] = 0,
        }, -- end of ["OIL_SYSTEM_FAIL_100"]
        ["fs_aft_RH_leakage"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "fs_aft_RH_leakage",
            ["mm"] = 0,
        }, -- end of ["fs_aft_RH_leakage"]
        ["GUN_LEFT_CENTER_OPEN_CIRCUIT"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "GUN_LEFT_CENTER_OPEN_CIRCUIT",
            ["mm"] = 0,
        }, -- end of ["GUN_LEFT_CENTER_OPEN_CIRCUIT"]
        ["ppf_FireRight"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "ppf_FireRight",
            ["mm"] = 0,
        }, -- end of ["ppf_FireRight"]
        ["ELEVONOUTERRIGHT"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "ELEVONOUTERRIGHT",
            ["mm"] = 0,
        }, -- end of ["ELEVONOUTERRIGHT"]
        ["PNEM_ENGINE_HOSE_PERFORATED"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "PNEM_ENGINE_HOSE_PERFORATED",
            ["mm"] = 0,
        }, -- end of ["PNEM_ENGINE_HOSE_PERFORATED"]
        ["fsf_CrossfeedValve"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "fsf_CrossfeedValve",
            ["mm"] = 0,
        }, -- end of ["fsf_CrossfeedValve"]
        ["sas_yaw_right"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "sas_yaw_right",
            ["mm"] = 0,
        }, -- end of ["sas_yaw_right"]
        ["ELEC_MAIN_FUEL_PUMP_FAILURE"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "ELEC_MAIN_FUEL_PUMP_FAILURE",
            ["mm"] = 0,
        }, -- end of ["ELEC_MAIN_FUEL_PUMP_FAILURE"]
        ["ENG0_WASTEGATE_OIL_FEED_CLOGGED"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "ENG0_WASTEGATE_OIL_FEED_CLOGGED",
            ["mm"] = 0,
        }, -- end of ["ENG0_WASTEGATE_OIL_FEED_CLOGGED"]
        ["BOOST_REG"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "BOOST_REG",
            ["mm"] = 0,
        }, -- end of ["BOOST_REG"]
        ["R_GEAR_UPL_JAMMED"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "R_GEAR_UPL_JAMMED",
            ["mm"] = 0,
        }, -- end of ["R_GEAR_UPL_JAMMED"]
        ["r_conv"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "r_conv",
            ["mm"] = 0,
        }, -- end of ["r_conv"]
        ["DDD_FAILURE_TOTAL"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "DDD_FAILURE_TOTAL",
            ["mm"] = 0,
        }, -- end of ["DDD_FAILURE_TOTAL"]
        ["FUELTANK2"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "FUELTANK2",
            ["mm"] = 0,
        }, -- end of ["FUELTANK2"]
        ["L_GEAR_UPL_JAMMED"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "L_GEAR_UPL_JAMMED",
            ["mm"] = 0,
        }, -- end of ["L_GEAR_UPL_JAMMED"]
        ["fs_damage_BoosterPump"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "fs_damage_BoosterPump",
            ["mm"] = 0,
        }, -- end of ["fs_damage_BoosterPump"]
        ["UHF_ARC_159_FAILURE_REMOTE_DISPLAY_RIO"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "UHF_ARC_159_FAILURE_REMOTE_DISPLAY_RIO",
            ["mm"] = 0,
        }, -- end of ["UHF_ARC_159_FAILURE_REMOTE_DISPLAY_RIO"]
        ["RWR_FAILURE_DISPLAY_PILOT"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "RWR_FAILURE_DISPLAY_PILOT",
            ["mm"] = 0,
        }, -- end of ["RWR_FAILURE_DISPLAY_PILOT"]
        ["pp_damage_EmergMaxFreq"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "pp_damage_EmergMaxFreq",
            ["mm"] = 0,
        }, -- end of ["pp_damage_EmergMaxFreq"]
        ["RIGHT_FLAP_FAULT"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "RIGHT_FLAP_FAULT",
            ["mm"] = 0,
        }, -- end of ["RIGHT_FLAP_FAULT"]
        ["INT_HYDRO_LEAK"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "INT_HYDRO_LEAK",
            ["mm"] = 0,
        }, -- end of ["INT_HYDRO_LEAK"]
        ["CMS_FAILURE_PROGRAMMER"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "CMS_FAILURE_PROGRAMMER",
            ["mm"] = 0,
        }, -- end of ["CMS_FAILURE_PROGRAMMER"]
        ["STARTER_WIRING"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "STARTER_WIRING",
            ["mm"] = 0,
        }, -- end of ["STARTER_WIRING"]
        ["ef_fire"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "ef_fire",
            ["mm"] = 0,
        }, -- end of ["ef_fire"]
        ["ELEVONSERVINNERRIGHT"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "ELEVONSERVINNERRIGHT",
            ["mm"] = 0,
        }, -- end of ["ELEVONSERVINNERRIGHT"]
        ["CARBAIR_GND_LEAD"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "CARBAIR_GND_LEAD",
            ["mm"] = 0,
        }, -- end of ["CARBAIR_GND_LEAD"]
        ["FUELTANK5R"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "FUELTANK5R",
            ["mm"] = 0,
        }, -- end of ["FUELTANK5R"]
        ["hs_damage_MainAccumulator"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "hs_damage_MainAccumulator",
            ["mm"] = 0,
        }, -- end of ["hs_damage_MainAccumulator"]
        ["PNEM_LH_BRAKE_HOSE_PERFORATED"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "PNEM_LH_BRAKE_HOSE_PERFORATED",
            ["mm"] = 0,
        }, -- end of ["PNEM_LH_BRAKE_HOSE_PERFORATED"]
        ["AFK"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "AFK",
            ["mm"] = 0,
        }, -- end of ["AFK"]
        ["ELEC_STARTER_LOOM_SEVERED"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "ELEC_STARTER_LOOM_SEVERED",
            ["mm"] = 0,
        }, -- end of ["ELEC_STARTER_LOOM_SEVERED"]
        ["es_damage_GeneratorLeft"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "es_damage_GeneratorLeft",
            ["mm"] = 0,
        }, -- end of ["es_damage_GeneratorLeft"]
        ["CADC_CSDC_CONNECTION"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "CADC_CSDC_CONNECTION",
            ["mm"] = 0,
        }, -- end of ["CADC_CSDC_CONNECTION"]
        ["ILS_FAILURE_ANT_GLIDESLOPE"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "ILS_FAILURE_ANT_GLIDESLOPE",
            ["mm"] = 0,
        }, -- end of ["ILS_FAILURE_ANT_GLIDESLOPE"]
        ["engine_chip"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "engine_chip",
            ["mm"] = 0,
        }, -- end of ["engine_chip"]
        ["hydro_auxiliary"] = 
        {
            ["hh"] = 0,
            ["enable"] = false,
            ["prob"] = 100,
            ["id"] = "hydro_auxiliary",
            ["mmint"] = 1,
            ["hidden"] = true,
            ["mm"] = 0,
        }, -- end of ["hydro_auxiliary"]
        ["GUN_LEFT_MG151_OPEN_CIRCUIT"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "GUN_LEFT_MG151_OPEN_CIRCUIT",
            ["mm"] = 0,
        }, -- end of ["GUN_LEFT_MG151_OPEN_CIRCUIT"]
        ["Failure_Fuel_ExtTankTransferR"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "Failure_Fuel_ExtTankTransferR",
            ["mm"] = 0,
        }, -- end of ["Failure_Fuel_ExtTankTransferR"]
        ["ROCKETS_DEFECTIVE_WIRING"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "ROCKETS_DEFECTIVE_WIRING",
            ["mm"] = 0,
        }, -- end of ["ROCKETS_DEFECTIVE_WIRING"]
        ["es_damage_EmergGen"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "es_damage_EmergGen",
            ["mm"] = 0,
        }, -- end of ["es_damage_EmergGen"]
        ["hydro_diaphragm"] = 
        {
            ["hh"] = 0,
            ["enable"] = false,
            ["prob"] = 100,
            ["id"] = "hydro_diaphragm",
            ["mmint"] = 1,
            ["hidden"] = true,
            ["mm"] = 0,
        }, -- end of ["hydro_diaphragm"]
        ["FR22ANTENNA"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "FR22ANTENNA",
            ["mm"] = 0,
        }, -- end of ["FR22ANTENNA"]
        ["laser_failure"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "laser_failure",
            ["mm"] = 0,
        }, -- end of ["laser_failure"]
        ["fsf_AutoBalance"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "fsf_AutoBalance",
            ["mm"] = 0,
        }, -- end of ["fsf_AutoBalance"]
        ["FR22RADIO"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "FR22RADIO",
            ["mm"] = 0,
        }, -- end of ["FR22RADIO"]
        ["EZ42_FIXED_LAMP_DEFECTIVE"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "EZ42_FIXED_LAMP_DEFECTIVE",
            ["mm"] = 0,
        }, -- end of ["EZ42_FIXED_LAMP_DEFECTIVE"]
        ["Failure_Comp_MC2"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "Failure_Comp_MC2",
            ["mm"] = 0,
        }, -- end of ["Failure_Comp_MC2"]
        ["ELEC_BOOSTER_FUEL_PUMP_2_FAILURE"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "ELEC_BOOSTER_FUEL_PUMP_2_FAILURE",
            ["mm"] = 0,
        }, -- end of ["ELEC_BOOSTER_FUEL_PUMP_2_FAILURE"]
        ["csf_PitchTrim"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "csf_PitchTrim",
            ["mm"] = 0,
        }, -- end of ["csf_PitchTrim"]
        ["CANARDSERVOLEFT"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "CANARDSERVOLEFT",
            ["mm"] = 0,
        }, -- end of ["CANARDSERVOLEFT"]
        ["EXT_TANK_PUMP_FAULT"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "EXT_TANK_PUMP_FAULT",
            ["mm"] = 0,
        }, -- end of ["EXT_TANK_PUMP_FAULT"]
        ["VHF_CRFUEL_MAIN_TANK_MINOR_LEAKYSTAL"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "VHF_CRFUEL_MAIN_TANK_MINOR_LEAKYSTAL",
            ["mm"] = 0,
        }, -- end of ["VHF_CRFUEL_MAIN_TANK_MINOR_LEAKYSTAL"]
        ["COOLANT_DEFECTIVE_IND"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "COOLANT_DEFECTIVE_IND",
            ["mm"] = 0,
        }, -- end of ["COOLANT_DEFECTIVE_IND"]
        ["os_damage_BalloonLeakage"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "os_damage_BalloonLeakage",
            ["mm"] = 0,
        }, -- end of ["os_damage_BalloonLeakage"]
        ["Failure_Fuel_Tank4Transfer"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "Failure_Fuel_Tank4Transfer",
            ["mm"] = 0,
        }, -- end of ["Failure_Fuel_Tank4Transfer"]
        ["SAR_1_2_95"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "SAR_1_2_95",
            ["mm"] = 0,
        }, -- end of ["SAR_1_2_95"]
        ["RWR_FAILURE_SENSOR_TAIL_R"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "RWR_FAILURE_SENSOR_TAIL_R",
            ["mm"] = 0,
        }, -- end of ["RWR_FAILURE_SENSOR_TAIL_R"]
        ["RKL_41_TOTAL_FAILURE"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "RKL_41_TOTAL_FAILURE",
            ["mm"] = 0,
        }, -- end of ["RKL_41_TOTAL_FAILURE"]
        ["hs_damage_UtilityHydro"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "hs_damage_UtilityHydro",
            ["mm"] = 0,
        }, -- end of ["hs_damage_UtilityHydro"]
        ["pp_damage_Ignition"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "pp_damage_Ignition",
            ["mm"] = 0,
        }, -- end of ["pp_damage_Ignition"]
        ["ENG0_GOVERNOR_MALFUNCTION"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "ENG0_GOVERNOR_MALFUNCTION",
            ["mm"] = 0,
        }, -- end of ["ENG0_GOVERNOR_MALFUNCTION"]
        ["ENG0_GOVERNOR_FAILURE"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "ENG0_GOVERNOR_FAILURE",
            ["mm"] = 0,
        }, -- end of ["ENG0_GOVERNOR_FAILURE"]
        ["EPRSENSOR"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "EPRSENSOR",
            ["mm"] = 0,
        }, -- end of ["EPRSENSOR"]
        ["AIRBRAKESERVO"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "AIRBRAKESERVO",
            ["mm"] = 0,
        }, -- end of ["AIRBRAKESERVO"]
        ["RWRUNIT"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "RWRUNIT",
            ["mm"] = 0,
        }, -- end of ["RWRUNIT"]
        ["ENG_ALT_2_FAIL"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "ENG_ALT_2_FAIL",
            ["mm"] = 0,
        }, -- end of ["ENG_ALT_2_FAIL"]
        ["ELEC_REAR_FUEL_PUMP_FAILURE"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "ELEC_REAR_FUEL_PUMP_FAILURE",
            ["mm"] = 0,
        }, -- end of ["ELEC_REAR_FUEL_PUMP_FAILURE"]
        ["ICS_FAILURE_AMPLIFIER_PILOT_NORM"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "ICS_FAILURE_AMPLIFIER_PILOT_NORM",
            ["mm"] = 0,
        }, -- end of ["ICS_FAILURE_AMPLIFIER_PILOT_NORM"]
        ["oxy_FAILURE_TOTAL"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "oxy_FAILURE_TOTAL",
            ["mm"] = 0,
        }, -- end of ["oxy_FAILURE_TOTAL"]
        ["CADC_FAILURE_PRESSURE_ALT"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "CADC_FAILURE_PRESSURE_ALT",
            ["mm"] = 0,
        }, -- end of ["CADC_FAILURE_PRESSURE_ALT"]
        ["ICS_FAILURE_AMPLIFIER_RIO_NORM"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "ICS_FAILURE_AMPLIFIER_RIO_NORM",
            ["mm"] = 0,
        }, -- end of ["ICS_FAILURE_AMPLIFIER_RIO_NORM"]
        ["FUEL_GAUGE_FAULT"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "FUEL_GAUGE_FAULT",
            ["mm"] = 0,
        }, -- end of ["FUEL_GAUGE_FAULT"]
        ["BOMBS_ARMING_BROKEN_SOLENOID_RIGHT"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "BOMBS_ARMING_BROKEN_SOLENOID_RIGHT",
            ["mm"] = 0,
        }, -- end of ["BOMBS_ARMING_BROKEN_SOLENOID_RIGHT"]
        ["DEFECTIVE_INSTRUMENT"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "DEFECTIVE_INSTRUMENT",
            ["mm"] = 0,
        }, -- end of ["DEFECTIVE_INSTRUMENT"]
        ["fuel_sys_right_transfer_pump"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "fuel_sys_right_transfer_pump",
            ["mm"] = 0,
        }, -- end of ["fuel_sys_right_transfer_pump"]
        ["CTRL_COMPASS_DESTROYED"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "CTRL_COMPASS_DESTROYED",
            ["mm"] = 0,
        }, -- end of ["CTRL_COMPASS_DESTROYED"]
        ["STARTER_LOSE_CON"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "STARTER_LOSE_CON",
            ["mm"] = 0,
        }, -- end of ["STARTER_LOSE_CON"]
        ["hydro_main_irreversible_valve"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "hydro_main_irreversible_valve",
            ["mm"] = 0,
        }, -- end of ["hydro_main_irreversible_valve"]
        ["UHF_ARC_159_FAILURE_TOTAL"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "UHF_ARC_159_FAILURE_TOTAL",
            ["mm"] = 0,
        }, -- end of ["UHF_ARC_159_FAILURE_TOTAL"]
        ["KPP_FAILURE_PARTIAL"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "KPP_FAILURE_PARTIAL",
            ["mm"] = 0,
        }, -- end of ["KPP_FAILURE_PARTIAL"]
        ["INS_TOTAL_FAIL"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "INS_TOTAL_FAIL",
            ["mm"] = 0,
        }, -- end of ["INS_TOTAL_FAIL"]
        ["Failure_PP_EngL_Nozzle_CS"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "Failure_PP_EngL_Nozzle_CS",
            ["mm"] = 0,
        }, -- end of ["Failure_PP_EngL_Nozzle_CS"]
        ["pp_damage_EmergMaxNormFreq"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "pp_damage_EmergMaxNormFreq",
            ["mm"] = 0,
        }, -- end of ["pp_damage_EmergMaxNormFreq"]
        ["hsf_ControlHydraulic"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "hsf_ControlHydraulic",
            ["mm"] = 0,
        }, -- end of ["hsf_ControlHydraulic"]
        ["FUELTANK3L"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "FUELTANK3L",
            ["mm"] = 0,
        }, -- end of ["FUELTANK3L"]
        ["SOPLO_FAILURE_PARTIAL"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "SOPLO_FAILURE_PARTIAL",
            ["mm"] = 0,
        }, -- end of ["SOPLO_FAILURE_PARTIAL"]
        ["EZ42_NO_POWER_SUPPLY"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "EZ42_NO_POWER_SUPPLY",
            ["mm"] = 0,
        }, -- end of ["EZ42_NO_POWER_SUPPLY"]
        ["VHF_ARC_182_FAILURE_INTERNAL_MODULE"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "VHF_ARC_182_FAILURE_INTERNAL_MODULE",
            ["mm"] = 0,
        }, -- end of ["VHF_ARC_182_FAILURE_INTERNAL_MODULE"]
        ["ELEC_FORWARD_FUEL_PUMP_FAILURE"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "ELEC_FORWARD_FUEL_PUMP_FAILURE",
            ["mm"] = 0,
        }, -- end of ["ELEC_FORWARD_FUEL_PUMP_FAILURE"]
        ["COMPASS_ERRATIC_INDIACATON"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "COMPASS_ERRATIC_INDIACATON",
            ["mm"] = 0,
        }, -- end of ["COMPASS_ERRATIC_INDIACATON"]
        ["l_engine"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "l_engine",
            ["mm"] = 0,
        }, -- end of ["l_engine"]
        ["W_S_R"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "W_S_R",
            ["mm"] = 0,
        }, -- end of ["W_S_R"]
        ["ppf_LeftOil"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "ppf_LeftOil",
            ["mm"] = 0,
        }, -- end of ["ppf_LeftOil"]
        ["CADC_MANEUVER_FLAP_COMMAND"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "CADC_MANEUVER_FLAP_COMMAND",
            ["mm"] = 0,
        }, -- end of ["CADC_MANEUVER_FLAP_COMMAND"]
        ["SAR_2_95"] = 
        {
            ["hh"] = 0,
            ["id"] = "SAR_2_95",
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["hidden"] = true,
            ["mm"] = 0,
        }, -- end of ["SAR_2_95"]
        ["CADC_FAILURE_BARO_ALT"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "CADC_FAILURE_BARO_ALT",
            ["mm"] = 0,
        }, -- end of ["CADC_FAILURE_BARO_ALT"]
        ["FLEX_S_MAIN_LAMP_DEFECTIVE"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "FLEX_S_MAIN_LAMP_DEFECTIVE",
            ["mm"] = 0,
        }, -- end of ["FLEX_S_MAIN_LAMP_DEFECTIVE"]
        ["HYDR2ACC"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "HYDR2ACC",
            ["mm"] = 0,
        }, -- end of ["HYDR2ACC"]
        ["GTS"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "GTS",
            ["mm"] = 0,
        }, -- end of ["GTS"]
        ["GUN_RIGHT_IN_OPEN_CIRCUIT"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "GUN_RIGHT_IN_OPEN_CIRCUIT",
            ["mm"] = 0,
        }, -- end of ["GUN_RIGHT_IN_OPEN_CIRCUIT"]
        ["RWR_FAILURE_QUAD315"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "RWR_FAILURE_QUAD315",
            ["mm"] = 0,
        }, -- end of ["RWR_FAILURE_QUAD315"]
        ["pp_damage_MainMaxTempr"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "pp_damage_MainMaxTempr",
            ["mm"] = 0,
        }, -- end of ["pp_damage_MainMaxTempr"]
        ["PUMP_SEPARATOR_CLOGGED"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "PUMP_SEPARATOR_CLOGGED",
            ["mm"] = 0,
        }, -- end of ["PUMP_SEPARATOR_CLOGGED"]
        ["Vibration_LeftEngine"] = 
        {
            ["hh"] = 0,
            ["enable"] = false,
            ["prob"] = 100,
            ["id"] = "Vibration_LeftEngine",
            ["mmint"] = 1,
            ["hidden"] = true,
            ["mm"] = 0,
        }, -- end of ["Vibration_LeftEngine"]
        ["GMC_TOTAL_FAILURE"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "GMC_TOTAL_FAILURE",
            ["mm"] = 0,
        }, -- end of ["GMC_TOTAL_FAILURE"]
        ["es_damage_Inverter115_1"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "es_damage_Inverter115_1",
            ["mm"] = 0,
        }, -- end of ["es_damage_Inverter115_1"]
        ["A11_CLOCK_FAILURE"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "A11_CLOCK_FAILURE",
            ["mm"] = 0,
        }, -- end of ["A11_CLOCK_FAILURE"]
        ["r_engine"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "r_engine",
            ["mm"] = 0,
        }, -- end of ["r_engine"]
        ["TRN_FAIL"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "TRN_FAIL",
            ["mm"] = 0,
        }, -- end of ["TRN_FAIL"]
        ["UNCR_LH_WHEEL_BRAKE_DAMAGED"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "UNCR_LH_WHEEL_BRAKE_DAMAGED",
            ["mm"] = 0,
        }, -- end of ["UNCR_LH_WHEEL_BRAKE_DAMAGED"]
        ["DOORS_TV_JAMMED"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "DOORS_TV_JAMMED",
            ["mm"] = 0,
        }, -- end of ["DOORS_TV_JAMMED"]
        ["D2_RIGHT_CYLINDER"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "D2_RIGHT_CYLINDER",
            ["mm"] = 0,
        }, -- end of ["D2_RIGHT_CYLINDER"]
        ["es_damage_VU1"] = 
        {
            ["hh"] = 0,
            ["enable"] = false,
            ["prob"] = 100,
            ["id"] = "es_damage_VU1",
            ["mmint"] = 1,
            ["hidden"] = true,
            ["mm"] = 0,
        }, -- end of ["es_damage_VU1"]
        ["es_damage_Generator"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "es_damage_Generator",
            ["mm"] = 0,
        }, -- end of ["es_damage_Generator"]
        ["Failure_Hyd_HYD1A_Leak"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "Failure_Hyd_HYD1A_Leak",
            ["mm"] = 0,
        }, -- end of ["Failure_Hyd_HYD1A_Leak"]
        ["R_GEAR_MOTOR_FAULT"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "R_GEAR_MOTOR_FAULT",
            ["mm"] = 0,
        }, -- end of ["R_GEAR_MOTOR_FAULT"]
        ["VHF_ARC_182_FAILURE_REMOTE_DISPLAY"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "VHF_ARC_182_FAILURE_REMOTE_DISPLAY",
            ["mm"] = 0,
        }, -- end of ["VHF_ARC_182_FAILURE_REMOTE_DISPLAY"]
        ["AGK_47B_GYRO_TOTAL_FAILURE"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "AGK_47B_GYRO_TOTAL_FAILURE",
            ["mm"] = 0,
        }, -- end of ["AGK_47B_GYRO_TOTAL_FAILURE"]
        ["ELEC_BATTERY_DESTROYED"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "ELEC_BATTERY_DESTROYED",
            ["mm"] = 0,
        }, -- end of ["ELEC_BATTERY_DESTROYED"]
        ["Failure_PP_EngR_OilLeak"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "Failure_PP_EngR_OilLeak",
            ["mm"] = 0,
        }, -- end of ["Failure_PP_EngR_OilLeak"]
        ["ELEC_FUEL_PUMP_P1_COIL_FAILURE"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "ELEC_FUEL_PUMP_P1_COIL_FAILURE",
            ["mm"] = 0,
        }, -- end of ["ELEC_FUEL_PUMP_P1_COIL_FAILURE"]
        ["AN_ALE_40V_FAILURE_CONTAINER_RIGHT_GEAR"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "AN_ALE_40V_FAILURE_CONTAINER_RIGHT_GEAR",
            ["mm"] = 0,
        }, -- end of ["AN_ALE_40V_FAILURE_CONTAINER_RIGHT_GEAR"]
        ["hs_damage_MainAutoUnload"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "hs_damage_MainAutoUnload",
            ["mm"] = 0,
        }, -- end of ["hs_damage_MainAutoUnload"]
        ["CARBAIR_SHORT_CIRCUIT_LEADS"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "CARBAIR_SHORT_CIRCUIT_LEADS",
            ["mm"] = 0,
        }, -- end of ["CARBAIR_SHORT_CIRCUIT_LEADS"]
        ["BOMBS_NO_VOLATAGE_BOTH"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "BOMBS_NO_VOLATAGE_BOTH",
            ["mm"] = 0,
        }, -- end of ["BOMBS_NO_VOLATAGE_BOTH"]
        ["L_GEAR_MOTOR_FAULT"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "L_GEAR_MOTOR_FAULT",
            ["mm"] = 0,
        }, -- end of ["L_GEAR_MOTOR_FAULT"]
        ["ICS_FAILURE_AMPLIFIER_PILOT_BU"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "ICS_FAILURE_AMPLIFIER_PILOT_BU",
            ["mm"] = 0,
        }, -- end of ["ICS_FAILURE_AMPLIFIER_PILOT_BU"]
        ["CMS_FAILURE_RIGHT_DISPENSER"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "CMS_FAILURE_RIGHT_DISPENSER",
            ["mm"] = 0,
        }, -- end of ["CMS_FAILURE_RIGHT_DISPENSER"]
        ["fsf_LeftBoostPump"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "fsf_LeftBoostPump",
            ["mm"] = 0,
        }, -- end of ["fsf_LeftBoostPump"]
        ["ENG0_WATER_RADIATOR_0_PIERCED"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "ENG0_WATER_RADIATOR_0_PIERCED",
            ["mm"] = 0,
        }, -- end of ["ENG0_WATER_RADIATOR_0_PIERCED"]
        ["TURNIND_POINTER_FAILS_NO_VACUUM"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "TURNIND_POINTER_FAILS_NO_VACUUM",
            ["mm"] = 0,
        }, -- end of ["TURNIND_POINTER_FAILS_NO_VACUUM"]
        ["helmet"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "helmet",
            ["mm"] = 0,
        }, -- end of ["helmet"]
        ["W_S_L"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "W_S_L",
            ["mm"] = 0,
        }, -- end of ["W_S_L"]
        ["hs_damage_MainPump"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "hs_damage_MainPump",
            ["mm"] = 0,
        }, -- end of ["hs_damage_MainPump"]
        ["EEC_Failure_RightEngine"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "EEC_Failure_RightEngine",
            ["mm"] = 0,
        }, -- end of ["EEC_Failure_RightEngine"]
        ["SUPERCHARGER_SOLENOID"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "SUPERCHARGER_SOLENOID",
            ["mm"] = 0,
        }, -- end of ["SUPERCHARGER_SOLENOID"]
        ["HYD_ALT_1_FAIL"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "HYD_ALT_1_FAIL",
            ["mm"] = 0,
        }, -- end of ["HYD_ALT_1_FAIL"]
        ["es_damage_MainInverter"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "es_damage_MainInverter",
            ["mm"] = 0,
        }, -- end of ["es_damage_MainInverter"]
        ["AUX_TANK_LEAK"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "AUX_TANK_LEAK",
            ["mm"] = 0,
        }, -- end of ["AUX_TANK_LEAK"]
        ["GUN_LEFT_MG151_AMMUN_FAULT"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "GUN_LEFT_MG151_AMMUN_FAULT",
            ["mm"] = 0,
        }, -- end of ["GUN_LEFT_MG151_AMMUN_FAULT"]
        ["UHF_ARC_159_FAILURE_INTERNAL_MODULE"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "UHF_ARC_159_FAILURE_INTERNAL_MODULE",
            ["mm"] = 0,
        }, -- end of ["UHF_ARC_159_FAILURE_INTERNAL_MODULE"]
        ["MainReductor_ShaveInOil"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "MainReductor_ShaveInOil",
            ["mm"] = 0,
        }, -- end of ["MainReductor_ShaveInOil"]
        ["COOLANT_LEAK"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "COOLANT_LEAK",
            ["mm"] = 0,
        }, -- end of ["COOLANT_LEAK"]
        ["FUEL_FUEL_PUMP_P2_DEGRADED"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "FUEL_FUEL_PUMP_P2_DEGRADED",
            ["mm"] = 0,
        }, -- end of ["FUEL_FUEL_PUMP_P2_DEGRADED"]
        ["MAIN_L_GEAR_D_LOCK"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "MAIN_L_GEAR_D_LOCK",
            ["mm"] = 0,
        }, -- end of ["MAIN_L_GEAR_D_LOCK"]
        ["PNEM_RH_FLAP_JACK_BUSTED"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "PNEM_RH_FLAP_JACK_BUSTED",
            ["mm"] = 0,
        }, -- end of ["PNEM_RH_FLAP_JACK_BUSTED"]
        ["fs_damage_TransferPump"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "fs_damage_TransferPump",
            ["mm"] = 0,
        }, -- end of ["fs_damage_TransferPump"]
        ["AN_ALR69V_FAILURE_SENSOR_NOSE_RIGHT"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "AN_ALR69V_FAILURE_SENSOR_NOSE_RIGHT",
            ["mm"] = 0,
        }, -- end of ["AN_ALR69V_FAILURE_SENSOR_NOSE_RIGHT"]
        ["AAR_47_FAILURE_SENSOR_LEFT"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "AAR_47_FAILURE_SENSOR_LEFT",
            ["mm"] = 0,
        }, -- end of ["AAR_47_FAILURE_SENSOR_LEFT"]
        ["VHF_ARC_182_FAILURE_TOTAL"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "VHF_ARC_182_FAILURE_TOTAL",
            ["mm"] = 0,
        }, -- end of ["VHF_ARC_182_FAILURE_TOTAL"]
        ["BOMBS_ARMING_BROKEN_WIRING"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "BOMBS_ARMING_BROKEN_WIRING",
            ["mm"] = 0,
        }, -- end of ["BOMBS_ARMING_BROKEN_WIRING"]
        ["BOMBS_SOLENOID_FAULT_RIGHT"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "BOMBS_SOLENOID_FAULT_RIGHT",
            ["mm"] = 0,
        }, -- end of ["BOMBS_SOLENOID_FAULT_RIGHT"]
        ["GUN_LEFT_MG131_BARREL_WORN"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "GUN_LEFT_MG131_BARREL_WORN",
            ["mm"] = 0,
        }, -- end of ["GUN_LEFT_MG131_BARREL_WORN"]
        ["SUPERCHARGER_WIRE"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "SUPERCHARGER_WIRE",
            ["mm"] = 0,
        }, -- end of ["SUPERCHARGER_WIRE"]
        ["PPF_RE_TEMPER_LIM_OFF"] = 
        {
            ["hh"] = 0,
            ["enable"] = false,
            ["prob"] = 100,
            ["id"] = "PPF_RE_TEMPER_LIM_OFF",
            ["mmint"] = 1,
            ["hidden"] = true,
            ["mm"] = 0,
        }, -- end of ["PPF_RE_TEMPER_LIM_OFF"]
        ["CADC_FAILURE_TEMPERATURE"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "CADC_FAILURE_TEMPERATURE",
            ["mm"] = 0,
        }, -- end of ["CADC_FAILURE_TEMPERATURE"]
        ["es_damage_AltInverter"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "es_damage_AltInverter",
            ["mm"] = 0,
        }, -- end of ["es_damage_AltInverter"]
        ["CADC_PRESSURE_SENSOR"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "CADC_PRESSURE_SENSOR",
            ["mm"] = 0,
        }, -- end of ["CADC_PRESSURE_SENSOR"]
        ["sensf_PITOT_DAMAGE"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "sensf_PITOT_DAMAGE",
            ["mm"] = 0,
        }, -- end of ["sensf_PITOT_DAMAGE"]
        ["BOMBS_DAMAGE_LINKAGE_RIGHT"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "BOMBS_DAMAGE_LINKAGE_RIGHT",
            ["mm"] = 0,
        }, -- end of ["BOMBS_DAMAGE_LINKAGE_RIGHT"]
        ["Failure_PP_EngR_AB_FFCS"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "Failure_PP_EngR_AB_FFCS",
            ["mm"] = 0,
        }, -- end of ["Failure_PP_EngR_AB_FFCS"]
        ["fs_damage_transfer_pumps"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "fs_damage_transfer_pumps",
            ["mm"] = 0,
        }, -- end of ["fs_damage_transfer_pumps"]
        ["Failure_Ctrl_FCS_Ch2"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "Failure_Ctrl_FCS_Ch2",
            ["mm"] = 0,
        }, -- end of ["Failure_Ctrl_FCS_Ch2"]
        ["fire_sys_fireAPU"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "fire_sys_fireAPU",
            ["mm"] = 0,
        }, -- end of ["fire_sys_fireAPU"]
        ["AC_BUS_PO7502_FAILURE"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "AC_BUS_PO7502_FAILURE",
            ["mm"] = 0,
        }, -- end of ["AC_BUS_PO7502_FAILURE"]
        ["Failure_Sens_LeftPitotHeater"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "Failure_Sens_LeftPitotHeater",
            ["mm"] = 0,
        }, -- end of ["Failure_Sens_LeftPitotHeater"]
        ["RWRANTLEFT"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "RWRANTLEFT",
            ["mm"] = 0,
        }, -- end of ["RWRANTLEFT"]
        ["DEFECTIVE_MECHANISM"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "DEFECTIVE_MECHANISM",
            ["mm"] = 0,
        }, -- end of ["DEFECTIVE_MECHANISM"]
        ["fs_damage_swapping_pumps"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "fs_damage_swapping_pumps",
            ["mm"] = 0,
        }, -- end of ["fs_damage_swapping_pumps"]
        ["BOMBS_NO_VOLATAGE_AT_RACK_LEFT"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "BOMBS_NO_VOLATAGE_AT_RACK_LEFT",
            ["mm"] = 0,
        }, -- end of ["BOMBS_NO_VOLATAGE_AT_RACK_LEFT"]
        ["HYD_ALT_2_FAIL"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "HYD_ALT_2_FAIL",
            ["mm"] = 0,
        }, -- end of ["HYD_ALT_2_FAIL"]
        ["TAIL_GEAR_FAIL_GO_DOWN"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "TAIL_GEAR_FAIL_GO_DOWN",
            ["mm"] = 0,
        }, -- end of ["TAIL_GEAR_FAIL_GO_DOWN"]
        ["ols_damage_OilPump"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "ols_damage_OilPump",
            ["mm"] = 0,
        }, -- end of ["ols_damage_OilPump"]
        ["LeftEngine_ShaveInOil"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "LeftEngine_ShaveInOil",
            ["mm"] = 0,
        }, -- end of ["LeftEngine_ShaveInOil"]
        ["BACKUPGENERATOR"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "BACKUPGENERATOR",
            ["mm"] = 0,
        }, -- end of ["BACKUPGENERATOR"]
        ["hydro_common"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "hydro_common",
            ["mm"] = 0,
        }, -- end of ["hydro_common"]
        ["COOLANT_RADIATOR_SENSOR"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "COOLANT_RADIATOR_SENSOR",
            ["mm"] = 0,
        }, -- end of ["COOLANT_RADIATOR_SENSOR"]
        ["RKL_41_ADF_DAMAGE"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "RKL_41_ADF_DAMAGE",
            ["mm"] = 0,
        }, -- end of ["RKL_41_ADF_DAMAGE"]
        ["JESTER"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "JESTER",
            ["mm"] = 0,
        }, -- end of ["JESTER"]
        ["RUDDERSERV"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "RUDDERSERV",
            ["mm"] = 0,
        }, -- end of ["RUDDERSERV"]
        ["Failure_PP_RightAMAD_OilLeak"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "Failure_PP_RightAMAD_OilLeak",
            ["mm"] = 0,
        }, -- end of ["Failure_PP_RightAMAD_OilLeak"]
        ["HUD_FAILURE"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "HUD_FAILURE",
            ["mm"] = 0,
        }, -- end of ["HUD_FAILURE"]
        ["GMC_GYRO_FAILURE"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "GMC_GYRO_FAILURE",
            ["mm"] = 0,
        }, -- end of ["GMC_GYRO_FAILURE"]
        ["fs_damage_MainPump"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "fs_damage_MainPump",
            ["mm"] = 0,
        }, -- end of ["fs_damage_MainPump"]
        ["CDU_FAILURE_TOTAL"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "CDU_FAILURE_TOTAL",
            ["mm"] = 0,
        }, -- end of ["CDU_FAILURE_TOTAL"]
        ["ELEC_FUEL_PUMP_P1_FAILURE"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "ELEC_FUEL_PUMP_P1_FAILURE",
            ["mm"] = 0,
        }, -- end of ["ELEC_FUEL_PUMP_P1_FAILURE"]
        ["VHF_ARC_182_FAILURE_DISPLAY"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "VHF_ARC_182_FAILURE_DISPLAY",
            ["mm"] = 0,
        }, -- end of ["VHF_ARC_182_FAILURE_DISPLAY"]
        ["K14_FIXED_LAMP_DEFECTIVE"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "K14_FIXED_LAMP_DEFECTIVE",
            ["mm"] = 0,
        }, -- end of ["K14_FIXED_LAMP_DEFECTIVE"]
        ["TACH_POOR_CONNECTION"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "TACH_POOR_CONNECTION",
            ["mm"] = 0,
        }, -- end of ["TACH_POOR_CONNECTION"]
        ["engine_droop_failure"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "engine_droop_failure",
            ["mm"] = 0,
        }, -- end of ["engine_droop_failure"]
        ["es_damage_VU3"] = 
        {
            ["hh"] = 0,
            ["enable"] = false,
            ["prob"] = 100,
            ["id"] = "es_damage_VU3",
            ["mmint"] = 1,
            ["hidden"] = true,
            ["mm"] = 0,
        }, -- end of ["es_damage_VU3"]
        ["CADC_FAILURE_IAS"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "CADC_FAILURE_IAS",
            ["mm"] = 0,
        }, -- end of ["CADC_FAILURE_IAS"]
        ["Failure_PP_RightPTS"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "Failure_PP_RightPTS",
            ["mm"] = 0,
        }, -- end of ["Failure_PP_RightPTS"]
        ["REVERSER"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "REVERSER",
            ["mm"] = 0,
        }, -- end of ["REVERSER"]
        ["ELEC_UC_LAMP_CU_BULB_FAILURE"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "ELEC_UC_LAMP_CU_BULB_FAILURE",
            ["mm"] = 0,
        }, -- end of ["ELEC_UC_LAMP_CU_BULB_FAILURE"]
        ["ARN_83_ADF_DAMAGE"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "ARN_83_ADF_DAMAGE",
            ["mm"] = 0,
        }, -- end of ["ARN_83_ADF_DAMAGE"]
        ["CADC_WING_SWEEP_COMMAND_CHANNEL_2"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "CADC_WING_SWEEP_COMMAND_CHANNEL_2",
            ["mm"] = 0,
        }, -- end of ["CADC_WING_SWEEP_COMMAND_CHANNEL_2"]
        ["TGP_FAILURE_LEFT"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "TGP_FAILURE_LEFT",
            ["mm"] = 0,
        }, -- end of ["TGP_FAILURE_LEFT"]
        ["Failure_Elec_LeftGenerator"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "Failure_Elec_LeftGenerator",
            ["mm"] = 0,
        }, -- end of ["Failure_Elec_LeftGenerator"]
        ["ELEC_PITOT_HEAT_WIRING"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "ELEC_PITOT_HEAT_WIRING",
            ["mm"] = 0,
        }, -- end of ["ELEC_PITOT_HEAT_WIRING"]
        ["COOLANT_POOR_CONNTECT"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "COOLANT_POOR_CONNTECT",
            ["mm"] = 0,
        }, -- end of ["COOLANT_POOR_CONNTECT"]
        ["RWR_FAILURE_SENSOR_LEFT"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "RWR_FAILURE_SENSOR_LEFT",
            ["mm"] = 0,
        }, -- end of ["RWR_FAILURE_SENSOR_LEFT"]
        ["hydro_left"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "hydro_left",
            ["mm"] = 0,
        }, -- end of ["hydro_left"]
        ["ELEC_SUPERCHARGER_BULB_FAILURE"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "ELEC_SUPERCHARGER_BULB_FAILURE",
            ["mm"] = 0,
        }, -- end of ["ELEC_SUPERCHARGER_BULB_FAILURE"]
        ["GUN_FAIL_RIGHT_OUT_GUN"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "GUN_FAIL_RIGHT_OUT_GUN",
            ["mm"] = 0,
        }, -- end of ["GUN_FAIL_RIGHT_OUT_GUN"]
        ["RWR_FAILURE_TOTAL"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "RWR_FAILURE_TOTAL",
            ["mm"] = 0,
        }, -- end of ["RWR_FAILURE_TOTAL"]
        ["ppf_LeftNozzleControl"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "ppf_LeftNozzleControl",
            ["mm"] = 0,
        }, -- end of ["ppf_LeftNozzleControl"]
        ["FUELTANK4L"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "FUELTANK4L",
            ["mm"] = 0,
        }, -- end of ["FUELTANK4L"]
        ["ppf_RightOil"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "ppf_RightOil",
            ["mm"] = 0,
        }, -- end of ["ppf_RightOil"]
        ["TOP_CYLINDER"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "TOP_CYLINDER",
            ["mm"] = 0,
        }, -- end of ["TOP_CYLINDER"]
        ["RADAR_FAILURE_TOTAL"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "RADAR_FAILURE_TOTAL",
            ["mm"] = 0,
        }, -- end of ["RADAR_FAILURE_TOTAL"]
        ["ELEC_STARTER_SOLENOID_FAILURE"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "ELEC_STARTER_SOLENOID_FAILURE",
            ["mm"] = 0,
        }, -- end of ["ELEC_STARTER_SOLENOID_FAILURE"]
        ["PNEM_FLAPS_HOSE_PERFORATED"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "PNEM_FLAPS_HOSE_PERFORATED",
            ["mm"] = 0,
        }, -- end of ["PNEM_FLAPS_HOSE_PERFORATED"]
        ["GUN_LEFT_OUT_MOUNT_LOOSE"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "GUN_LEFT_OUT_MOUNT_LOOSE",
            ["mm"] = 0,
        }, -- end of ["GUN_LEFT_OUT_MOUNT_LOOSE"]
        ["VDI_FAILURE_TOTAL"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "VDI_FAILURE_TOTAL",
            ["mm"] = 0,
        }, -- end of ["VDI_FAILURE_TOTAL"]
        ["BOMBS_ARMING_BROKEN_WIRING_RIGHT"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "BOMBS_ARMING_BROKEN_WIRING_RIGHT",
            ["mm"] = 0,
        }, -- end of ["BOMBS_ARMING_BROKEN_WIRING_RIGHT"]
        ["LEFT_FLAP_FAULT"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "LEFT_FLAP_FAULT",
            ["mm"] = 0,
        }, -- end of ["LEFT_FLAP_FAULT"]
        ["PNEM_BRAKE_RELAY_MALFUNCTION"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "PNEM_BRAKE_RELAY_MALFUNCTION",
            ["mm"] = 0,
        }, -- end of ["PNEM_BRAKE_RELAY_MALFUNCTION"]
        ["KPP_1273_GYRO_TOTAL_FAILURE"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "KPP_1273_GYRO_TOTAL_FAILURE",
            ["mm"] = 0,
        }, -- end of ["KPP_1273_GYRO_TOTAL_FAILURE"]
        ["GUN_RIGHT_IN_BARREL_WORN"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "GUN_RIGHT_IN_BARREL_WORN",
            ["mm"] = 0,
        }, -- end of ["GUN_RIGHT_IN_BARREL_WORN"]
        ["es_damage_Inverter115_2"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "es_damage_Inverter115_2",
            ["mm"] = 0,
        }, -- end of ["es_damage_Inverter115_2"]
        ["TAIL_GEAR_FAIL_GO_UP"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "TAIL_GEAR_FAIL_GO_UP",
            ["mm"] = 0,
        }, -- end of ["TAIL_GEAR_FAIL_GO_UP"]
        ["CTRL_ELEVATOR_ROD_MINOR_DAMAGE"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "CTRL_ELEVATOR_ROD_MINOR_DAMAGE",
            ["mm"] = 0,
        }, -- end of ["CTRL_ELEVATOR_ROD_MINOR_DAMAGE"]
        ["L_GEAR_UPL_NOT_LOCK"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "L_GEAR_UPL_NOT_LOCK",
            ["mm"] = 0,
        }, -- end of ["L_GEAR_UPL_NOT_LOCK"]
        ["FUEL_MAIN_FUEL_PUMP_DEGRADED"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "FUEL_MAIN_FUEL_PUMP_DEGRADED",
            ["mm"] = 0,
        }, -- end of ["FUEL_MAIN_FUEL_PUMP_DEGRADED"]
        ["fs_forward_LH_leakage"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "fs_forward_LH_leakage",
            ["mm"] = 0,
        }, -- end of ["fs_forward_LH_leakage"]
        ["sas_yaw_left"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "sas_yaw_left",
            ["mm"] = 0,
        }, -- end of ["sas_yaw_left"]
        ["RB05ANT"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "RB05ANT",
            ["mm"] = 0,
        }, -- end of ["RB05ANT"]
        ["abris_software"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "abris_software",
            ["mm"] = 0,
        }, -- end of ["abris_software"]
        ["Failure_Hyd_HYD1B_Leak"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "Failure_Hyd_HYD1B_Leak",
            ["mm"] = 0,
        }, -- end of ["Failure_Hyd_HYD1B_Leak"]
        ["pp_damage_MainMaxFreq"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "pp_damage_MainMaxFreq",
            ["mm"] = 0,
        }, -- end of ["pp_damage_MainMaxFreq"]
        ["fs_damage_engine_pump"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "fs_damage_engine_pump",
            ["mm"] = 0,
        }, -- end of ["fs_damage_engine_pump"]
        ["COMPRESSOR"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "COMPRESSOR",
            ["mm"] = 0,
        }, -- end of ["COMPRESSOR"]
        ["OIL_T_IND_FAULT"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "OIL_T_IND_FAULT",
            ["mm"] = 0,
        }, -- end of ["OIL_T_IND_FAULT"]
        ["LeftEngine_LowOilPressure"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "LeftEngine_LowOilPressure",
            ["mm"] = 0,
        }, -- end of ["LeftEngine_LowOilPressure"]
        ["ppf_RightGearbox"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "ppf_RightGearbox",
            ["mm"] = 0,
        }, -- end of ["ppf_RightGearbox"]
        ["PUMP_FAILS"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "PUMP_FAILS",
            ["mm"] = 0,
        }, -- end of ["PUMP_FAILS"]
        ["R_GEAR_UPL_NOT_LOCK"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "R_GEAR_UPL_NOT_LOCK",
            ["mm"] = 0,
        }, -- end of ["R_GEAR_UPL_NOT_LOCK"]
        ["PILOT_KILLED_FAILURE"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "PILOT_KILLED_FAILURE",
            ["mm"] = 0,
        }, -- end of ["PILOT_KILLED_FAILURE"]
        ["UNCR_RH_STRUT_DRIVE_FAILURE"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "UNCR_RH_STRUT_DRIVE_FAILURE",
            ["mm"] = 0,
        }, -- end of ["UNCR_RH_STRUT_DRIVE_FAILURE"]
        ["AAR_47_FAILURE_SENSOR_BOTTOM"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "AAR_47_FAILURE_SENSOR_BOTTOM",
            ["mm"] = 0,
        }, -- end of ["AAR_47_FAILURE_SENSOR_BOTTOM"]
        ["ELEC_BOOSTER_FUEL_PUMP_0_FAILURE"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "ELEC_BOOSTER_FUEL_PUMP_0_FAILURE",
            ["mm"] = 0,
        }, -- end of ["ELEC_BOOSTER_FUEL_PUMP_0_FAILURE"]
        ["RPMFault_RightEngine"] = 
        {
            ["hh"] = 0,
            ["enable"] = false,
            ["prob"] = 100,
            ["id"] = "RPMFault_RightEngine",
            ["mmint"] = 1,
            ["hidden"] = true,
            ["mm"] = 0,
        }, -- end of ["RPMFault_RightEngine"]
        ["GUN_RIGHT_OUT_OPEN_CIRCUIT"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "GUN_RIGHT_OUT_OPEN_CIRCUIT",
            ["mm"] = 0,
        }, -- end of ["GUN_RIGHT_OUT_OPEN_CIRCUIT"]
        ["AHRS_FAILURE_MAD"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "AHRS_FAILURE_MAD",
            ["mm"] = 0,
        }, -- end of ["AHRS_FAILURE_MAD"]
        ["RWR_FAILURE_CONTROL_BOX"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "RWR_FAILURE_CONTROL_BOX",
            ["mm"] = 0,
        }, -- end of ["RWR_FAILURE_CONTROL_BOX"]
        ["sas_pitch_left"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "sas_pitch_left",
            ["mm"] = 0,
        }, -- end of ["sas_pitch_left"]
        ["apus"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "apus",
            ["mm"] = 0,
        }, -- end of ["apus"]
        ["VHF_SQUELCH_RELAY"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "VHF_SQUELCH_RELAY",
            ["mm"] = 0,
        }, -- end of ["VHF_SQUELCH_RELAY"]
        ["Surge_RightEngine"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "Surge_RightEngine",
            ["mm"] = 0,
        }, -- end of ["Surge_RightEngine"]
        ["INSUF_FUEL_PRES"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "INSUF_FUEL_PRES",
            ["mm"] = 0,
        }, -- end of ["INSUF_FUEL_PRES"]
        ["RightEngine_Fire"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "RightEngine_Fire",
            ["mm"] = 0,
        }, -- end of ["RightEngine_Fire"]
        ["Failure_Fuel_LeftBoostPump"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "Failure_Fuel_LeftBoostPump",
            ["mm"] = 0,
        }, -- end of ["Failure_Fuel_LeftBoostPump"]
        ["INST_VARIOMETR_DEPRESSURIZATION"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "INST_VARIOMETR_DEPRESSURIZATION",
            ["mm"] = 0,
        }, -- end of ["INST_VARIOMETR_DEPRESSURIZATION"]
        ["FUELTANK5L"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "FUELTANK5L",
            ["mm"] = 0,
        }, -- end of ["FUELTANK5L"]
        ["UNCR_LH_STRUT_UP_LOCK_JAMMED"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "UNCR_LH_STRUT_UP_LOCK_JAMMED",
            ["mm"] = 0,
        }, -- end of ["UNCR_LH_STRUT_UP_LOCK_JAMMED"]
        ["BATTERY"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "BATTERY",
            ["mm"] = 0,
        }, -- end of ["BATTERY"]
        ["ILS_FAILURE_ANTENNA"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "ILS_FAILURE_ANTENNA",
            ["mm"] = 0,
        }, -- end of ["ILS_FAILURE_ANTENNA"]
        ["asc_p"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "asc_p",
            ["mm"] = 0,
        }, -- end of ["asc_p"]
        ["BOMBS_ARMING_BROKEN_SOLENOID_LEFT"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "BOMBS_ARMING_BROKEN_SOLENOID_LEFT",
            ["mm"] = 0,
        }, -- end of ["BOMBS_ARMING_BROKEN_SOLENOID_LEFT"]
        ["GUN_LEFT_IN_AMMUN_FAULT"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "GUN_LEFT_IN_AMMUN_FAULT",
            ["mm"] = 0,
        }, -- end of ["GUN_LEFT_IN_AMMUN_FAULT"]
        ["Failure_PP_EngR_Main_FFCS"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "Failure_PP_EngR_Main_FFCS",
            ["mm"] = 0,
        }, -- end of ["Failure_PP_EngR_Main_FFCS"]
        ["COPILOT_KILLED_FAILURE"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "COPILOT_KILLED_FAILURE",
            ["mm"] = 0,
        }, -- end of ["COPILOT_KILLED_FAILURE"]
        ["ENG0_OILRADIATOR0_PIERCED"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "ENG0_OILRADIATOR0_PIERCED",
            ["mm"] = 0,
        }, -- end of ["ENG0_OILRADIATOR0_PIERCED"]
        ["ELEC_UMFORMER_FAILURE"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "ELEC_UMFORMER_FAILURE",
            ["mm"] = 0,
        }, -- end of ["ELEC_UMFORMER_FAILURE"]
        ["INS_FAILURE_NAV_COMPUTER"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "INS_FAILURE_NAV_COMPUTER",
            ["mm"] = 0,
        }, -- end of ["INS_FAILURE_NAV_COMPUTER"]
        ["esf_StaticInverter"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "esf_StaticInverter",
            ["mm"] = 0,
        }, -- end of ["esf_StaticInverter"]
        ["MW_50_VALVE_FAULT"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "MW_50_VALVE_FAULT",
            ["mm"] = 0,
        }, -- end of ["MW_50_VALVE_FAULT"]
        ["Failure_Hyd_IsolatedHYD2BSystem_Leak"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "Failure_Hyd_IsolatedHYD2BSystem_Leak",
            ["mm"] = 0,
        }, -- end of ["Failure_Hyd_IsolatedHYD2BSystem_Leak"]
        ["csf_AutoFlap"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "csf_AutoFlap",
            ["mm"] = 0,
        }, -- end of ["csf_AutoFlap"]
        ["COMPASS_POINTER_PULLS"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "COMPASS_POINTER_PULLS",
            ["mm"] = 0,
        }, -- end of ["COMPASS_POINTER_PULLS"]
        ["Failure_RightEngine"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "Failure_RightEngine",
            ["mm"] = 0,
        }, -- end of ["Failure_RightEngine"]
        ["ELEC_NAVLIGHT_WHITE_FAILURE"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "ELEC_NAVLIGHT_WHITE_FAILURE",
            ["mm"] = 0,
        }, -- end of ["ELEC_NAVLIGHT_WHITE_FAILURE"]
        ["ELEVONSERVINNERLEFT"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "ELEVONSERVINNERLEFT",
            ["mm"] = 0,
        }, -- end of ["ELEVONSERVINNERLEFT"]
        ["VHF_SHORTED_CTL_BOX"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "VHF_SHORTED_CTL_BOX",
            ["mm"] = 0,
        }, -- end of ["VHF_SHORTED_CTL_BOX"]
        ["Failure_Gear_WOW"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "Failure_Gear_WOW",
            ["mm"] = 0,
        }, -- end of ["Failure_Gear_WOW"]
        ["TURNIND_INCORRECT_SENS_VAC_HIGH"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "TURNIND_INCORRECT_SENS_VAC_HIGH",
            ["mm"] = 0,
        }, -- end of ["TURNIND_INCORRECT_SENS_VAC_HIGH"]
        ["OIL_RADIATOR_WIRING"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "OIL_RADIATOR_WIRING",
            ["mm"] = 0,
        }, -- end of ["OIL_RADIATOR_WIRING"]
        ["PNEM_CANNONS_HOSE_PERFORATED"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "PNEM_CANNONS_HOSE_PERFORATED",
            ["mm"] = 0,
        }, -- end of ["PNEM_CANNONS_HOSE_PERFORATED"]
        ["ENG_ALT_1_FAIL"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "ENG_ALT_1_FAIL",
            ["mm"] = 0,
        }, -- end of ["ENG_ALT_1_FAIL"]
        ["IGNITION_NO_OUTPUT"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "IGNITION_NO_OUTPUT",
            ["mm"] = 0,
        }, -- end of ["IGNITION_NO_OUTPUT"]
        ["es_damage_Inverter36x3"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "es_damage_Inverter36x3",
            ["mm"] = 0,
        }, -- end of ["es_damage_Inverter36x3"]
        ["AC_BUS_PO7501_FAILURE"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "AC_BUS_PO7501_FAILURE",
            ["mm"] = 0,
        }, -- end of ["AC_BUS_PO7501_FAILURE"]
        ["IMU_FAILURE_QUANTIZER"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "IMU_FAILURE_QUANTIZER",
            ["mm"] = 0,
        }, -- end of ["IMU_FAILURE_QUANTIZER"]
        ["GUN_LEFT_CENTER_MOUNT_LOOSE"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "GUN_LEFT_CENTER_MOUNT_LOOSE",
            ["mm"] = 0,
        }, -- end of ["GUN_LEFT_CENTER_MOUNT_LOOSE"]
        ["GUN_RIGHT_CENTER_MOUNT_LOOSE"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "GUN_RIGHT_CENTER_MOUNT_LOOSE",
            ["mm"] = 0,
        }, -- end of ["GUN_RIGHT_CENTER_MOUNT_LOOSE"]
        ["RADAR_ALT_TOTAL_FAILURE"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "RADAR_ALT_TOTAL_FAILURE",
            ["mm"] = 0,
        }, -- end of ["RADAR_ALT_TOTAL_FAILURE"]
        ["INST_VARIOMETER_DEPRESSURIZATION"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "INST_VARIOMETER_DEPRESSURIZATION",
            ["mm"] = 0,
        }, -- end of ["INST_VARIOMETER_DEPRESSURIZATION"]
        ["VHF_VT_BURNED_OUT"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "VHF_VT_BURNED_OUT",
            ["mm"] = 0,
        }, -- end of ["VHF_VT_BURNED_OUT"]
        ["COMPASS_ERRATIC_OPERATION"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "COMPASS_ERRATIC_OPERATION",
            ["mm"] = 0,
        }, -- end of ["COMPASS_ERRATIC_OPERATION"]
        ["TID_FAILURE_TOTAL"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "TID_FAILURE_TOTAL",
            ["mm"] = 0,
        }, -- end of ["TID_FAILURE_TOTAL"]
        ["Failure_PP_LeftAMAD_OilLeak"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "Failure_PP_LeftAMAD_OilLeak",
            ["mm"] = 0,
        }, -- end of ["Failure_PP_LeftAMAD_OilLeak"]
        ["TACH_BREAK_IN_INDICATOR"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "TACH_BREAK_IN_INDICATOR",
            ["mm"] = 0,
        }, -- end of ["TACH_BREAK_IN_INDICATOR"]
        ["GUN_LEFT_CENTER_BARREL_WORN"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "GUN_LEFT_CENTER_BARREL_WORN",
            ["mm"] = 0,
        }, -- end of ["GUN_LEFT_CENTER_BARREL_WORN"]
        ["CADC_FAILURE_TOTAL"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "CADC_FAILURE_TOTAL",
            ["mm"] = 0,
        }, -- end of ["CADC_FAILURE_TOTAL"]
        ["ELEVONSERVOUTERRIGHT"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "ELEVONSERVOUTERRIGHT",
            ["mm"] = 0,
        }, -- end of ["ELEVONSERVOUTERRIGHT"]
        ["ELEC_DROPTANK_FUEL_PUMP_FAILURE"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "ELEC_DROPTANK_FUEL_PUMP_FAILURE",
            ["mm"] = 0,
        }, -- end of ["ELEC_DROPTANK_FUEL_PUMP_FAILURE"]
        ["ENG0_OIL_PUMP_FAILURE"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "ENG0_OIL_PUMP_FAILURE",
            ["mm"] = 0,
        }, -- end of ["ENG0_OIL_PUMP_FAILURE"]
        ["REAR_TANK_PUMP_FAULT"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "REAR_TANK_PUMP_FAULT",
            ["mm"] = 0,
        }, -- end of ["REAR_TANK_PUMP_FAULT"]
        ["SAR_1_101"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "SAR_1_101",
            ["mm"] = 0,
        }, -- end of ["SAR_1_101"]
        ["RKL_41_ANT_DAMAGE"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "RKL_41_ANT_DAMAGE",
            ["mm"] = 0,
        }, -- end of ["RKL_41_ANT_DAMAGE"]
        ["Failure_Fuel_QuantityGaging"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "Failure_Fuel_QuantityGaging",
            ["mm"] = 0,
        }, -- end of ["Failure_Fuel_QuantityGaging"]
        ["CADC_FAILURE_DYNAMIC"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "CADC_FAILURE_DYNAMIC",
            ["mm"] = 0,
        }, -- end of ["CADC_FAILURE_DYNAMIC"]
        ["MainReductor_LowOilPressure"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "MainReductor_LowOilPressure",
            ["mm"] = 0,
        }, -- end of ["MainReductor_LowOilPressure"]
        ["UNCR_RH_STRUT_UP_LOCK_FAILURE"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "UNCR_RH_STRUT_UP_LOCK_FAILURE",
            ["mm"] = 0,
        }, -- end of ["UNCR_RH_STRUT_UP_LOCK_FAILURE"]
        ["ELEC_BOOSTER_FUEL_PUMP_1_FAILURE"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "ELEC_BOOSTER_FUEL_PUMP_1_FAILURE",
            ["mm"] = 0,
        }, -- end of ["ELEC_BOOSTER_FUEL_PUMP_1_FAILURE"]
        ["D2_LEFT_CYLINDER"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "D2_LEFT_CYLINDER",
            ["mm"] = 0,
        }, -- end of ["D2_LEFT_CYLINDER"]
        ["Surge_LeftEngine"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "Surge_LeftEngine",
            ["mm"] = 0,
        }, -- end of ["Surge_LeftEngine"]
        ["BOMBS_RUST_LEFT"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "BOMBS_RUST_LEFT",
            ["mm"] = 0,
        }, -- end of ["BOMBS_RUST_LEFT"]
        ["ELEC_SUPERCHARGER_SOLENOID_FAILURE"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "ELEC_SUPERCHARGER_SOLENOID_FAILURE",
            ["mm"] = 0,
        }, -- end of ["ELEC_SUPERCHARGER_SOLENOID_FAILURE"]
        ["DATACARTRIDGE"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "DATACARTRIDGE",
            ["mm"] = 0,
        }, -- end of ["DATACARTRIDGE"]
        ["ENG0_MAGNETO1"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "ENG0_MAGNETO1",
            ["mm"] = 0,
        }, -- end of ["ENG0_MAGNETO1"]
        ["csf_PitchDamper"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "csf_PitchDamper",
            ["mm"] = 0,
        }, -- end of ["csf_PitchDamper"]
        ["asc"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "asc",
            ["mm"] = 0,
        }, -- end of ["asc"]
        ["ACCSENSOR"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "ACCSENSOR",
            ["mm"] = 0,
        }, -- end of ["ACCSENSOR"]
        ["ppf_LeftGearbox"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "ppf_LeftGearbox",
            ["mm"] = 0,
        }, -- end of ["ppf_LeftGearbox"]
        ["PROP_GOVERNOR"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "PROP_GOVERNOR",
            ["mm"] = 0,
        }, -- end of ["PROP_GOVERNOR"]
        ["MANIFOLD_SHIFT"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "MANIFOLD_SHIFT",
            ["mm"] = 0,
        }, -- end of ["MANIFOLD_SHIFT"]
        ["ENG0_CARBURETTOR_OIL_FEED_CLOGGED"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "ENG0_CARBURETTOR_OIL_FEED_CLOGGED",
            ["mm"] = 0,
        }, -- end of ["ENG0_CARBURETTOR_OIL_FEED_CLOGGED"]
        ["Failure_Fuel_Tank1Transfer"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "Failure_Fuel_Tank1Transfer",
            ["mm"] = 0,
        }, -- end of ["Failure_Fuel_Tank1Transfer"]
        ["ILS_FAILURE_DECODER"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "ILS_FAILURE_DECODER",
            ["mm"] = 0,
        }, -- end of ["ILS_FAILURE_DECODER"]
        ["Failure_Ctrl_Aileron"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "Failure_Ctrl_Aileron",
            ["mm"] = 0,
        }, -- end of ["Failure_Ctrl_Aileron"]
        ["es_damage_SpareInverter"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "es_damage_SpareInverter",
            ["mm"] = 0,
        }, -- end of ["es_damage_SpareInverter"]
        ["ENG0_OIL_RADIATOR_0_PIERCED"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "ENG0_OIL_RADIATOR_0_PIERCED",
            ["mm"] = 0,
        }, -- end of ["ENG0_OIL_RADIATOR_0_PIERCED"]
        ["GUN_RIGHT_MG151_AMMUN_FAULT"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "GUN_RIGHT_MG151_AMMUN_FAULT",
            ["mm"] = 0,
        }, -- end of ["GUN_RIGHT_MG151_AMMUN_FAULT"]
        ["GUN_LEFT_MG151_BARREL_WORN"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "GUN_LEFT_MG151_BARREL_WORN",
            ["mm"] = 0,
        }, -- end of ["GUN_LEFT_MG151_BARREL_WORN"]
        ["fs_damage_EnginePump"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "fs_damage_EnginePump",
            ["mm"] = 0,
        }, -- end of ["fs_damage_EnginePump"]
        ["MAIN_R_GEAR_D_LOCK"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "MAIN_R_GEAR_D_LOCK",
            ["mm"] = 0,
        }, -- end of ["MAIN_R_GEAR_D_LOCK"]
        ["RWRANTREAR"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "RWRANTREAR",
            ["mm"] = 0,
        }, -- end of ["RWRANTREAR"]
        ["FR24RADIO"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "FR24RADIO",
            ["mm"] = 0,
        }, -- end of ["FR24RADIO"]
        ["UNLOAD_VALVE_NOT_LOAD"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "UNLOAD_VALVE_NOT_LOAD",
            ["mm"] = 0,
        }, -- end of ["UNLOAD_VALVE_NOT_LOAD"]
        ["TURNIND_INCORRECT_SENS_VAC_LOW"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "TURNIND_INCORRECT_SENS_VAC_LOW",
            ["mm"] = 0,
        }, -- end of ["TURNIND_INCORRECT_SENS_VAC_LOW"]
        ["Failure_Elec_RightTransformerRectifier"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "Failure_Elec_RightTransformerRectifier",
            ["mm"] = 0,
        }, -- end of ["Failure_Elec_RightTransformerRectifier"]
        ["FUSELAGE_TANK_LEAK"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "FUSELAGE_TANK_LEAK",
            ["mm"] = 0,
        }, -- end of ["FUSELAGE_TANK_LEAK"]
        ["Failure_LeftEngine"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "Failure_LeftEngine",
            ["mm"] = 0,
        }, -- end of ["Failure_LeftEngine"]
        ["OXYN_PRIMARY_CONTAINER_MINOR_LEAK"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "OXYN_PRIMARY_CONTAINER_MINOR_LEAK",
            ["mm"] = 0,
        }, -- end of ["OXYN_PRIMARY_CONTAINER_MINOR_LEAK"]
        ["TACAN_FAILURE_TOTAL"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "TACAN_FAILURE_TOTAL",
            ["mm"] = 0,
        }, -- end of ["TACAN_FAILURE_TOTAL"]
        ["PNEM_SECONDARY_CONTAINER_PERFORATED"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "PNEM_SECONDARY_CONTAINER_PERFORATED",
            ["mm"] = 0,
        }, -- end of ["PNEM_SECONDARY_CONTAINER_PERFORATED"]
        ["asc_y"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "asc_y",
            ["mm"] = 0,
        }, -- end of ["asc_y"]
        ["GUN_RIGHT_MG151_OPEN_CIRCUIT"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "GUN_RIGHT_MG151_OPEN_CIRCUIT",
            ["mm"] = 0,
        }, -- end of ["GUN_RIGHT_MG151_OPEN_CIRCUIT"]
        ["esf_RightRectifier"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "esf_RightRectifier",
            ["mm"] = 0,
        }, -- end of ["esf_RightRectifier"]
        ["fs_aft_LH_leakage"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "fs_aft_LH_leakage",
            ["mm"] = 0,
        }, -- end of ["fs_aft_LH_leakage"]
        ["EZ42_MOTOR_DEFECTIVE"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "EZ42_MOTOR_DEFECTIVE",
            ["mm"] = 0,
        }, -- end of ["EZ42_MOTOR_DEFECTIVE"]
        ["UHF_ARC_159_FAILURE_DISPLAY"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "UHF_ARC_159_FAILURE_DISPLAY",
            ["mm"] = 0,
        }, -- end of ["UHF_ARC_159_FAILURE_DISPLAY"]
        ["GUN_RIGHT_MG131_BARREL_WORN"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "GUN_RIGHT_MG131_BARREL_WORN",
            ["mm"] = 0,
        }, -- end of ["GUN_RIGHT_MG131_BARREL_WORN"]
        ["ILS_FAILURE_TOTAL"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "ILS_FAILURE_TOTAL",
            ["mm"] = 0,
        }, -- end of ["ILS_FAILURE_TOTAL"]
        ["ELEC_STARTER_BURNOUT"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "ELEC_STARTER_BURNOUT",
            ["mm"] = 0,
        }, -- end of ["ELEC_STARTER_BURNOUT"]
        ["ELEC_UC_LAMP_RHD_BULB_FAILURE"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "ELEC_UC_LAMP_RHD_BULB_FAILURE",
            ["mm"] = 0,
        }, -- end of ["ELEC_UC_LAMP_RHD_BULB_FAILURE"]
        ["fuel_sys_transfer_pumps"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "fuel_sys_transfer_pumps",
            ["mm"] = 0,
        }, -- end of ["fuel_sys_transfer_pumps"]
        ["as_damage_Depressurization"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "as_damage_Depressurization",
            ["mm"] = 0,
        }, -- end of ["as_damage_Depressurization"]
        ["ELEVONINNERLEFT"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "ELEVONINNERLEFT",
            ["mm"] = 0,
        }, -- end of ["ELEVONINNERLEFT"]
        ["HYDR2PUMP"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "HYDR2PUMP",
            ["mm"] = 0,
        }, -- end of ["HYDR2PUMP"]
        ["TURNIND_POINTER_NOT_SET_ZERO"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "TURNIND_POINTER_NOT_SET_ZERO",
            ["mm"] = 0,
        }, -- end of ["TURNIND_POINTER_NOT_SET_ZERO"]
        ["Vibration_RightEngine"] = 
        {
            ["hh"] = 0,
            ["enable"] = false,
            ["prob"] = 100,
            ["id"] = "Vibration_RightEngine",
            ["mmint"] = 1,
            ["hidden"] = true,
            ["mm"] = 0,
        }, -- end of ["Vibration_RightEngine"]
        ["RWRANTRIGHT"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "RWRANTRIGHT",
            ["mm"] = 0,
        }, -- end of ["RWRANTRIGHT"]
        ["ELEC_NAVLIGHT_GREEN_FAILURE"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "ELEC_NAVLIGHT_GREEN_FAILURE",
            ["mm"] = 0,
        }, -- end of ["ELEC_NAVLIGHT_GREEN_FAILURE"]
        ["TAIL_GEAR_D_LOCK_FAULT"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "TAIL_GEAR_D_LOCK_FAULT",
            ["mm"] = 0,
        }, -- end of ["TAIL_GEAR_D_LOCK_FAULT"]
        ["RIGHT_CYLINDER"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "RIGHT_CYLINDER",
            ["mm"] = 0,
        }, -- end of ["RIGHT_CYLINDER"]
        ["RUDDER"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "RUDDER",
            ["mm"] = 0,
        }, -- end of ["RUDDER"]
        ["Failure_PP_EngL_OilLeak"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "Failure_PP_EngL_OilLeak",
            ["mm"] = 0,
        }, -- end of ["Failure_PP_EngL_OilLeak"]
        ["es_damage_Starter"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "es_damage_Starter",
            ["mm"] = 0,
        }, -- end of ["es_damage_Starter"]
        ["Failure_Ctrl_FCS_Ch4"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "Failure_Ctrl_FCS_Ch4",
            ["mm"] = 0,
        }, -- end of ["Failure_Ctrl_FCS_Ch4"]
        ["RIGHT_MFCD_FAILURE"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "RIGHT_MFCD_FAILURE",
            ["mm"] = 0,
        }, -- end of ["RIGHT_MFCD_FAILURE"]
        ["ELEVONINNERRIGHT"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "ELEVONINNERRIGHT",
            ["mm"] = 0,
        }, -- end of ["ELEVONINNERRIGHT"]
        ["es_damage_GeneratorRight"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "es_damage_GeneratorRight",
            ["mm"] = 0,
        }, -- end of ["es_damage_GeneratorRight"]
        ["LEFT_WING_TANK_LEAK"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "LEFT_WING_TANK_LEAK",
            ["mm"] = 0,
        }, -- end of ["LEFT_WING_TANK_LEAK"]
        ["Failure_Comp_MC1"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "Failure_Comp_MC1",
            ["mm"] = 0,
        }, -- end of ["Failure_Comp_MC1"]
        ["INST_PITOT_DAMAGE"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "INST_PITOT_DAMAGE",
            ["mm"] = 0,
        }, -- end of ["INST_PITOT_DAMAGE"]
        ["MAINGENERATOR"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "MAINGENERATOR",
            ["mm"] = 0,
        }, -- end of ["MAINGENERATOR"]
        ["pp_damage_EmergMaxTempr"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "pp_damage_EmergMaxTempr",
            ["mm"] = 0,
        }, -- end of ["pp_damage_EmergMaxTempr"]
        ["HYDR_PUMP_FAILURE"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "HYDR_PUMP_FAILURE",
            ["mm"] = 0,
        }, -- end of ["HYDR_PUMP_FAILURE"]
        ["EGI_FAILURE_TOTAL"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "EGI_FAILURE_TOTAL",
            ["mm"] = 0,
        }, -- end of ["EGI_FAILURE_TOTAL"]
        ["PNEM_COMPRESSOR_FAILURE"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "PNEM_COMPRESSOR_FAILURE",
            ["mm"] = 0,
        }, -- end of ["PNEM_COMPRESSOR_FAILURE"]
        ["COPILOT_GYRO_TOTAL_FAILURE"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "COPILOT_GYRO_TOTAL_FAILURE",
            ["mm"] = 0,
        }, -- end of ["COPILOT_GYRO_TOTAL_FAILURE"]
        ["UHF_RADIO_FAILURE_TOTAL"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "UHF_RADIO_FAILURE_TOTAL",
            ["mm"] = 0,
        }, -- end of ["UHF_RADIO_FAILURE_TOTAL"]
        ["GUN_RIGHT_CENTER_AMMUN_FAULT"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "GUN_RIGHT_CENTER_AMMUN_FAULT",
            ["mm"] = 0,
        }, -- end of ["GUN_RIGHT_CENTER_AMMUN_FAULT"]
        ["TailRotorControlFailure"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "TailRotorControlFailure",
            ["mm"] = 0,
        }, -- end of ["TailRotorControlFailure"]
        ["DC_BUS_GENERATOR_FAILURE"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "DC_BUS_GENERATOR_FAILURE",
            ["mm"] = 0,
        }, -- end of ["DC_BUS_GENERATOR_FAILURE"]
        ["AHRS_FAILURE_TOTAL"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "AHRS_FAILURE_TOTAL",
            ["mm"] = 0,
        }, -- end of ["AHRS_FAILURE_TOTAL"]
        ["APU_Fire"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "APU_Fire",
            ["mm"] = 0,
        }, -- end of ["APU_Fire"]
        ["ENG0_WATERRADIATOR1_PIERCED"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "ENG0_WATERRADIATOR1_PIERCED",
            ["mm"] = 0,
        }, -- end of ["ENG0_WATERRADIATOR1_PIERCED"]
        ["LANDING_LIGHTS_FAILURE"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "LANDING_LIGHTS_FAILURE",
            ["mm"] = 0,
        }, -- end of ["LANDING_LIGHTS_FAILURE"]
        ["es_damage_InverterPT500C"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "es_damage_InverterPT500C",
            ["mm"] = 0,
        }, -- end of ["es_damage_InverterPT500C"]
        ["ELEC_RETICLE_BULB_FAILURE"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "ELEC_RETICLE_BULB_FAILURE",
            ["mm"] = 0,
        }, -- end of ["ELEC_RETICLE_BULB_FAILURE"]
        ["GUN_LEFT_MG131_AMMUN_FAULT"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "GUN_LEFT_MG131_AMMUN_FAULT",
            ["mm"] = 0,
        }, -- end of ["GUN_LEFT_MG131_AMMUN_FAULT"]
        ["RWR_FAILURE_LOW_BAND"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "RWR_FAILURE_LOW_BAND",
            ["mm"] = 0,
        }, -- end of ["RWR_FAILURE_LOW_BAND"]
        ["FUEL_MAIN_TANK_MINOR_LEAK"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "FUEL_MAIN_TANK_MINOR_LEAK",
            ["mm"] = 0,
        }, -- end of ["FUEL_MAIN_TANK_MINOR_LEAK"]
        ["INS_PART_FAIL"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "INS_PART_FAIL",
            ["mm"] = 0,
        }, -- end of ["INS_PART_FAIL"]
        ["RADARDISPL"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "RADARDISPL",
            ["mm"] = 0,
        }, -- end of ["RADARDISPL"]
        ["RightEngine_LowOilPressure"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "RightEngine_LowOilPressure",
            ["mm"] = 0,
        }, -- end of ["RightEngine_LowOilPressure"]
        ["OXYN_TOP_CONTAINER_PERFORATED"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "OXYN_TOP_CONTAINER_PERFORATED",
            ["mm"] = 0,
        }, -- end of ["OXYN_TOP_CONTAINER_PERFORATED"]
        ["radar"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "radar",
            ["mm"] = 0,
        }, -- end of ["radar"]
        ["ARN_82_FAILURE_TOTAL"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "ARN_82_FAILURE_TOTAL",
            ["mm"] = 0,
        }, -- end of ["ARN_82_FAILURE_TOTAL"]
        ["IFFCC_FAILURE_GUN"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "IFFCC_FAILURE_GUN",
            ["mm"] = 0,
        }, -- end of ["IFFCC_FAILURE_GUN"]
        ["Failure_Elec_UtilityBattery"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "Failure_Elec_UtilityBattery",
            ["mm"] = 0,
        }, -- end of ["Failure_Elec_UtilityBattery"]
        ["BAT_SOLENOID_WIRING"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "BAT_SOLENOID_WIRING",
            ["mm"] = 0,
        }, -- end of ["BAT_SOLENOID_WIRING"]
        ["COOLANT_UNPRES"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "COOLANT_UNPRES",
            ["mm"] = 0,
        }, -- end of ["COOLANT_UNPRES"]
        ["GUN_LEFT_OUT_OPEN_CIRCUIT"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "GUN_LEFT_OUT_OPEN_CIRCUIT",
            ["mm"] = 0,
        }, -- end of ["GUN_LEFT_OUT_OPEN_CIRCUIT"]
        ["VHF_ARC_182_FAILURE_TRANSCEIVER"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "VHF_ARC_182_FAILURE_TRANSCEIVER",
            ["mm"] = 0,
        }, -- end of ["VHF_ARC_182_FAILURE_TRANSCEIVER"]
        ["BCKPITOT"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "BCKPITOT",
            ["mm"] = 0,
        }, -- end of ["BCKPITOT"]
        ["TURNIND_INCORRECT_SENS_DEFECTIVE"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "TURNIND_INCORRECT_SENS_DEFECTIVE",
            ["mm"] = 0,
        }, -- end of ["TURNIND_INCORRECT_SENS_DEFECTIVE"]
        ["eos"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "eos",
            ["mm"] = 0,
        }, -- end of ["eos"]
        ["CANARDFLAPRIGHT"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "CANARDFLAPRIGHT",
            ["mm"] = 0,
        }, -- end of ["CANARDFLAPRIGHT"]
        ["FUEL_FORWARD_TANK_MINOR_LEAK"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "FUEL_FORWARD_TANK_MINOR_LEAK",
            ["mm"] = 0,
        }, -- end of ["FUEL_FORWARD_TANK_MINOR_LEAK"]
        ["CADC_STABILIZER_AUTHORITY_COMMAND"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "CADC_STABILIZER_AUTHORITY_COMMAND",
            ["mm"] = 0,
        }, -- end of ["CADC_STABILIZER_AUTHORITY_COMMAND"]
        ["PNEM_LH_FLAP_JACK_BUSTED"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "PNEM_LH_FLAP_JACK_BUSTED",
            ["mm"] = 0,
        }, -- end of ["PNEM_LH_FLAP_JACK_BUSTED"]
        ["fire_sys_fire_LE"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "fire_sys_fire_LE",
            ["mm"] = 0,
        }, -- end of ["fire_sys_fire_LE"]
        ["INS_FAILURE_TOTAL"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "INS_FAILURE_TOTAL",
            ["mm"] = 0,
        }, -- end of ["INS_FAILURE_TOTAL"]
        ["hs_damage_AuxAccumulator"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "hs_damage_AuxAccumulator",
            ["mm"] = 0,
        }, -- end of ["hs_damage_AuxAccumulator"]
        ["LEFT_CYLINDER"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "LEFT_CYLINDER",
            ["mm"] = 0,
        }, -- end of ["LEFT_CYLINDER"]
        ["PITOT_HEAT_FAULT"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "PITOT_HEAT_FAULT",
            ["mm"] = 0,
        }, -- end of ["PITOT_HEAT_FAULT"]
        ["CTRL_ELEVATOR_TRIM_FAILURE"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "CTRL_ELEVATOR_TRIM_FAILURE",
            ["mm"] = 0,
        }, -- end of ["CTRL_ELEVATOR_TRIM_FAILURE"]
        ["BAT_SOLENOID_DEFECTIVE"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "BAT_SOLENOID_DEFECTIVE",
            ["mm"] = 0,
        }, -- end of ["BAT_SOLENOID_DEFECTIVE"]
        ["sensf_CADC"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "sensf_CADC",
            ["mm"] = 0,
        }, -- end of ["sensf_CADC"]
        ["RADAR_ALTIMETR_LEFT_ANT_FAILURE"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "RADAR_ALTIMETR_LEFT_ANT_FAILURE",
            ["mm"] = 0,
        }, -- end of ["RADAR_ALTIMETR_LEFT_ANT_FAILURE"]
        ["hydro"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "hydro",
            ["mm"] = 0,
        }, -- end of ["hydro"]
        ["AGD1_GYRO_TOTAL_FAILURE"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "AGD1_GYRO_TOTAL_FAILURE",
            ["mm"] = 0,
        }, -- end of ["AGD1_GYRO_TOTAL_FAILURE"]
        ["hsf_UtilityHydraulic"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "hsf_UtilityHydraulic",
            ["mm"] = 0,
        }, -- end of ["hsf_UtilityHydraulic"]
        ["ELEC_BATTERY_OVERHEAT"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "ELEC_BATTERY_OVERHEAT",
            ["mm"] = 0,
        }, -- end of ["ELEC_BATTERY_OVERHEAT"]
        ["BOMBS_DAMAGE_ELINKAGE"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "BOMBS_DAMAGE_ELINKAGE",
            ["mm"] = 0,
        }, -- end of ["BOMBS_DAMAGE_ELINKAGE"]
        ["LeftEngine_Fire"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "LeftEngine_Fire",
            ["mm"] = 0,
        }, -- end of ["LeftEngine_Fire"]
        ["HUD_FAILURE_TOTAL"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "HUD_FAILURE_TOTAL",
            ["mm"] = 0,
        }, -- end of ["HUD_FAILURE_TOTAL"]
        ["SUPERCHARGER_LIGHT"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "SUPERCHARGER_LIGHT",
            ["mm"] = 0,
        }, -- end of ["SUPERCHARGER_LIGHT"]
        ["L_GEAR_UPL_FAULT"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "L_GEAR_UPL_FAULT",
            ["mm"] = 0,
        }, -- end of ["L_GEAR_UPL_FAULT"]
        ["STARTER_SOLENOID"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "STARTER_SOLENOID",
            ["mm"] = 0,
        }, -- end of ["STARTER_SOLENOID"]
        ["UNCR_RH_WHEEL_BRAKE_DAMAGED"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "UNCR_RH_WHEEL_BRAKE_DAMAGED",
            ["mm"] = 0,
        }, -- end of ["UNCR_RH_WHEEL_BRAKE_DAMAGED"]
        ["VHF_ARC_182_FAILURE_ANTENNA"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "VHF_ARC_182_FAILURE_ANTENNA",
            ["mm"] = 0,
        }, -- end of ["VHF_ARC_182_FAILURE_ANTENNA"]
        ["TACH_RESISTANCE_ADJ"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "TACH_RESISTANCE_ADJ",
            ["mm"] = 0,
        }, -- end of ["TACH_RESISTANCE_ADJ"]
        ["Failure_ECS_OBOGS"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "Failure_ECS_OBOGS",
            ["mm"] = 0,
        }, -- end of ["Failure_ECS_OBOGS"]
        ["UNCR_LH_STRUT_DRIVE_FAILURE"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "UNCR_LH_STRUT_DRIVE_FAILURE",
            ["mm"] = 0,
        }, -- end of ["UNCR_LH_STRUT_DRIVE_FAILURE"]
        ["BURNER"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "BURNER",
            ["mm"] = 0,
        }, -- end of ["BURNER"]
        ["CADC_RUDDER_AUTHORITY_COMMAND"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "CADC_RUDDER_AUTHORITY_COMMAND",
            ["mm"] = 0,
        }, -- end of ["CADC_RUDDER_AUTHORITY_COMMAND"]
        ["TailReductor_ShaveInOil"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "TailReductor_ShaveInOil",
            ["mm"] = 0,
        }, -- end of ["TailReductor_ShaveInOil"]
        ["Failure_Ctrl_FCS_Ch3"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "Failure_Ctrl_FCS_Ch3",
            ["mm"] = 0,
        }, -- end of ["Failure_Ctrl_FCS_Ch3"]
        ["fire_sys_fireko50"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "fire_sys_fireko50",
            ["mm"] = 0,
        }, -- end of ["fire_sys_fireko50"]
        ["Failure_Elec_EmergencyBattery"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "Failure_Elec_EmergencyBattery",
            ["mm"] = 0,
        }, -- end of ["Failure_Elec_EmergencyBattery"]
        ["Failure_Fuel_ExtTankTransferL"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "Failure_Fuel_ExtTankTransferL",
            ["mm"] = 0,
        }, -- end of ["Failure_Fuel_ExtTankTransferL"]
        ["R_GEAR_UPL_FAULT"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "R_GEAR_UPL_FAULT",
            ["mm"] = 0,
        }, -- end of ["R_GEAR_UPL_FAULT"]
        ["RWR_FAILURE_DISPLAY_RIO"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "RWR_FAILURE_DISPLAY_RIO",
            ["mm"] = 0,
        }, -- end of ["RWR_FAILURE_DISPLAY_RIO"]
        ["es_damage_VU2"] = 
        {
            ["hh"] = 0,
            ["enable"] = false,
            ["prob"] = 100,
            ["id"] = "es_damage_VU2",
            ["mmint"] = 1,
            ["hidden"] = true,
            ["mm"] = 0,
        }, -- end of ["es_damage_VU2"]
        ["IFF"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "IFF",
            ["mm"] = 0,
        }, -- end of ["IFF"]
        ["GUN_LEFT_OUT_BARREL_WORN"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "GUN_LEFT_OUT_BARREL_WORN",
            ["mm"] = 0,
        }, -- end of ["GUN_LEFT_OUT_BARREL_WORN"]
        ["CARBAIR_SHORT_CIRCUIT"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "CARBAIR_SHORT_CIRCUIT",
            ["mm"] = 0,
        }, -- end of ["CARBAIR_SHORT_CIRCUIT"]
        ["STARTER_RELAY"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "STARTER_RELAY",
            ["mm"] = 0,
        }, -- end of ["STARTER_RELAY"]
        ["AN_ALE_40V_FAILURE_CONTAINER_RIGHT_WING"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "AN_ALE_40V_FAILURE_CONTAINER_RIGHT_WING",
            ["mm"] = 0,
        }, -- end of ["AN_ALE_40V_FAILURE_CONTAINER_RIGHT_WING"]
        ["AIRBRAKE"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "AIRBRAKE",
            ["mm"] = 0,
        }, -- end of ["AIRBRAKE"]
        ["GUN_RIGHT_IN_MOUNT_LOOSE"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "GUN_RIGHT_IN_MOUNT_LOOSE",
            ["mm"] = 0,
        }, -- end of ["GUN_RIGHT_IN_MOUNT_LOOSE"]
        ["TACAN_FAILURE_RECEIVER"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "TACAN_FAILURE_RECEIVER",
            ["mm"] = 0,
        }, -- end of ["TACAN_FAILURE_RECEIVER"]
        ["TailReductor_LowOilPressure"] = 
        {
            ["hh"] = 0,
            ["enable"] = false,
            ["prob"] = 100,
            ["id"] = "TailReductor_LowOilPressure",
            ["mmint"] = 1,
            ["hidden"] = true,
            ["mm"] = 0,
        }, -- end of ["TailReductor_LowOilPressure"]
        ["Failure_Sens_RightPitotHeater"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "Failure_Sens_RightPitotHeater",
            ["mm"] = 0,
        }, -- end of ["Failure_Sens_RightPitotHeater"]
        ["FUEL_DROPTANK_LINE_SEVERED"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "FUEL_DROPTANK_LINE_SEVERED",
            ["mm"] = 0,
        }, -- end of ["FUEL_DROPTANK_LINE_SEVERED"]
        ["HAW"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "HAW",
            ["mm"] = 0,
        }, -- end of ["HAW"]
        ["CADC_ANGLE_OF_ATTACK_SIGNAL"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "CADC_ANGLE_OF_ATTACK_SIGNAL",
            ["mm"] = 0,
        }, -- end of ["CADC_ANGLE_OF_ATTACK_SIGNAL"]
        ["LEFT_MFCD_FAILURE"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "LEFT_MFCD_FAILURE",
            ["mm"] = 0,
        }, -- end of ["LEFT_MFCD_FAILURE"]
        ["pp_damage_MainStabFactor"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "pp_damage_MainStabFactor",
            ["mm"] = 0,
        }, -- end of ["pp_damage_MainStabFactor"]
        ["hydro_right"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "hydro_right",
            ["mm"] = 0,
        }, -- end of ["hydro_right"]
        ["HYDR1ACC"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "HYDR1ACC",
            ["mm"] = 0,
        }, -- end of ["HYDR1ACC"]
        ["pp_damage_BladesBrake"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "pp_damage_BladesBrake",
            ["mm"] = 0,
        }, -- end of ["pp_damage_BladesBrake"]
        ["CTRL_AILERON_ROD_DESTROYED"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "CTRL_AILERON_ROD_DESTROYED",
            ["mm"] = 0,
        }, -- end of ["CTRL_AILERON_ROD_DESTROYED"]
        ["TRIMMER_DRIVE_FAULT"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "TRIMMER_DRIVE_FAULT",
            ["mm"] = 0,
        }, -- end of ["TRIMMER_DRIVE_FAULT"]
        ["DOORS_TVC_BROKEN"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "DOORS_TVC_BROKEN",
            ["mm"] = 0,
        }, -- end of ["DOORS_TVC_BROKEN"]
        ["HYDRRESERVPUMP"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "HYDRRESERVPUMP",
            ["mm"] = 0,
        }, -- end of ["HYDRRESERVPUMP"]
        ["SADL_FAILURE_TOTAL"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "SADL_FAILURE_TOTAL",
            ["mm"] = 0,
        }, -- end of ["SADL_FAILURE_TOTAL"]
        ["fs_damage_left_cell_boost_pump"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "fs_damage_left_cell_boost_pump",
            ["mm"] = 0,
        }, -- end of ["fs_damage_left_cell_boost_pump"]
        ["ELEC_BOOSTER_FUEL_PUMP_FAILURE"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "ELEC_BOOSTER_FUEL_PUMP_FAILURE",
            ["mm"] = 0,
        }, -- end of ["ELEC_BOOSTER_FUEL_PUMP_FAILURE"]
        ["BOMBS_DAMAGE_ELINKAGE_LEFT"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "BOMBS_DAMAGE_ELINKAGE_LEFT",
            ["mm"] = 0,
        }, -- end of ["BOMBS_DAMAGE_ELINKAGE_LEFT"]
        ["Failure_Elec_RightGenerator"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "Failure_Elec_RightGenerator",
            ["mm"] = 0,
        }, -- end of ["Failure_Elec_RightGenerator"]
        ["esf_LeftGenerator"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "esf_LeftGenerator",
            ["mm"] = 0,
        }, -- end of ["esf_LeftGenerator"]
        ["ENGINE_JAM"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "ENGINE_JAM",
            ["mm"] = 0,
        }, -- end of ["ENGINE_JAM"]
        ["ELEVONOUTERLEFT"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "ELEVONOUTERLEFT",
            ["mm"] = 0,
        }, -- end of ["ELEVONOUTERLEFT"]
        ["MAGNETO_2"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "MAGNETO_2",
            ["mm"] = 0,
        }, -- end of ["MAGNETO_2"]
        ["CMS_FAILURE_LEFT_DISPENSER"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "CMS_FAILURE_LEFT_DISPENSER",
            ["mm"] = 0,
        }, -- end of ["CMS_FAILURE_LEFT_DISPENSER"]
        ["SAR_1_95"] = 
        {
            ["hh"] = 0,
            ["id"] = "SAR_1_95",
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["hidden"] = true,
            ["mm"] = 0,
        }, -- end of ["SAR_1_95"]
        ["RWR_FAILURE_SENSOR_RIGHT"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "RWR_FAILURE_SENSOR_RIGHT",
            ["mm"] = 0,
        }, -- end of ["RWR_FAILURE_SENSOR_RIGHT"]
        ["DOPPLER_UNIT"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "DOPPLER_UNIT",
            ["mm"] = 0,
        }, -- end of ["DOPPLER_UNIT"]
        ["BOMBS_TRAIN_DEFECTIVE_WIRING"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "BOMBS_TRAIN_DEFECTIVE_WIRING",
            ["mm"] = 0,
        }, -- end of ["BOMBS_TRAIN_DEFECTIVE_WIRING"]
        ["TEMPSENSOR"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "TEMPSENSOR",
            ["mm"] = 0,
        }, -- end of ["TEMPSENSOR"]
        ["AHRS_FAILURE_GYRO"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "AHRS_FAILURE_GYRO",
            ["mm"] = 0,
        }, -- end of ["AHRS_FAILURE_GYRO"]
        ["RWR_FAILURE_MBE"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "RWR_FAILURE_MBE",
            ["mm"] = 0,
        }, -- end of ["RWR_FAILURE_MBE"]
        ["TAIL_GEAR_C_CABLE"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "TAIL_GEAR_C_CABLE",
            ["mm"] = 0,
        }, -- end of ["TAIL_GEAR_C_CABLE"]
        ["ELEC_UC_LAMP_CD_BULB_FAILURE"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "ELEC_UC_LAMP_CD_BULB_FAILURE",
            ["mm"] = 0,
        }, -- end of ["ELEC_UC_LAMP_CD_BULB_FAILURE"]
        ["R_GEAR_BRAKE_FAULT"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "R_GEAR_BRAKE_FAULT",
            ["mm"] = 0,
        }, -- end of ["R_GEAR_BRAKE_FAULT"]
        ["damper"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "damper",
            ["mm"] = 0,
        }, -- end of ["damper"]
        ["engine_driveshaft_failure"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "engine_driveshaft_failure",
            ["mm"] = 0,
        }, -- end of ["engine_driveshaft_failure"]
        ["PUMP_RELIEF_VALVE_LEAKS"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "PUMP_RELIEF_VALVE_LEAKS",
            ["mm"] = 0,
        }, -- end of ["PUMP_RELIEF_VALVE_LEAKS"]
        ["BCKGYRO"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "BCKGYRO",
            ["mm"] = 0,
        }, -- end of ["BCKGYRO"]
        ["GUN_RIGHT_MG131_AMMUN_FAULT"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "GUN_RIGHT_MG131_AMMUN_FAULT",
            ["mm"] = 0,
        }, -- end of ["GUN_RIGHT_MG131_AMMUN_FAULT"]
        ["UHF_ARC_159_FAILURE_ANTENNA"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "UHF_ARC_159_FAILURE_ANTENNA",
            ["mm"] = 0,
        }, -- end of ["UHF_ARC_159_FAILURE_ANTENNA"]
        ["ELEC_FUEL_PUMP_P2_FAILURE"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "ELEC_FUEL_PUMP_P2_FAILURE",
            ["mm"] = 0,
        }, -- end of ["ELEC_FUEL_PUMP_P2_FAILURE"]
        ["STARTER_RELAY_FAULT"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "STARTER_RELAY_FAULT",
            ["mm"] = 0,
        }, -- end of ["STARTER_RELAY_FAULT"]
        ["FLEX_S_NO_POWER_SUPPLY"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "FLEX_S_NO_POWER_SUPPLY",
            ["mm"] = 0,
        }, -- end of ["FLEX_S_NO_POWER_SUPPLY"]
        ["TRN_FAIL_AUX"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["mm"] = 0,
        }, -- end of ["TRN_FAIL_AUX"]
        ["GMC_MAGN_COMP_FAILURE"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "GMC_MAGN_COMP_FAILURE",
            ["mm"] = 0,
        }, -- end of ["GMC_MAGN_COMP_FAILURE"]
        ["fire_sys_fire_RE"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "fire_sys_fire_RE",
            ["mm"] = 0,
        }, -- end of ["fire_sys_fire_RE"]
        ["HORIZON_FAULT"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "HORIZON_FAULT",
            ["mm"] = 0,
        }, -- end of ["HORIZON_FAULT"]
        ["RWR_FAILURE_BLANKER"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "RWR_FAILURE_BLANKER",
            ["mm"] = 0,
        }, -- end of ["RWR_FAILURE_BLANKER"]
        ["ENG0_GOVERNOR_REGULATOR_MALFUNCTION"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "ENG0_GOVERNOR_REGULATOR_MALFUNCTION",
            ["mm"] = 0,
        }, -- end of ["ENG0_GOVERNOR_REGULATOR_MALFUNCTION"]
        ["ENG0_STARTER_CLUTCH_FAILURE"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "ENG0_STARTER_CLUTCH_FAILURE",
            ["mm"] = 0,
        }, -- end of ["ENG0_STARTER_CLUTCH_FAILURE"]
        ["esf_RightGenerator"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "esf_RightGenerator",
            ["mm"] = 0,
        }, -- end of ["esf_RightGenerator"]
        ["VHF_VT207_DEFECTIVE"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "VHF_VT207_DEFECTIVE",
            ["mm"] = 0,
        }, -- end of ["VHF_VT207_DEFECTIVE"]
        ["LEFT_GUNNER_KILLED_FAILURE"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "LEFT_GUNNER_KILLED_FAILURE",
            ["mm"] = 0,
        }, -- end of ["LEFT_GUNNER_KILLED_FAILURE"]
        ["ELEC_PITOT_HEAT_ELEMENT"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "ELEC_PITOT_HEAT_ELEMENT",
            ["mm"] = 0,
        }, -- end of ["ELEC_PITOT_HEAT_ELEMENT"]
        ["AFN2_DAMAGE"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "AFN2_DAMAGE",
            ["mm"] = 0,
        }, -- end of ["AFN2_DAMAGE"]
        ["pp_damage_MainMaxNormFreq"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "pp_damage_MainMaxNormFreq",
            ["mm"] = 0,
        }, -- end of ["pp_damage_MainMaxNormFreq"]
        ["ARN_83_TOTAL_FAILURE"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "ARN_83_TOTAL_FAILURE",
            ["mm"] = 0,
        }, -- end of ["ARN_83_TOTAL_FAILURE"]
        ["CTRL_LANDING_FLAPS_MECHANICAL_FAILURE"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "CTRL_LANDING_FLAPS_MECHANICAL_FAILURE",
            ["mm"] = 0,
        }, -- end of ["CTRL_LANDING_FLAPS_MECHANICAL_FAILURE"]
        ["CARBAIR_BREAK_LEADS"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "CARBAIR_BREAK_LEADS",
            ["mm"] = 0,
        }, -- end of ["CARBAIR_BREAK_LEADS"]
        ["ENG0_STARTER_MOTOR_FAILURE"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "ENG0_STARTER_MOTOR_FAILURE",
            ["mm"] = 0,
        }, -- end of ["ENG0_STARTER_MOTOR_FAILURE"]
        ["ssf_full_pressure_fail"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "ssf_full_pressure_fail",
            ["mm"] = 0,
        }, -- end of ["ssf_full_pressure_fail"]
        ["Failure_Hyd_HYD2A_Leak"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "Failure_Hyd_HYD2A_Leak",
            ["mm"] = 0,
        }, -- end of ["Failure_Hyd_HYD2A_Leak"]
        ["CTRL_RUDDER_ROD_MINOR_DAMAGE"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "CTRL_RUDDER_ROD_MINOR_DAMAGE",
            ["mm"] = 0,
        }, -- end of ["CTRL_RUDDER_ROD_MINOR_DAMAGE"]
        ["CADC_WING_SWEEP_INDICATOR"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "CADC_WING_SWEEP_INDICATOR",
            ["mm"] = 0,
        }, -- end of ["CADC_WING_SWEEP_INDICATOR"]
        ["hs_damage_MainHydro"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "hs_damage_MainHydro",
            ["mm"] = 0,
        }, -- end of ["hs_damage_MainHydro"]
        ["Failure_PP_LeftPTS"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "Failure_PP_LeftPTS",
            ["mm"] = 0,
        }, -- end of ["Failure_PP_LeftPTS"]
        ["CANARDSERVORIGHT"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "CANARDSERVORIGHT",
            ["mm"] = 0,
        }, -- end of ["CANARDSERVORIGHT"]
        ["CADC_TOTAL_TEMPERATURE_SIGNAL"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "CADC_TOTAL_TEMPERATURE_SIGNAL",
            ["mm"] = 0,
        }, -- end of ["CADC_TOTAL_TEMPERATURE_SIGNAL"]
        ["RADARASS"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "RADARASS",
            ["mm"] = 0,
        }, -- end of ["RADARASS"]
        ["AN_ALR69V_FAILURE_SENSOR_TAIL_LEFT"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "AN_ALR69V_FAILURE_SENSOR_TAIL_LEFT",
            ["mm"] = 0,
        }, -- end of ["AN_ALR69V_FAILURE_SENSOR_TAIL_LEFT"]
        ["BOMBS_DAMAGE_LINKAGE"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "BOMBS_DAMAGE_LINKAGE",
            ["mm"] = 0,
        }, -- end of ["BOMBS_DAMAGE_LINKAGE"]
        ["K14_MOV_LAMP_DEFECTIVE"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "K14_MOV_LAMP_DEFECTIVE",
            ["mm"] = 0,
        }, -- end of ["K14_MOV_LAMP_DEFECTIVE"]
        ["CADC_WING_SWEEP_COMMAND_CHANNEL_1"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "CADC_WING_SWEEP_COMMAND_CHANNEL_1",
            ["mm"] = 0,
        }, -- end of ["CADC_WING_SWEEP_COMMAND_CHANNEL_1"]
        ["fs_aft_central_leakage"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "fs_aft_central_leakage",
            ["mm"] = 0,
        }, -- end of ["fs_aft_central_leakage"]
        ["BATTERY_OVERHEAT"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "BATTERY_OVERHEAT",
            ["mm"] = 0,
        }, -- end of ["BATTERY_OVERHEAT"]
        ["TILS"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "TILS",
            ["mm"] = 0,
        }, -- end of ["TILS"]
        ["FUEL_MAIN_TANK_MAJOR_LEAK"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "FUEL_MAIN_TANK_MAJOR_LEAK",
            ["mm"] = 0,
        }, -- end of ["FUEL_MAIN_TANK_MAJOR_LEAK"]
        ["r_gen"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "r_gen",
            ["mm"] = 0,
        }, -- end of ["r_gen"]
        ["ENG0_MAGNETO0"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "ENG0_MAGNETO0",
            ["mm"] = 0,
        }, -- end of ["ENG0_MAGNETO0"]
        ["AAR_47_FAILURE_SENSOR_RIGHT"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "AAR_47_FAILURE_SENSOR_RIGHT",
            ["mm"] = 0,
        }, -- end of ["AAR_47_FAILURE_SENSOR_RIGHT"]
        ["GUN_FAIL_RIGHT_CENTER_GUN"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "GUN_FAIL_RIGHT_CENTER_GUN",
            ["mm"] = 0,
        }, -- end of ["GUN_FAIL_RIGHT_CENTER_GUN"]
        ["Failure_PP_EngL_AB_FFCS"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "Failure_PP_EngL_AB_FFCS",
            ["mm"] = 0,
        }, -- end of ["Failure_PP_EngL_AB_FFCS"]
        ["CMDISP"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "CMDISP",
            ["mm"] = 0,
        }, -- end of ["CMDISP"]
        ["DC_BUS_FAILURE_TOTAL"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "DC_BUS_FAILURE_TOTAL",
            ["mm"] = 0,
        }, -- end of ["DC_BUS_FAILURE_TOTAL"]
        ["EXT_TANK_LEAK"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "EXT_TANK_LEAK",
            ["mm"] = 0,
        }, -- end of ["EXT_TANK_LEAK"]
        ["TACH_BREAK_CIRCUIT"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "TACH_BREAK_CIRCUIT",
            ["mm"] = 0,
        }, -- end of ["TACH_BREAK_CIRCUIT"]
        ["AC_BUS_FAILURE_TOTAL"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "AC_BUS_FAILURE_TOTAL",
            ["mm"] = 0,
        }, -- end of ["AC_BUS_FAILURE_TOTAL"]
        ["TAIL_GEAR_D_LOCK"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "TAIL_GEAR_D_LOCK",
            ["mm"] = 0,
        }, -- end of ["TAIL_GEAR_D_LOCK"]
        ["hud"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "hud",
            ["mm"] = 0,
        }, -- end of ["hud"]
        ["FUELTANK3R"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "FUELTANK3R",
            ["mm"] = 0,
        }, -- end of ["FUELTANK3R"]
        ["PITOT_FAILURE_TOTAL"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "PITOT_FAILURE_TOTAL",
            ["mm"] = 0,
        }, -- end of ["PITOT_FAILURE_TOTAL"]
        ["UNLOAD_VALVE_NOT_UNLOAD"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "UNLOAD_VALVE_NOT_UNLOAD",
            ["mm"] = 0,
        }, -- end of ["UNLOAD_VALVE_NOT_UNLOAD"]
        ["fuel_sys_left_transfer_pump"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "fuel_sys_left_transfer_pump",
            ["mm"] = 0,
        }, -- end of ["fuel_sys_left_transfer_pump"]
        ["TAIL_GEAR_U_LOCK"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "TAIL_GEAR_U_LOCK",
            ["mm"] = 0,
        }, -- end of ["TAIL_GEAR_U_LOCK"]
        ["HYD_Transf"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "HYD_Transf",
            ["mm"] = 0,
        }, -- end of ["HYD_Transf"]
        ["RIGHT_GUNNER_KILLED_FAILURE"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "RIGHT_GUNNER_KILLED_FAILURE",
            ["mm"] = 0,
        }, -- end of ["RIGHT_GUNNER_KILLED_FAILURE"]
        ["RADARALTANT"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "RADARALTANT",
            ["mm"] = 0,
        }, -- end of ["RADARALTANT"]
        ["FUEL_BOOSTER_FUEL_PUMP_0_FAILURE"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "FUEL_BOOSTER_FUEL_PUMP_0_FAILURE",
            ["mm"] = 0,
        }, -- end of ["FUEL_BOOSTER_FUEL_PUMP_0_FAILURE"]
        ["es_damage_StarterGenerator"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "es_damage_StarterGenerator",
            ["mm"] = 0,
        }, -- end of ["es_damage_StarterGenerator"]
        ["es_damage_Battery"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "es_damage_Battery",
            ["mm"] = 0,
        }, -- end of ["es_damage_Battery"]
        ["ELEC_UC_LAMP_LHD_BULB_FAILURE"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "ELEC_UC_LAMP_LHD_BULB_FAILURE",
            ["mm"] = 0,
        }, -- end of ["ELEC_UC_LAMP_LHD_BULB_FAILURE"]
        ["ILS_FAILURE_ANT_LOCALIZER"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "ILS_FAILURE_ANT_LOCALIZER",
            ["mm"] = 0,
        }, -- end of ["ILS_FAILURE_ANT_LOCALIZER"]
        ["ppf_FireLeft"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "ppf_FireLeft",
            ["mm"] = 0,
        }, -- end of ["ppf_FireLeft"]
        ["LEFT_TANK_PUMP_FAULT"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "LEFT_TANK_PUMP_FAULT",
            ["mm"] = 0,
        }, -- end of ["LEFT_TANK_PUMP_FAULT"]
        ["sas_pitch_right"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "sas_pitch_right",
            ["mm"] = 0,
        }, -- end of ["sas_pitch_right"]
        ["RPMSENSOR"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "RPMSENSOR",
            ["mm"] = 0,
        }, -- end of ["RPMSENSOR"]
        ["GUN_LEFT_OUT_AMMUN_FAULT"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "GUN_LEFT_OUT_AMMUN_FAULT",
            ["mm"] = 0,
        }, -- end of ["GUN_LEFT_OUT_AMMUN_FAULT"]
        ["FDU"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "FDU",
            ["mm"] = 0,
        }, -- end of ["FDU"]
        ["VHF_AM_RADIO_FAILURE_TOTAL"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "VHF_AM_RADIO_FAILURE_TOTAL",
            ["mm"] = 0,
        }, -- end of ["VHF_AM_RADIO_FAILURE_TOTAL"]
        ["pp_damage_OilSeparator"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "pp_damage_OilSeparator",
            ["mm"] = 0,
        }, -- end of ["pp_damage_OilSeparator"]
        ["VHF_CRYSTAL"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "VHF_CRYSTAL",
            ["mm"] = 0,
        }, -- end of ["VHF_CRYSTAL"]
        ["RPMFault_LeftEngine"] = 
        {
            ["hh"] = 0,
            ["enable"] = false,
            ["prob"] = 100,
            ["id"] = "RPMFault_LeftEngine",
            ["mmint"] = 1,
            ["hidden"] = true,
            ["mm"] = 0,
        }, -- end of ["RPMFault_LeftEngine"]
        ["RIGHT_WING_TANK_LEAK"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "RIGHT_WING_TANK_LEAK",
            ["mm"] = 0,
        }, -- end of ["RIGHT_WING_TANK_LEAK"]
        ["F2_TOP_CYLINDER"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "F2_TOP_CYLINDER",
            ["mm"] = 0,
        }, -- end of ["F2_TOP_CYLINDER"]
        ["FUEL_BOOSTER_FUEL_PUMP_DEGRADED"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "FUEL_BOOSTER_FUEL_PUMP_DEGRADED",
            ["mm"] = 0,
        }, -- end of ["FUEL_BOOSTER_FUEL_PUMP_DEGRADED"]
        ["ROOF_AIRSPEED_INDICATOR_FAILURE"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "ROOF_AIRSPEED_INDICATOR_FAILURE",
            ["mm"] = 0,
        }, -- end of ["ROOF_AIRSPEED_INDICATOR_FAILURE"]
        ["INST_SPEEDOMETER_DEPRESSURIZATION"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "INST_SPEEDOMETER_DEPRESSURIZATION",
            ["mm"] = 0,
        }, -- end of ["INST_SPEEDOMETER_DEPRESSURIZATION"]
        ["Failure_PP_EngL_Main_FFCS"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "Failure_PP_EngL_Main_FFCS",
            ["mm"] = 0,
        }, -- end of ["Failure_PP_EngL_Main_FFCS"]
        ["K14_NO_POWER_SUPPLY"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "K14_NO_POWER_SUPPLY",
            ["mm"] = 0,
        }, -- end of ["K14_NO_POWER_SUPPLY"]
        ["INS_GYROS_FAIL"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "INS_GYROS_FAIL",
            ["mm"] = 0,
        }, -- end of ["INS_GYROS_FAIL"]
        ["fs_damage_FuelBoosterPump"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "fs_damage_FuelBoosterPump",
            ["mm"] = 0,
        }, -- end of ["fs_damage_FuelBoosterPump"]
        ["INST_TACH0_POOR_CONNECTION"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "INST_TACH0_POOR_CONNECTION",
            ["mm"] = 0,
        }, -- end of ["INST_TACH0_POOR_CONNECTION"]
        ["ENG0_BOOST_REGULATOR_MALFUNCTION"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "ENG0_BOOST_REGULATOR_MALFUNCTION",
            ["mm"] = 0,
        }, -- end of ["ENG0_BOOST_REGULATOR_MALFUNCTION"]
        ["PNEM_BRAKE_RELAY_FAILURE"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "PNEM_BRAKE_RELAY_FAILURE",
            ["mm"] = 0,
        }, -- end of ["PNEM_BRAKE_RELAY_FAILURE"]
        ["GUN_FAIL_LEFT_OUT_GUN"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "GUN_FAIL_LEFT_OUT_GUN",
            ["mm"] = 0,
        }, -- end of ["GUN_FAIL_LEFT_OUT_GUN"]
        ["MANIFOLD_LINE_LEAK"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "MANIFOLD_LINE_LEAK",
            ["mm"] = 0,
        }, -- end of ["MANIFOLD_LINE_LEAK"]
        ["GUN_RIGHT_CENTER_OPEN_CIRCUIT"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "GUN_RIGHT_CENTER_OPEN_CIRCUIT",
            ["mm"] = 0,
        }, -- end of ["GUN_RIGHT_CENTER_OPEN_CIRCUIT"]
        ["IFFCC_FAILURE_TOTAL"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "IFFCC_FAILURE_TOTAL",
            ["mm"] = 0,
        }, -- end of ["IFFCC_FAILURE_TOTAL"]
        ["HYD_PUMP_3_FAIL_100"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "HYD_PUMP_3_FAIL_100",
            ["mm"] = 0,
        }, -- end of ["HYD_PUMP_3_FAIL_100"]
        ["RWR_FAILURE_QUAD225"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "RWR_FAILURE_QUAD225",
            ["mm"] = 0,
        }, -- end of ["RWR_FAILURE_QUAD225"]
        ["GSH23_CHARGED_FAILURE"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "GSH23_CHARGED_FAILURE",
            ["mm"] = 0,
        }, -- end of ["GSH23_CHARGED_FAILURE"]
        ["ENG0_JAMMED"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "ENG0_JAMMED",
            ["mm"] = 0,
        }, -- end of ["ENG0_JAMMED"]
        ["ELEC_FUEL_PUMP_P2_COIL_FAILURE"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "ELEC_FUEL_PUMP_P2_COIL_FAILURE",
            ["mm"] = 0,
        }, -- end of ["ELEC_FUEL_PUMP_P2_COIL_FAILURE"]
        ["F2_BOTTOM_CYLINDER"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "F2_BOTTOM_CYLINDER",
            ["mm"] = 0,
        }, -- end of ["F2_BOTTOM_CYLINDER"]
        ["CLOCK_FAILURE"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "CLOCK_FAILURE",
            ["mm"] = 0,
        }, -- end of ["CLOCK_FAILURE"]
        ["GUN_LEFT_IN_OPEN_CIRCUIT"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "GUN_LEFT_IN_OPEN_CIRCUIT",
            ["mm"] = 0,
        }, -- end of ["GUN_LEFT_IN_OPEN_CIRCUIT"]
        ["AN_ALR69V_FAILURE_SENSOR_NOSE_LEFT"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "AN_ALR69V_FAILURE_SENSOR_NOSE_LEFT",
            ["mm"] = 0,
        }, -- end of ["AN_ALR69V_FAILURE_SENSOR_NOSE_LEFT"]
        ["PNEM_MAIN_HOSE_PERFORATED"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "PNEM_MAIN_HOSE_PERFORATED",
            ["mm"] = 0,
        }, -- end of ["PNEM_MAIN_HOSE_PERFORATED"]
        ["BOMBS_ARMING_NO_VOLATAGE_BOTH"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "BOMBS_ARMING_NO_VOLATAGE_BOTH",
            ["mm"] = 0,
        }, -- end of ["BOMBS_ARMING_NO_VOLATAGE_BOTH"]
        ["AUTOPILOT"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "AUTOPILOT",
            ["mm"] = 0,
        }, -- end of ["AUTOPILOT"]
        ["Failure_Hyd_HYD2B_Leak"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "Failure_Hyd_HYD2B_Leak",
            ["mm"] = 0,
        }, -- end of ["Failure_Hyd_HYD2B_Leak"]
        ["Failure_Elec_LeftTransformerRectifier"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "Failure_Elec_LeftTransformerRectifier",
            ["mm"] = 0,
        }, -- end of ["Failure_Elec_LeftTransformerRectifier"]
        ["GUN_RIGHT_MG131_OPEN_CIRCUIT"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "GUN_RIGHT_MG131_OPEN_CIRCUIT",
            ["mm"] = 0,
        }, -- end of ["GUN_RIGHT_MG131_OPEN_CIRCUIT"]
        ["FUEL_MAIN_FUEL_PUMP_FAILURE"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "FUEL_MAIN_FUEL_PUMP_FAILURE",
            ["mm"] = 0,
        }, -- end of ["FUEL_MAIN_FUEL_PUMP_FAILURE"]
        ["COOLANT_RADIATOR_MOTOR"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "COOLANT_RADIATOR_MOTOR",
            ["mm"] = 0,
        }, -- end of ["COOLANT_RADIATOR_MOTOR"]
        ["mfd"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "mfd",
            ["mm"] = 0,
        }, -- end of ["mfd"]
        ["AAR_47_FAILURE_SENSOR_TAIL"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "AAR_47_FAILURE_SENSOR_TAIL",
            ["mm"] = 0,
        }, -- end of ["AAR_47_FAILURE_SENSOR_TAIL"]
        ["PNEM_RADIATOR_JACK_FAILURE"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "PNEM_RADIATOR_JACK_FAILURE",
            ["mm"] = 0,
        }, -- end of ["PNEM_RADIATOR_JACK_FAILURE"]
        ["TACAN_FAILURE_TRANSMITTER"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "TACAN_FAILURE_TRANSMITTER",
            ["mm"] = 0,
        }, -- end of ["TACAN_FAILURE_TRANSMITTER"]
        ["BOMBS_TRAIN_DEFECTIVE_SWITCH"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "BOMBS_TRAIN_DEFECTIVE_SWITCH",
            ["mm"] = 0,
        }, -- end of ["BOMBS_TRAIN_DEFECTIVE_SWITCH"]
        ["GUN_RIGHT_MG151_BARREL_WORN"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "GUN_RIGHT_MG151_BARREL_WORN",
            ["mm"] = 0,
        }, -- end of ["GUN_RIGHT_MG151_BARREL_WORN"]
        ["TURNIND_POINTER_FAILS_DEFECTIVE"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "TURNIND_POINTER_FAILS_DEFECTIVE",
            ["mm"] = 0,
        }, -- end of ["TURNIND_POINTER_FAILS_DEFECTIVE"]
        ["GUN_LEFT_IN_BARREL_WORN"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "GUN_LEFT_IN_BARREL_WORN",
            ["mm"] = 0,
        }, -- end of ["GUN_LEFT_IN_BARREL_WORN"]
        ["SAR_fast"] = 
        {
            ["hh"] = 0,
            ["enable"] = false,
            ["prob"] = 100,
            ["id"] = "SAR_fast",
            ["mmint"] = 1,
            ["hidden"] = true,
            ["mm"] = 0,
        }, -- end of ["SAR_fast"]
        ["RWR_FAILURE_QUAD135"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "RWR_FAILURE_QUAD135",
            ["mm"] = 0,
        }, -- end of ["RWR_FAILURE_QUAD135"]
        ["l_conv"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "l_conv",
            ["mm"] = 0,
        }, -- end of ["l_conv"]
        ["ROCKETS_INTERVALOMETER_SEQ"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "ROCKETS_INTERVALOMETER_SEQ",
            ["mm"] = 0,
        }, -- end of ["ROCKETS_INTERVALOMETER_SEQ"]
        ["RightEngine_ShaveInOil"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "RightEngine_ShaveInOil",
            ["mm"] = 0,
        }, -- end of ["RightEngine_ShaveInOil"]
        ["CADC_FAILURE_STATIC"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "CADC_FAILURE_STATIC",
            ["mm"] = 0,
        }, -- end of ["CADC_FAILURE_STATIC"]
        ["SAR_2_101"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "SAR_2_101",
            ["mm"] = 0,
        }, -- end of ["SAR_2_101"]
        ["CTRL_TAIL_ROTOR_CONTROL_FAILURE"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["id"] = "CTRL_TAIL_ROTOR_CONTROL_FAILURE",
            ["mmint"] = 1,
            ["enable"] = false,
            ["mm"] = 0,
        }, -- end of ["CTRL_TAIL_ROTOR_CONTROL_FAILURE"]
        ["GUN_LEFT_CENTER_AMMUN_FAULT"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "GUN_LEFT_CENTER_AMMUN_FAULT",
            ["mm"] = 0,
        }, -- end of ["GUN_LEFT_CENTER_AMMUN_FAULT"]
        ["FAULTY_ROCKET_RIGHT"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "FAULTY_ROCKET_RIGHT",
            ["mm"] = 0,
        }, -- end of ["FAULTY_ROCKET_RIGHT"]
        ["CADC_FAILURE_MACH"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "CADC_FAILURE_MACH",
            ["mm"] = 0,
        }, -- end of ["CADC_FAILURE_MACH"]
        ["VHF_TOTAL_DAMAGE"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "VHF_TOTAL_DAMAGE",
            ["mm"] = 0,
        }, -- end of ["VHF_TOTAL_DAMAGE"]
        ["OIL_DILUTION_SOLENOID"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "OIL_DILUTION_SOLENOID",
            ["mm"] = 0,
        }, -- end of ["OIL_DILUTION_SOLENOID"]
        ["NOSE_AIRSPEED_INDICATOR_FAILURE"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "NOSE_AIRSPEED_INDICATOR_FAILURE",
            ["mm"] = 0,
        }, -- end of ["NOSE_AIRSPEED_INDICATOR_FAILURE"]
        ["FUEL_AUX_TANK_MINOR_LEAK"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "FUEL_AUX_TANK_MINOR_LEAK",
            ["mm"] = 0,
        }, -- end of ["FUEL_AUX_TANK_MINOR_LEAK"]
        ["BOMBS_RUST_RIGHT"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "BOMBS_RUST_RIGHT",
            ["mm"] = 0,
        }, -- end of ["BOMBS_RUST_RIGHT"]
        ["CLOGGED_FUEL_STRAINER"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "CLOGGED_FUEL_STRAINER",
            ["mm"] = 0,
        }, -- end of ["CLOGGED_FUEL_STRAINER"]
        ["OXYN_RIGHT_CONTAINER_PERFORATED"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "OXYN_RIGHT_CONTAINER_PERFORATED",
            ["mm"] = 0,
        }, -- end of ["OXYN_RIGHT_CONTAINER_PERFORATED"]
        ["ILS_FAILURE_ANT_MARKER"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "ILS_FAILURE_ANT_MARKER",
            ["mm"] = 0,
        }, -- end of ["ILS_FAILURE_ANT_MARKER"]
        ["AOASENSOR"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "AOASENSOR",
            ["mm"] = 0,
        }, -- end of ["AOASENSOR"]
        ["HYD_PUMP_2_FAIL_100"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "HYD_PUMP_2_FAIL_100",
            ["mm"] = 0,
        }, -- end of ["HYD_PUMP_2_FAIL_100"]
        ["main_reductor_chip"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "main_reductor_chip",
            ["mm"] = 0,
        }, -- end of ["main_reductor_chip"]
        ["fuel_sys_feed_tank_pump"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["id"] = "fuel_sys_feed_tank_pump",
            ["mmint"] = 1,
            ["enable"] = false,
            ["mm"] = 0,
        }, -- end of ["fuel_sys_feed_tank_pump"]
        ["GMC1AE_GYRO_FAILURE"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "GMC1AE_GYRO_FAILURE",
            ["mm"] = 0,
        }, -- end of ["GMC1AE_GYRO_FAILURE"]
        ["fs_forward_RH_leakage"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "fs_forward_RH_leakage",
            ["mm"] = 0,
        }, -- end of ["fs_forward_RH_leakage"]
        ["EXT_HYDRO_LEAK"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "EXT_HYDRO_LEAK",
            ["mm"] = 0,
        }, -- end of ["EXT_HYDRO_LEAK"]
        ["mlws"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "mlws",
            ["mm"] = 0,
        }, -- end of ["mlws"]
        ["FWD_TANK_PUMP_FAULT"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "FWD_TANK_PUMP_FAULT",
            ["mm"] = 0,
        }, -- end of ["FWD_TANK_PUMP_FAULT"]
        ["aoa_limiter"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "aoa_limiter",
            ["mm"] = 0,
        }, -- end of ["aoa_limiter"]
        ["PNEM_MACHINE_GUNS_HOSE_PERFORATED"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "PNEM_MACHINE_GUNS_HOSE_PERFORATED",
            ["mm"] = 0,
        }, -- end of ["PNEM_MACHINE_GUNS_HOSE_PERFORATED"]
        ["EGTSENSOR"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "EGTSENSOR",
            ["mm"] = 0,
        }, -- end of ["EGTSENSOR"]
        ["AN_ALR69V_FAILURE_TOTAL"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "AN_ALR69V_FAILURE_TOTAL",
            ["mm"] = 0,
        }, -- end of ["AN_ALR69V_FAILURE_TOTAL"]
        ["ELEC_DASHBOARD_HARNESS_CUT"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "ELEC_DASHBOARD_HARNESS_CUT",
            ["mm"] = 0,
        }, -- end of ["ELEC_DASHBOARD_HARNESS_CUT"]
        ["JADRO_1A_FAILURE_TOTAL"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "JADRO_1A_FAILURE_TOTAL",
            ["mm"] = 0,
        }, -- end of ["JADRO_1A_FAILURE_TOTAL"]
        ["BOMBS_ARMING_NO_VOLATAGE_RIGHT"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "BOMBS_ARMING_NO_VOLATAGE_RIGHT",
            ["mm"] = 0,
        }, -- end of ["BOMBS_ARMING_NO_VOLATAGE_RIGHT"]
        ["csf_YawDamper"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "csf_YawDamper",
            ["mm"] = 0,
        }, -- end of ["csf_YawDamper"]
        ["Failure_Fuel_ExtTankTransferC"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "Failure_Fuel_ExtTankTransferC",
            ["mm"] = 0,
        }, -- end of ["Failure_Fuel_ExtTankTransferC"]
        ["ef_shutdown"] = 
        {
            ["hh"] = 0,
            ["prob"] = 100,
            ["enable"] = false,
            ["mmint"] = 1,
            ["id"] = "ef_shutdown",
            ["mm"] = 0,
        }, -- end of ["ef_shutdown"]
    }, -- end of ["failures"]
} -- end of mission
