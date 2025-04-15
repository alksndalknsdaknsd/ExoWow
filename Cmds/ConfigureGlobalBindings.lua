function ExoWow:SetGlobalBindingMacro(key, macrotext)
  if not ExoWow.globalMacros then
    ExoWow.globalMacros = {};
  end
  if not ExoWow.globalMacros[key] then
    ExoWow.globalMacros[key] = CreateFrame("Button", "ExoWowBtn" .. key, nil, "SecureActionButtonTemplate");
  end
  ExoWow.globalMacros[key]:SetAttribute("type", "macro");
  ExoWow.globalMacros[key]:SetAttribute("macrotext", macrotext);
  ExoWow.globalMacros[key]:RegisterForClicks("AnyUp", "AnyDown");
  ExoWow:SetOverrideBindingClick(key, "ExoWowBtn" .. key);
end

function ExoWow:SetGlobalBindingScript(key, fn)
  if not ExoWow.globalScripts then
    ExoWow.globalScripts = {};
  end
  if not ExoWow.globalScripts[key] then
    ExoWow.globalScripts[key] = CreateFrame("Frame");
    ExoWow.globalScripts[key]:SetScript("OnEvent", fn);
  end
end

local globalMacros = {
  -- ["BUTTON3"] = "/ping",
  ["SHIFT-Z"] = [[
/use [noflying] !Traveler's Tundra Mammoth
]],
  ["Z"] = [[
/use [mod:alt,nomounted] !Wandering Ancient
/use [nomounted,noflyable] Sarge's Tale
/use [nomounted] Ruby Panther
/cast [mounted,noflying] Skyward Ascent
/cast [mounted,flying] Surge Forward
]],

  ["BUTTON3"] = "/ping [@player] assist",
  ["CTRL-BUTTON3"] = "/focus [@mouseover,exists]",

  ["PRINTSCREEN"] = "",
  ["F14"] = "/exo bg",
  ["F15"] = "/exo bg.epic",
  ["F16"] = "/dev",
  ["F17"] = "/lua",
  ["F18"] = "/fstack",
  ["SHIFT-F18"] = "/logout",
  ["F19"] = [[
/exo ui
/exo bindings
  ]],
  ["SHIFT-F19"] = "/reload",

  ["NUMPAD0"] = "",
  ["NUMPADDECIMAL"] = [[/run print(GetBindingKey("JUMP"))]],
  ["NUMPAD1"] = "",
  ["NUMPAD2"] = "",
  ["NUMPAD3"] = "",
  ["NUMPAD4"] = "",
  ["NUMPAD5"] = "",
  ["NUMPAD6"] = "",
  ["NUMPAD7"] = "/tmw",
  ["NUMPAD8"] = "/wa",
  ["NUMPAD9"] = "/ec",
  -- ["NUMPADLOCK"] = "",
  ["NUMPADEQUALS"] = "/plater",
  ["NUMPADDIVIDE"] = "",

  ["NUMPADMULTIPLY"] = "",
  ["NUMPADMINUS"] = "/inspect",
  ["SHIFT-NUMPADPLUS"] = "/exo skirmish",

};

function ExoWow:ConfigureGlobalBindings()
  -- ExoWow:Print("Configuring global bindings");
  for key, macrotext in pairs(globalMacros) do
    ExoWow:SetGlobalBindingMacro(key, macrotext);
  end
end
