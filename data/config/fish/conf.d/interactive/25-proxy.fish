# proxyon/proxyoff — source the proxy scripts so env changes apply to this shell.
function proxyon
    command proxyon $argv | source
end

function proxyoff
    command proxyoff $argv | source
end
