path = {}

function path:addLove2dHelper()
    package.path = 
    string.format("%s;/home/%s/love2d-helper/?.lua", package.path, os.getenv("USER"))
end


return path