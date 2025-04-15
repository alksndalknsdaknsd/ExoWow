function ExoWow:ConfigureDruidBindings()
  if ExoWow.spec == 'Restoration' then
    ExoWow:SetOverrideBindingClick("V", "BT4Button49");
    ExoWow:SetOverrideBindingClick("SHIFT-V", "BT4Button50");
    ExoWow:SetOverrideBindingClick("E", "BT4Button51");
    ExoWow:SetOverrideBindingClick("ALT-4", "BT4Button52");
    -- ExoWow:SetOverrideBindingClick("ALT-SHIFT-4", "BT4Button52");
    ExoWow:SetOverrideBindingClick("ALT-SHIFT-5", "BT4Button53");
    ExoWow:SetOverrideBindingClick("F", "BT4Button54");
    ExoWow:SetOverrideBindingClick("X", "BT4Button55");
    ExoWow:SetOverrideBindingClick("SHIFT-F", "BT4Button57");
    ExoWow:SetOverrideBindingClick("ALT-SHIFT-9", "BT4Button57");
    ExoWow:SetOverrideBindingClick("ALT-SHIFT-0", "BT4Button58");
    ExoWow:SetOverrideBindingClick("ALT-SHIFT--", "BT4Button59");
    ExoWow:SetOverrideBindingClick("Q", "BT4Button60");
    ExoWow:SetOverrideBindingClick("SHIFT-BUTTON3", "BT4Button71");

    ExoWow:SetOverrideBindingClick("ALT-SHIFT-7", "BT4Button43");
    ExoWow:SetOverrideBindingClick("SHIFT-C", "BT4Button44");
    ExoWow:SetOverrideBindingClick("C", "BT4Button45");
    ExoWow:SetOverrideBindingClick("ALT-C", "BT4Button45");
  elseif ExoWow.spec == 'Feral' then
    ExoWow:SetOverrideBindingClick("V", "BT4Button49");
    ExoWow:SetOverrideBindingClick("SHIFT-V", "BT4Button50");
    ExoWow:SetOverrideBindingClick("E", "BT4Button51");
    ExoWow:SetOverrideBindingClick("F", "BT4Button54");
  end
end
