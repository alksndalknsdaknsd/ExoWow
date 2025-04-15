function ExoWow:SetOverrideBinding(key, command)
  return SetOverrideBinding(ExoWow.frame, true, key, command);
end

function ExoWow:SetOverrideBindingClick(key, button)
  return SetOverrideBindingClick(ExoWow.frame, true, key, button);
end

--  NOT WORKING
-- function ExoWow:UpsertMacro(id, name, --[[string]] body, icon)
--   local nGlobalMacros, nCharMacros = GetNumMacros();

--   if id > 120 then
--     if nCharMacros < id - 120 then
--       for j = nCharMacros + 1, id - 120 do
--         CreateMacro("X." .. j, 134400, "", true);
--       end
--     end
--   else
--     if nGlobalMacros < id then
--       for j = nGlobalMacros + 1, id do
--         CreateMacro("X." .. j, 134400, "");
--       end
--     end
--   end

--   EditMacro(id, name, icon ~= nil and icon or 134400, body);
-- end
