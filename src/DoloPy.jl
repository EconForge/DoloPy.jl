module DoloPy

using PyCall
greet() = print("Hello World!")

const dolang = PyNULL()
const dolo = PyNULL()

function __init__()
    copy!( dolang, pyimport("dolang"))
    copy!( dolo, pyimport("dolo"))
end

end # module
