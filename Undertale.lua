-- Undertale Texture Pack Loader for Delta
-- Supports DETERMINATION and MIRC
-- Safe to run before or after entering an arena

local ENV = getgenv()
local PACK = ENV.PACK or "DETERMINATION"
local BASE = "https://raw.githubusercontent.com/prism658/"

local packs = {
    DETERMINATION = {
        {{12187323909,12187320363,12187354260,12187342816,12187280273,12187303601,12187262242,12187288714,12187341500,12187271237,12187341020},"@undertale-txtpack/main/deltarune.ttf"},
        {{6384899588},"@undertale-txtpack/main/AUDIO_APPEARANCE.wav"},
        {{8483887957},"@undertale-txtpack/main/snd_weaponpull.wav"},
        {{16537337310,16537449730},"@undertale-txtpack/main/snd_break1.wav"},
        {{7658055825},6372755229},
        {{17016581922},"@undertale-txtpack/main/break2.ogg"},
        {{16810321565},"@undertale-txtpack/main/snd_closet_impact.ogg"},
        {{16770456156},"@undertale-txtpack/main/mus_sfx_a_lithit.wav"},
        {{177266782},"@undertale-txtpack/main/snd_select.wav"},
        {{16492958314},"@undertale-txtpack/main/snd_scytheburst.wav"},
        {{16802957270},"@undertale-txtpack/main/heartbroken.png"},
        {{103035811146294},"@undertale-txtpack/main/snd_b.wav"},
        {{81461991645938},"@undertale-txtpack/main/lvl.png"},
        {{16810041280},"@undertale-txtpack/main/mus_sfx_abreak.wav"},
        {{16530229695,16530229541,16530229616},"@undertale-txtpack/main/mus_sfx_gigapunch.wav"},
        {{17138490999},"@undertale-txtpack/main/heal.ogg"},
        {{13854780042},"@undertale-txtpack/main/heartleft.png"},
        {{13854780213},"@undertale-txtpack/main/heartright.png"},
        {{17803962335},"@undertale-txtpack/main/undlogo.png"},
        {{18525513345},"@undertale-txtpack/main/snd_dimbox.wav"},
        {{13110130082},"@undertale-txtpack/main/snd_credit_s.wav"},
        {{17153811469},"@undertale-txtpack/main/snd_breakc.wav"},
        {{13188153054,13188242420,13220167472,13220167337},"@undertale-txtpack/main/lvl.png"},
        {{17826470563},"@undertale-txtpack/main/Finale.ogg"},
        {{17026600996},"@undertale-txtpack/main/snd_heavydamage.wav"},
        {{17467242617},"@undertale-txtpack/main/sdfinal.ogg"},
        {{18221725850,18239670056,18221726246},"@undertale-txtpack/main/snd_dumbvictory.wav"},
        {{17813065011,17813065464,12099785239},false},
        {{2108482005,14147881792,135908632589654,84214501374682,10196550937,12261809766,2108545280,10196550667,14147882149,103020541883227,89972436184102,12261813110,14147883091,2108482395,10196550128,14147882405,2108482542,10196549902,14147881297,72960281658487,92138082970751,2108482676,10196567794,12261813678,14147882761,10196550367,2108482231},7658055825},
        {{127338559130032,16294586406,75156669118637,93477262732302},"@undertale-txtpack/main/SyneMono-Regular.ttf"},
        {{17697682466,17733314783},"@undertale-txtpack/main/Hotel.mp3"},
        {{133917828562858,121503061771505},"@undertale-txtpack/main/58a20c59c8dd3432c6fa8221.png"},
        {{133793956251748},"@undertale-txtpack/main/Archnemisis_heart_1.png"},
        {{116941545385923},"@undertale-txtpack/main/Nemisis_heart_1.png"},
        {{106623367501544,131795064007344,73543520622815},"@undertale-txtpack/main/f.png"},
        {{80716950169934},"@undertale-txtpack/main/Silver_1_heart.png"},
        {{136100661820261},"@undertale-txtpack/main/silver_2_heart.png"},
        {{107898816876115},"@undertale-txtpack/main/silver_3_heart.png"},
        {{134520747948636},"@undertale-txtpack/main/Gold_1_heart.png"},
        {{114166096331502},"@undertale-txtpack/main/Gold_2_heart.png"},
        {{90039594400813},"@undertale-txtpack/main/Gold_3_heart.png"},
        {{133903971285645},"@undertale-txtpack/main/Plat_1_heart.png"},
        {{82834564754747},"@undertale-txtpack/main/Plat_2_heart.png"},
        {{73345783863790},"@undertale-txtpack/main/Plat_3_heart.png"},
        {{113997689031026},"@undertale-txtpack/main/Diam_1_heart.png"},
        {{88059506918419},"@undertale-txtpack/main/Diam_2_heart.png"},
        {{112183171942172},"@undertale-txtpack/main/Diam_3_heart.png"},
        {{104871954739030},"@undertale-txtpack/main/Onyx_1_heart.png"},
        {{109012386782238},"@undertale-txtpack/main/Onyx_2_heart.png"},
        {{127982903682334},"@undertale-txtpack/main/Onyx_3_heart.png"},
        {{106623367501544},"@undertale-txtpack/main/bronze_1_heart_fixed_2_times.png"},
        {{131795064007344},"@undertale-txtpack/main/bronze_2_heart.png"},
        {{17175092502,17094014569},"@undertale-txtpack/main/streak.png"},
        {{111599878354131},"@undertale-txtpack/main/unranked_heart.png"},
    },

    MIRC = {
        {{17138490999},1721952882},
        {{103035811146294},"@Resources-fleasion/main/allclear.base.ogg"},
        {{16810041280},"@Resources-fleasion/main/allclear.base.ogg"},
        {{16810321565},"@Resources-fleasion/main/allclear.base.ogg"},
        {{16770456156,16492958314},2428506580},
        {{16537337310,16537449730},70643163489676},
        {{17826470563},"@Resources-fleasion/main/theeyellow.ogg"},
        {{15109829804},109303978243933},
        {{13220167337,13188242420,13220167472,13188153054,13188242287},false},
        {{7658055825},"@Resources-fleasion/main/grods.png"},
        {{18221725850,18239670056,18221726246},"@Resources-fleasion/main/winnerwinner.ogg"},
        {{18239670367},false},
        {{17803962335},"@Resources-fleasion/main/attachment.png"},
        {{81461991645938},16834713626},
        {{99135525400251},7712639823},
        {{17026600996},"@Resources-fleasion/main/showscore.base.ogg"},
        {{16530229616},"@Resources-fleasion/main/kill1.ogg"},
        {{16530229541},"@Resources-fleasion/main/kill2.ogg"},
        {{16530229695},"@Resources-fleasion/main/kill3.ogg"},
        {{133917828562858},"@Resources-fleasion/main/mine.webp"},
        {{2108482005,14147881792,135908632589654,84214501374682,10196550937,12261809766},"@Resources-fleasion/main/sky512_bk.tex"},
        {{17813065011,17813065464,12099785239},false},
        {{133793956251748},"@Resources-fleasion/main/top200xrank.png"},
        {{116941545385923},"@Resources-fleasion/main/nemx.png"},
        {{106623367501544,131795064007344,73543520622815},"@Resources-fleasion/main/f.png"},
        {{80716950169934},"@Resources-fleasion/main/d-.png"},
        {{136100661820261},"@Resources-fleasion/main/d.png"},
        {{107898816876115},"@Resources-fleasion/main/d+.png"},
        {{134520747948636},"@Resources-fleasion/main/c-.png"},
        {{114166096331502},"@Resources-fleasion/main/c.png"},
        {{90039594400813},"@Resources-fleasion/main/c+.png"},
        {{133903971285645},"@Resources-fleasion/main/b-.png"},
        {{82834564754747},"@Resources-fleasion/main/b.png"},
        {{73345783863790},"@Resources-fleasion/main/b+.png"},
        {{113997689031026},"@Resources-fleasion/main/a-.png"},
        {{88059506918419},"@Resources-fleasion/main/a.png"},
        {{112183171942172},"@Resources-fleasion/main/a+.png"},
        {{104871954739030},"@Resources-fleasion/main/s.png"},
        {{109012386782238},"@Resources-fleasion/main/ss.png"},
        {{127982903682334},"@Resources-fleasion/main/u.png"},
        {{17175092502,17094014569},72106446453934},
        {{99115398611290},"@Resources-fleasion/main/icbtw.png"},
        {{8483887957},"@Resources-fleasion/main/clearspin.base.ogg"},
        {{6384899588},"@Resources-fleasion/main/lego-build.mp3"},
        {{16737738420},"@Resources-fleasion/main/Sliding.mp3"},
        {{70643163489676},17405655409},
        {{91547731028928},"@Resources-fleasion/main/studio-audience-awwww-sound-fx.mp3"},
        {{138975587469438},"@Resources-fleasion/main/final-fantasy-vii-victory-fanfare-1.mp3"},
        {{13854780042},false},
        {{13854780213},"@Resources-fleasion/main/logo.png"},
        {{17697682466,17733314783},"@Resources-fleasion/main/kuchu-toshi.mp3"},
        {{136887158756561},false},
        {{177266782},"@Resources-fleasion/main/menuclick.base.ogg"},
        {{18525513345},"@Resources-fleasion/main/achievement_3.base.ogg"},
        {{16802957270},130413597135596},
        {{13110130082},"@Resources-fleasion/main/target.base.ogg"},
        {{17467242617},"@Resources-fleasion/main/bluer.ogg"},
        {{17016581922},"@Resources-fleasion/main/elimin.mp3"},
    }
}

local selectedPack = packs[PACK]
if not selectedPack then
    warn("[TexturePack] Unknown pack: " .. tostring(PACK))
    return
end

local OK = {
    png=true, jpg=true, jpeg=true,
    ogg=true, mp3=true, wav=true, webp=true
}

local PROPS = {
    Sound = {"SoundId"},
    ImageLabel = {"Image"},
    ImageButton = {"Image"},
    Decal = {"Texture"},
    Texture = {"Texture"},
    MeshPart = {"TextureID"},
    Sky = {
        "SkyboxBk", "SkyboxDn", "SkyboxFt",
        "SkyboxLf", "SkyboxRt", "SkyboxUp"
    },
}

local map = {}

for _, entry in ipairs(selectedPack) do
    local replacement = entry[2]

    if type(replacement) == "string"
        and replacement:sub(1, 1) == "@" then
        replacement = BASE .. replacement:sub(2)
    end

    for _, assetId in ipairs(entry[1]) do
        map[tostring(assetId)] = replacement
    end
end

local cache = {}

local function fetch(url)
    if cache[url] ~= nil then
        return cache[url] or nil
    end

    local extension = (url:match("%.([%w]+)$") or ""):lower()
    if not OK[extension] then
        cache[url] = false
        return nil
    end

    local success, data = pcall(function()
        return game:HttpGet(url)
    end)

    if not success or type(data) ~= "string" or #data == 0 then
        cache[url] = false
        return nil
    end

    local filename = "UTP_" ..
        url:gsub("[^%w]", "_"):sub(-65) .. "." .. extension

    local saved, asset = pcall(function()
        writefile(filename, data)
        return getcustomasset(filename)
    end)

    if saved and asset then
        cache[url] = asset
        return asset
    end

    cache[url] = false
    return nil
end

local function getAssetId(value)
    value = tostring(value)

    return value:match("rbxassetid://(%d+)")
        or value:match("[?&]id=(%d+)")
end

local function apply(instance, property)
    local success, current = pcall(function()
        return tostring(instance[property])
    end)

    if not success then
        return
    end

    if current:sub(1, 11) == "rbxasset://" then
        return
    end

    local id = getAssetId(current)
    if not id then
        return
    end

    local rule = map[id]
    if rule == nil then
        return
    end

    -- false means leave the game's original asset unchanged.
    if rule == false then
        return
    end

    if type(rule) == "number" then
        pcall(function()
            instance[property] = "rbxassetid://" .. rule
        end)
        return
    end

    local originalValue = current

    task.spawn(function()
        local asset = fetch(rule)
        if not asset then
            return
        end

        pcall(function()
            if instance.Parent
                and tostring(instance[property]) == originalValue then
                instance[property] = asset
            end
        end)
    end)
end

-- Avoid duplicate property listeners if manually re-executed.
local hookState = ENV.__UndertaleTexturePackHookState

if type(hookState) ~= "table" then
    hookState = setmetatable({}, {__mode = "k"})
    ENV.__UndertaleTexturePackHookState = hookState
end

local function hook(instance)
    local properties = PROPS[instance.ClassName]
    if not properties then
        return
    end

    local seen = hookState[instance]
    if not seen then
        seen = {}
        hookState[instance] = seen
    end

    for _, property in ipairs(properties) do
        apply(instance, property)

        if not seen[property] then
            seen[property] = true

            instance:GetPropertyChangedSignal(property):Connect(function()
                apply(instance, property)
            end)
        end
    end
end

local roots = {
    game:GetService("Workspace"),
    game:GetService("Lighting"),
    game:GetService("SoundService"),
    game:GetService("ReplicatedStorage"),
}

local players = game:GetService("Players")
local player = players.LocalPlayer

if player then
    table.insert(roots, player:WaitForChild("PlayerGui"))
end

pcall(function()
    table.insert(roots, game:GetService("CoreGui"))
end)

for _, root in ipairs(roots) do
    for _, descendant in ipairs(root:GetDescendants()) do
        hook(descendant)
    end

    root.DescendantAdded:Connect(function(descendant)
        hook(descendant)
    end)
end

print("[TexturePack] loaded " .. PACK)