
local expiry = 1775319963
if os.time() > expiry then 
    showMessage('Script da het han! Vui long thue lai.')
    memoryrecord_check(memrec, false) 
    return 
end
loadstring(getInternet().getURL('https://raw.githubusercontent.com/ngtrhai3-lgtm/MyScripts/main/database/TheBeta/scripts/dis_6_enable.lua'))()