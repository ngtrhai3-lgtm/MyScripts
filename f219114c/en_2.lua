local targetProcess = "MiniGameApp.exe"
local processList = getProcessList()
for pid, name in pairs(processList) do
    if name:lower() == targetProcess:lower() then
        openProcess(pid)

deactivate()
return
end
end