function ExoWow:ConfigureRogueBindings()
  if ExoWow.spec == 'Assassination' then
    ExoWow:SetOverrideBindingClick('ALT-SHIFT-1', 'BT4Button49')
    ExoWow:SetOverrideBindingClick('ALT-SHIFT-2', 'BT4Button50')
    ExoWow:SetOverrideBindingClick('ALT-SHIFT-3', 'BT4Button51')
    ExoWow:SetOverrideBindingClick('ALT-SHIFT-4', 'BT4Button52')
    ExoWow:SetOverrideBindingClick('ALT-SHIFT-5', 'BT4Button53')

    ExoWow:SetOverrideBindingClick('E', 'BT4Button29')
    ExoWow:SetOverrideBindingClick('F', 'BT4Button55')

    ExoWow:SetOverrideBindingClick('C', 'BT4Button36')
    ExoWow:SetOverrideBindingClick('SHIFT-C', 'BT4Button30')

    ExoWow:SetOverrideBindingClick('X', 'BT4Button58')
    ExoWow:SetOverrideBindingClick('V', 'BT4Button59')
    ExoWow:SetOverrideBindingClick('Q', 'BT4Button60')
  elseif ExoWow.spec == 'Subtlety' then
    ExoWow:SetOverrideBindingClick('ALT-1', 'BT4Button49')
    ExoWow:SetOverrideBindingClick('ALT-2', 'BT4Button50')
    ExoWow:SetOverrideBindingClick('E', 'BT4Button51')
    ExoWow:SetOverrideBindingClick('R', 'BT4Button52')
    ExoWow:SetOverrideBindingClick('F', 'BT4Button53')
  end
end
