function ExoWow:ConfigureEvokerBindings()
  if ExoWow.spec == 'Devastation' then
    ExoWow:SetOverrideBindingClick("ALT-1", "BT4Button49")
    ExoWow:SetOverrideBindingClick("ALT-2", "BT4Button50")
    ExoWow:SetOverrideBindingClick("ALT-3", "BT4Button51")

    ExoWow:SetOverrideBindingClick("SHIFT-C", "BT4Button25")
    ExoWow:SetOverrideBindingClick("X", "BT4Button57")
    ExoWow:SetOverrideBindingClick("V", "BT4Button58")
    ExoWow:SetOverrideBindingClick("SHIFT-V", "BT4Button59")
    ExoWow:SetOverrideBindingClick("Q", "BT4Button60")
  elseif ExoWow.spec == 'Preservation' then
    ExoWow:SetOverrideBindingClick("E", "BT4Button49")
    ExoWow:SetOverrideBindingClick("F", "BT4Button50")

    ExoWow:SetOverrideBindingClick("C", "BT4Button57")
    ExoWow:SetOverrideBindingClick("V", "BT4Button58")
    ExoWow:SetOverrideBindingClick("SHIFT-Q", "BT4Button59")
    ExoWow:SetOverrideBindingClick("Q", "BT4Button60")

    ExoWow:SetOverrideBindingClick("SHIFT-C", "BT4Button25")
  end
end
