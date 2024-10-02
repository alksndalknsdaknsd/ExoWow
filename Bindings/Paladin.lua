function ExoWow:ConfigurePaladinBindings()
  if ExoWow.spec == 'Holy' then
    ExoWow:SetOverrideBindingClick("E", "BT4Button49")
    ExoWow:SetOverrideBindingClick("R", "BT4Button50")
    ExoWow:SetOverrideBindingClick("F", "BT4Button57")
    ExoWow:SetOverrideBindingClick("V", "BT4Button58")
    ExoWow:SetOverrideBindingClick("SHIFT-V", "BT4Button59")
    ExoWow:SetOverrideBindingClick("Q", "BT4Button60")
    ExoWow:SetOverrideBindingClick("C", "BT4Button25")
    ExoWow:SetOverrideBindingClick("SHIFT-C", "BT4Button26")
  end
end
