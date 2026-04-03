
local expiry = 1775319963
if os.time() > expiry then 
    showMessage('Script da het han! Vui long thue lai.')
    memoryrecord_check(memrec, false) 
    return 
end
loadstring(getInternet().getURL('https://raw.githubusercontent.com/ngtrhai3-lgtm/MyScripts/main/database/TheBeta/scripts/2_en_va_dis_0_enable.lua'))()