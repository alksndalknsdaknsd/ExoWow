function ExoWow:SetOverrideBinding(key, command)
  return SetOverrideBinding(ExoWow.frame, true, key, command);
end

function ExoWow:SetOverrideBindingClick(key, button)
  return SetOverrideBindingClick(ExoWow.frame, true, key, button);
end
