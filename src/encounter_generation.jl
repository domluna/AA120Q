function generate_trajectories!(arr::Vector{Trajectory}, model::EncounterModel, params::EncounterSimParams=DEFAULT_SIM_PARAMS)
    for i in 1 : length(arr)
        arr[i] = rand(model, params)
    end
    arr
end
function generate_trajectories(
    n::Int,
    model::EncounterModel,
    params::EncounterSimParams=DEFAULT_SIM_PARAMS
    )

    generate_trajectories!(Array{Trajectory}(n), model, params)
end

function generate_encounters!(
    arr::Vector{Encounter},
    model::EncounterModel,
    cas::CollisionAvoidanceSystem,
    params::EncounterSimParams=DEFAULT_SIM_PARAMS,
    )

    for i in 1 : length(arr)
        arr[i] = rand(model, cas, params)
    end
    arr
end
function generate_encounters(
    n::Int,
    model::EncounterModel,
    cas::CollisionAvoidanceSystem,
    params::EncounterSimParams=DEFAULT_SIM_PARAMS
    )

    generate_encounters!(Array{Encounter}(n), model, cas, params)
end