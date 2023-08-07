Noclip = false
function _MenuWave:OnNoclip()
    if Noclip then
        NoClip(false)
        Noclip = false
    else
        Noclip = true
        NoClip(true)
    end
end
NoClipSpeed = 1.0
function getCamDirection()
    local heading = GetGameplayCamRelativeHeading() + GetEntityHeading(PlayerPedId())
    local pitch = GetGameplayCamRelativePitch()
    local coords = vector3(-math.sin(heading * math.pi / 180.0), math.cos(heading * math.pi / 180.0), math.sin(pitch * math.pi / 180.0))
    local len = math.sqrt((coords.x * coords.x) + (coords.y * coords.y) + (coords.z * coords.z))

    if len ~= 0 then
        coords = coords / len
    end
    return coords
end

RegisterNetEvent("togglenoclip")
AddEventHandler("togglenoclip", function()
    NoClip(not isNoClip)
end)

function NoClip(bool)
    isNoClip = bool
    if isNoClip then
        SetEntityInvincible(PlayerPedId(), true)
        Citizen.CreateThread(function()
            while isNoClip do
                Wait(1)
                local pCoords = GetEntityCoords(PlayerPedId(), false)
                local camCoords = getCamDirection()
                SetEntityVelocity(PlayerPedId(), 0.01, 0.01, 0.01)
                SetEntityCollision(PlayerPedId(), 0, 1)
                --FreezeEntityPosition(PlayerPedId(), true)

                if IsControlPressed(0, 32) then
                    pCoords = pCoords + (NoClipSpeed * camCoords)
                end

                if IsControlPressed(0, 269) then
                    pCoords = pCoords - (NoClipSpeed * camCoords)
                end

                if IsDisabledControlJustPressed(1, 15) then
                    NoClipSpeed = NoClipSpeed + 0.2
                end
                if IsDisabledControlJustPressed(1, 14) then
                    NoClipSpeed = NoClipSpeed - 0.2
                    if NoClipSpeed < 0 then
                        NoClipSpeed = 0
                    end
                end
                SetEntityCoordsNoOffset(PlayerPedId(), pCoords, true, true, true)
                SetEntityVisible(PlayerPedId(), 0, 0)

            end
           -- FreezeEntityPosition(PlayerPedId(), false)
            SetEntityVisible(PlayerPedId(), 1, 0)
            SetEntityCollision(PlayerPedId(), 1, 1)
        end)
    else
        SetEntityInvincible(PlayerPedId(), false)
    end
end