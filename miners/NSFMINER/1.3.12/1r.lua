_G.KaitunConfig = {
    ["Start Farm"] = true,
    -- all melee is already do with it self
    -- auto activate list ( Auto Do List )
    --[[ //auto activate list//
        GodHuman, all melee
        get god human material
        random fruit , store fruit
        smart code redeem

        / sea 1
        auto go sea 2
        skip farm level
        saber
        kill Greybeard (bisento v2)

        / sea 2
        auto go sea 3
        kill darkbeard
        race v2
        bartilo

        / sea 3
        kill boss

        dough awaking
        CDK
        elite hunter
    ]]
    ["Auto Fruit"] = true, -- tween to fruit

    ["RedeemCode Level"] = 2,

    ["White Sreen"] = false,

    ["LimitFragment"] = 100000,

    -- item

    ["Buy Base Sword"] = false,
    ["Boss List"] = { -- put boss for farm item ---pls dont put boss that have requirement (like Saber boss dofrmigo) because it already kill if can
    
        "Darkbeard [Lv. 1000] [Raid Boss]",
        "Cursed Captain [Lv. 1325] [Raid Boss]",

        "Captain Elephant [Lv. 1875] [Boss]",
        "Soul Reaper [Lv. 2100] [Raid Boss]",
        "Dough King [Lv. 2300] [Raid Boss]",
        "Cake Prince [Lv. 2300] [Raid Boss]",
        "rip_indra True Form [Lv. 5000] [Raid Boss]",
        "Beautiful Pirate [Lv. 1950] [Boss]",
        "Cake Queen [Lv. 2175] [Boss]"
    },

    -- sea 1
    ["PlayerHunter"] = true, -- will do skip lvl too
    ["Player Hunter Hop"] = false,

    -- sea 2
    ["Auto Factory"] = true,
    ["Rengoku"] = false,
    ["Sea 3 Hop"] = false, -- hop to find fruit
    ["Race v3"] = true,
    ["Instance V3"] = true, -- will not go sea 3 if not got race v3
    
    -- sea 3
    ["CDK"] = false,
    ["Tushita"] = false,
    ["Yama"] = false,
    ["Soul Guitar"] = false,

    -- Add On
    ["White Screen"] = true,
    ["Farm When Lvl Max"] = "Bone", -- Bone , Katakuri , Coco
    ["Race Lock"] = "Human,Mink", -- Human , Mink , Fishman , put other mean not lock
    ["FPS Cap"] = 15,

    ["Buy Haki Color"] = true, -- will buy only Snow White,Pure Red,Winter Sky
    ["Auto Legendary Sword"] = false,
    ["Auto TTK"] = false,

    -- Sword
    ["Mastery Sword"] = false, -- will farm mastery
    ["Select Rarity"] = {"Mythical","Legendary"}, -- Common , Uncommon,Rare,Legendary,Mythical

    -- Fruit
    ["Select Main Devil Fruit Sniper"] = {"Ice-Ice","Sand-Sand","Dark-Dark","Quake-Quake","Light-Light","Dough-Dough"}, -- if have will eat
    ["Select Sub Devil Fruit Sniper"] = {"Dragon-Dragon","Kitsune-Kitsune"}, -- will eat if not have main fruit
    ["Allow Eat Fruit In Inventory"] = false,
    ["Start Sniper"] = true,
    
    -- Fruit2
    ["Safe Fruit"] = {"Dragon-Dragon","Kitsune-Kitsune"}, -- will not use this fruit to raids or anyting

    -- Webhook
    ["Link Webhook"] = "",
    ["Start Webhook"] = false,
    ["Webhook Mode"] = "Send Every .. min", -- "Send Every .. min","Send On Level Max","Send On Level Max And Every .. min"
    ["Webhook Minute"] = 10, -- mean 10 Minute
    ["tag user"] = false,
    ["Send Test Webhook"] = false,
}
_G.Key = "VMF4E-JCVDR-4KR2R"
_G.DiscordId = "1029317109303496735"
loadstring(game:HttpGet("https://raw.githubusercontent.com/Natsuhanaki/Royx_PC/main/loader.lua"))();
