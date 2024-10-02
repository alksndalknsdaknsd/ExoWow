function ExoWow:ConfigureHunterBindings()
  if ExoWow.spec == 'Marksmanship' then
    ExoWow:SetOverrideBindingClick("ALT-1", "BT4Button49")
    ExoWow:SetOverrideBindingClick("ALT-2", "BT4Button50")
    ExoWow:SetOverrideBindingClick("ALT-SHIFT-3", "BT4Button51")

    ExoWow:SetOverrideBindingClick("ALT-SHIFT-7", "BT4Button55")
    ExoWow:SetOverrideBindingClick("ALT-SHIFT-8", "BT4Button56")

    ExoWow:SetOverrideBindingClick("Q", "BT4Button60")
    ExoWow:SetOverrideBindingClick("V", "BT4Button59")
    ExoWow:SetOverrideBindingClick("C", "BT4Button58")
    ExoWow:SetOverrideBindingClick("X", "BT4Button57")
    ExoWow:SetOverrideBindingClick("F", "BT4Button160")
  end
end
