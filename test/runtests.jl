using Test

@testset "dolo" begin

    import DoloPy: dolo

    model = dolo.yaml_import("../rbc.yaml")

    sol = dolo.time_iteration(model, maxit=5)

    dr = sol.dr

    m = model.calibration.grouped["exogenous"]
    s = model.calibration.grouped["states"]
    x = model.calibration.grouped["controls"]
    p = model.calibration.grouped["parameters"]

    xx = dr(m,s)

    f = model.functions["arbitrage"]
    
    res = f(m,s,x,m,s,x,p)

    println(res)

end