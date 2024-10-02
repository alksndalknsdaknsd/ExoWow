function ExoWow:ConfigureWarlockBindings()
  if ExoWow.spec == 'Affliction' then
    ExoWow:SetOverrideBindingClick("ALT-1", "BT4Button49")
    ExoWow:SetOverrideBindingClick("ALT-2", "BT4Button50")
    ExoWow:SetOverrideBindingClick("ALT-3", "BT4Button51")
    ExoWow:SetOverrideBindingClick("E", "BT4Button52")
    ExoWow:SetOverrideBindingClick("F", "BT4Button53")
    ExoWow:SetOverrideBindingClick("X", "BT4Button54")

    ExoWow:SetOverrideBindingClick("Q", "BT4Button60")
    ExoWow:SetOverrideBindingClick("V", "BT4Button59")
    ExoWow:SetOverrideBindingClick("C", "BT4Button58")
  end
end
