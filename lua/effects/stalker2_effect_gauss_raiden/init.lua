function EFFECT:Init(data)
    self.Weapon = data:GetEntity()
    self.Owner = self.Weapon:GetOwner()
    
    if IsValid(self.Owner) and self.Owner:IsPlayer() then
        self.ViewModel = self.Owner:GetViewModel()
        
        if IsValid(self) and IsValid(self.ViewModel) then
			timer.Simple(0.0, function() if IsValid(self) and IsValid(self.ViewModel) then ParticleEffectAttach("gauss_gun_raiden_0", PATTACH_POINT_FOLLOW, self.ViewModel, 5) end end)
			timer.Simple(0.0, function() if IsValid(self) and IsValid(self.ViewModel) then ParticleEffectAttach("gauss_gun_raiden_1", PATTACH_POINT_FOLLOW, self.ViewModel, 5) end end)
			timer.Simple(0.0, function() if IsValid(self) and IsValid(self.ViewModel) then ParticleEffectAttach("gauss_gun_raiden_2", PATTACH_POINT_FOLLOW, self.ViewModel, 5) end end)
			timer.Simple(0.06, function() if IsValid(self) and IsValid(self.ViewModel) then ParticleEffectAttach("gauss_gun_raiden_0", PATTACH_POINT_FOLLOW, self.ViewModel, 6) end end)
			timer.Simple(0.06, function() if IsValid(self) and IsValid(self.ViewModel) then ParticleEffectAttach("gauss_gun_raiden_1", PATTACH_POINT_FOLLOW, self.ViewModel, 6) end end)
			timer.Simple(0.06, function() if IsValid(self) and IsValid(self.ViewModel) then ParticleEffectAttach("gauss_gun_raiden_2", PATTACH_POINT_FOLLOW, self.ViewModel, 6) end end)
			timer.Simple(0.12, function() if IsValid(self) and IsValid(self.ViewModel) then ParticleEffectAttach("gauss_gun_raiden_0", PATTACH_POINT_FOLLOW, self.ViewModel, 7) end end)
			timer.Simple(0.12, function() if IsValid(self) and IsValid(self.ViewModel) then ParticleEffectAttach("gauss_gun_raiden_1", PATTACH_POINT_FOLLOW, self.ViewModel, 7) end end)
			timer.Simple(0.12, function() if IsValid(self) and IsValid(self.ViewModel) then ParticleEffectAttach("gauss_gun_raiden_2", PATTACH_POINT_FOLLOW, self.ViewModel, 7) end end)
			timer.Simple(0.18, function() if IsValid(self) and IsValid(self.ViewModel) then ParticleEffectAttach("gauss_gun_raiden_0", PATTACH_POINT_FOLLOW, self.ViewModel, 8) end end)
			timer.Simple(0.18, function() if IsValid(self) and IsValid(self.ViewModel) then ParticleEffectAttach("gauss_gun_raiden_1", PATTACH_POINT_FOLLOW, self.ViewModel, 8) end end)
			timer.Simple(0.18, function() if IsValid(self) and IsValid(self.ViewModel) then ParticleEffectAttach("gauss_gun_raiden_2", PATTACH_POINT_FOLLOW, self.ViewModel, 8) end end)
			timer.Simple(0.24, function() if IsValid(self) and IsValid(self.ViewModel) then ParticleEffectAttach("gauss_gun_raiden_0", PATTACH_POINT_FOLLOW, self.ViewModel, 9) end end)
			timer.Simple(0.24, function() if IsValid(self) and IsValid(self.ViewModel) then ParticleEffectAttach("gauss_gun_raiden_1", PATTACH_POINT_FOLLOW, self.ViewModel, 9) end end)
			timer.Simple(0.24, function() if IsValid(self) and IsValid(self.ViewModel) then ParticleEffectAttach("gauss_gun_raiden_2", PATTACH_POINT_FOLLOW, self.ViewModel, 9) end end)
			timer.Simple(0.30, function() if IsValid(self) and IsValid(self.ViewModel) then ParticleEffectAttach("gauss_gun_raiden_0", PATTACH_POINT_FOLLOW, self.ViewModel, 10) end end)
			timer.Simple(0.30, function() if IsValid(self) and IsValid(self.ViewModel) then ParticleEffectAttach("gauss_gun_raiden_1", PATTACH_POINT_FOLLOW, self.ViewModel, 10) end end)
			timer.Simple(0.30, function() if IsValid(self) and IsValid(self.ViewModel) then ParticleEffectAttach("gauss_gun_raiden_2", PATTACH_POINT_FOLLOW, self.ViewModel, 10) end end)
			
			timer.Simple(0.0, function() if IsValid(self) and IsValid(self.ViewModel) then ParticleEffectAttach("gauss_gun_raiden_3", PATTACH_POINT_FOLLOW, self.ViewModel, 11) end end)
			timer.Simple(0.0, function() if IsValid(self) and IsValid(self.ViewModel) then ParticleEffectAttach("gauss_gun_raiden_4", PATTACH_POINT_FOLLOW, self.ViewModel, 11) end end)
			timer.Simple(0.0, function() if IsValid(self) and IsValid(self.ViewModel) then ParticleEffectAttach("gauss_gun_raiden_5", PATTACH_POINT_FOLLOW, self.ViewModel, 11) end end)
			timer.Simple(0.06, function() if IsValid(self) and IsValid(self.ViewModel) then ParticleEffectAttach("gauss_gun_raiden_3", PATTACH_POINT_FOLLOW, self.ViewModel, 12) end end)
			timer.Simple(0.06, function() if IsValid(self) and IsValid(self.ViewModel) then ParticleEffectAttach("gauss_gun_raiden_4", PATTACH_POINT_FOLLOW, self.ViewModel, 12) end end)
			timer.Simple(0.06, function() if IsValid(self) and IsValid(self.ViewModel) then ParticleEffectAttach("gauss_gun_raiden_5", PATTACH_POINT_FOLLOW, self.ViewModel, 12) end end)
			timer.Simple(0.12, function() if IsValid(self) and IsValid(self.ViewModel) then ParticleEffectAttach("gauss_gun_raiden_3", PATTACH_POINT_FOLLOW, self.ViewModel, 13) end end)
			timer.Simple(0.12, function() if IsValid(self) and IsValid(self.ViewModel) then ParticleEffectAttach("gauss_gun_raiden_4", PATTACH_POINT_FOLLOW, self.ViewModel, 13) end end)
			timer.Simple(0.12, function() if IsValid(self) and IsValid(self.ViewModel) then ParticleEffectAttach("gauss_gun_raiden_5", PATTACH_POINT_FOLLOW, self.ViewModel, 13) end end)
			timer.Simple(0.18, function() if IsValid(self) and IsValid(self.ViewModel) then ParticleEffectAttach("gauss_gun_raiden_3", PATTACH_POINT_FOLLOW, self.ViewModel, 14) end end)
			timer.Simple(0.18, function() if IsValid(self) and IsValid(self.ViewModel) then ParticleEffectAttach("gauss_gun_raiden_4", PATTACH_POINT_FOLLOW, self.ViewModel, 14) end end)
			timer.Simple(0.18, function() if IsValid(self) and IsValid(self.ViewModel) then ParticleEffectAttach("gauss_gun_raiden_5", PATTACH_POINT_FOLLOW, self.ViewModel, 14) end end)
			timer.Simple(0.24, function() if IsValid(self) and IsValid(self.ViewModel) then ParticleEffectAttach("gauss_gun_raiden_3", PATTACH_POINT_FOLLOW, self.ViewModel, 15) end end)
			timer.Simple(0.24, function() if IsValid(self) and IsValid(self.ViewModel) then ParticleEffectAttach("gauss_gun_raiden_4", PATTACH_POINT_FOLLOW, self.ViewModel, 15) end end)
			timer.Simple(0.24, function() if IsValid(self) and IsValid(self.ViewModel) then ParticleEffectAttach("gauss_gun_raiden_5", PATTACH_POINT_FOLLOW, self.ViewModel, 15) end end)
			timer.Simple(0.30, function() if IsValid(self) and IsValid(self.ViewModel) then ParticleEffectAttach("gauss_gun_raiden_3", PATTACH_POINT_FOLLOW, self.ViewModel, 16) end end)
			timer.Simple(0.30, function() if IsValid(self) and IsValid(self.ViewModel) then ParticleEffectAttach("gauss_gun_raiden_4", PATTACH_POINT_FOLLOW, self.ViewModel, 16) end end)
			timer.Simple(0.30, function() if IsValid(self) and IsValid(self.ViewModel) then ParticleEffectAttach("gauss_gun_raiden_5", PATTACH_POINT_FOLLOW, self.ViewModel, 16) end end)
			
			---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
			
			timer.Simple(0.8, function() if IsValid(self) and IsValid(self.ViewModel) then ParticleEffectAttach("gauss_gun_raiden_0", PATTACH_POINT_FOLLOW, self.ViewModel, 5) end end)
			timer.Simple(0.8, function() if IsValid(self) and IsValid(self.ViewModel) then ParticleEffectAttach("gauss_gun_raiden_2", PATTACH_POINT_FOLLOW, self.ViewModel, 5) end end)
			timer.Simple(0.83, function() if IsValid(self) and IsValid(self.ViewModel) then ParticleEffectAttach("gauss_gun_raiden_0", PATTACH_POINT_FOLLOW, self.ViewModel, 6) end end)
			timer.Simple(0.83, function() if IsValid(self) and IsValid(self.ViewModel) then ParticleEffectAttach("gauss_gun_raiden_2", PATTACH_POINT_FOLLOW, self.ViewModel, 6) end end)
			timer.Simple(0.86, function() if IsValid(self) and IsValid(self.ViewModel) then ParticleEffectAttach("gauss_gun_raiden_0", PATTACH_POINT_FOLLOW, self.ViewModel, 7) end end)
			timer.Simple(0.86, function() if IsValid(self) and IsValid(self.ViewModel) then ParticleEffectAttach("gauss_gun_raiden_2", PATTACH_POINT_FOLLOW, self.ViewModel, 7) end end)
			timer.Simple(0.89, function() if IsValid(self) and IsValid(self.ViewModel) then ParticleEffectAttach("gauss_gun_raiden_0", PATTACH_POINT_FOLLOW, self.ViewModel, 8) end end)
			timer.Simple(0.89, function() if IsValid(self) and IsValid(self.ViewModel) then ParticleEffectAttach("gauss_gun_raiden_2", PATTACH_POINT_FOLLOW, self.ViewModel, 8) end end)
			timer.Simple(0.92, function() if IsValid(self) and IsValid(self.ViewModel) then ParticleEffectAttach("gauss_gun_raiden_0", PATTACH_POINT_FOLLOW, self.ViewModel, 9) end end)
			timer.Simple(0.92, function() if IsValid(self) and IsValid(self.ViewModel) then ParticleEffectAttach("gauss_gun_raiden_2", PATTACH_POINT_FOLLOW, self.ViewModel, 9) end end)
			timer.Simple(0.95, function() if IsValid(self) and IsValid(self.ViewModel) then ParticleEffectAttach("gauss_gun_raiden_0", PATTACH_POINT_FOLLOW, self.ViewModel, 10) end end)
			timer.Simple(0.95, function() if IsValid(self) and IsValid(self.ViewModel) then ParticleEffectAttach("gauss_gun_raiden_2", PATTACH_POINT_FOLLOW, self.ViewModel, 10) end end)
			
			timer.Simple(0.8, function() if IsValid(self) and IsValid(self.ViewModel) then ParticleEffectAttach("gauss_gun_raiden_3", PATTACH_POINT_FOLLOW, self.ViewModel, 11) end end)
			timer.Simple(0.8, function() if IsValid(self) and IsValid(self.ViewModel) then ParticleEffectAttach("gauss_gun_raiden_4", PATTACH_POINT_FOLLOW, self.ViewModel, 11) end end)
			timer.Simple(0.83, function() if IsValid(self) and IsValid(self.ViewModel) then ParticleEffectAttach("gauss_gun_raiden_5", PATTACH_POINT_FOLLOW, self.ViewModel, 12) end end)
			timer.Simple(0.83, function() if IsValid(self) and IsValid(self.ViewModel) then ParticleEffectAttach("gauss_gun_raiden_3", PATTACH_POINT_FOLLOW, self.ViewModel, 12) end end)
			timer.Simple(0.86, function() if IsValid(self) and IsValid(self.ViewModel) then ParticleEffectAttach("gauss_gun_raiden_4", PATTACH_POINT_FOLLOW, self.ViewModel, 13) end end)
			timer.Simple(0.86, function() if IsValid(self) and IsValid(self.ViewModel) then ParticleEffectAttach("gauss_gun_raiden_5", PATTACH_POINT_FOLLOW, self.ViewModel, 13) end end)
			timer.Simple(0.89, function() if IsValid(self) and IsValid(self.ViewModel) then ParticleEffectAttach("gauss_gun_raiden_3", PATTACH_POINT_FOLLOW, self.ViewModel, 14) end end)
			timer.Simple(0.89, function() if IsValid(self) and IsValid(self.ViewModel) then ParticleEffectAttach("gauss_gun_raiden_4", PATTACH_POINT_FOLLOW, self.ViewModel, 14) end end)
			timer.Simple(0.92, function() if IsValid(self) and IsValid(self.ViewModel) then ParticleEffectAttach("gauss_gun_raiden_5", PATTACH_POINT_FOLLOW, self.ViewModel, 15) end end)
			timer.Simple(0.92, function() if IsValid(self) and IsValid(self.ViewModel) then ParticleEffectAttach("gauss_gun_raiden_3", PATTACH_POINT_FOLLOW, self.ViewModel, 15) end end)
			timer.Simple(0.95, function() if IsValid(self) and IsValid(self.ViewModel) then ParticleEffectAttach("gauss_gun_raiden_4", PATTACH_POINT_FOLLOW, self.ViewModel, 16) end end)
			timer.Simple(0.95, function() if IsValid(self) and IsValid(self.ViewModel) then ParticleEffectAttach("gauss_gun_raiden_5", PATTACH_POINT_FOLLOW, self.ViewModel, 16) end end)
			
			---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
			
			timer.Simple(1.7, function() if IsValid(self) and IsValid(self.ViewModel) then ParticleEffectAttach("gauss_gun_raiden_0", PATTACH_POINT_FOLLOW, self.ViewModel, 5) end end)
			timer.Simple(1.7, function() if IsValid(self) and IsValid(self.ViewModel) then ParticleEffectAttach("gauss_gun_raiden_2", PATTACH_POINT_FOLLOW, self.ViewModel, 5) end end)
			timer.Simple(1.73, function() if IsValid(self) and IsValid(self.ViewModel) then ParticleEffectAttach("gauss_gun_raiden_0", PATTACH_POINT_FOLLOW, self.ViewModel, 5) end end)
			timer.Simple(1.73, function() if IsValid(self) and IsValid(self.ViewModel) then ParticleEffectAttach("gauss_gun_raiden_2", PATTACH_POINT_FOLLOW, self.ViewModel, 6) end end)
			timer.Simple(1.76, function() if IsValid(self) and IsValid(self.ViewModel) then ParticleEffectAttach("gauss_gun_raiden_0", PATTACH_POINT_FOLLOW, self.ViewModel, 7) end end)
			timer.Simple(1.76, function() if IsValid(self) and IsValid(self.ViewModel) then ParticleEffectAttach("gauss_gun_raiden_2", PATTACH_POINT_FOLLOW, self.ViewModel, 7) end end)
			timer.Simple(1.79, function() if IsValid(self) and IsValid(self.ViewModel) then ParticleEffectAttach("gauss_gun_raiden_0", PATTACH_POINT_FOLLOW, self.ViewModel, 8) end end)
			timer.Simple(1.79, function() if IsValid(self) and IsValid(self.ViewModel) then ParticleEffectAttach("gauss_gun_raiden_2", PATTACH_POINT_FOLLOW, self.ViewModel, 8) end end)
			timer.Simple(1.82, function() if IsValid(self) and IsValid(self.ViewModel) then ParticleEffectAttach("gauss_gun_raiden_0", PATTACH_POINT_FOLLOW, self.ViewModel, 9) end end)
			timer.Simple(1.82, function() if IsValid(self) and IsValid(self.ViewModel) then ParticleEffectAttach("gauss_gun_raiden_2", PATTACH_POINT_FOLLOW, self.ViewModel, 9) end end)
			timer.Simple(1.85, function() if IsValid(self) and IsValid(self.ViewModel) then ParticleEffectAttach("gauss_gun_raiden_0", PATTACH_POINT_FOLLOW, self.ViewModel, 10) end end)
			timer.Simple(1.85, function() if IsValid(self) and IsValid(self.ViewModel) then ParticleEffectAttach("gauss_gun_raiden_2", PATTACH_POINT_FOLLOW, self.ViewModel, 10) end end)
			
			timer.Simple(1.7, function() if IsValid(self) and IsValid(self.ViewModel) then ParticleEffectAttach("gauss_gun_raiden_3", PATTACH_POINT_FOLLOW, self.ViewModel, 11) end end)
			timer.Simple(1.7, function() if IsValid(self) and IsValid(self.ViewModel) then ParticleEffectAttach("gauss_gun_raiden_4", PATTACH_POINT_FOLLOW, self.ViewModel, 11) end end)
			timer.Simple(1.73, function() if IsValid(self) and IsValid(self.ViewModel) then ParticleEffectAttach("gauss_gun_raiden_5", PATTACH_POINT_FOLLOW, self.ViewModel, 12) end end)
			timer.Simple(1.73, function() if IsValid(self) and IsValid(self.ViewModel) then ParticleEffectAttach("gauss_gun_raiden_3", PATTACH_POINT_FOLLOW, self.ViewModel, 12) end end)
			timer.Simple(1.76, function() if IsValid(self) and IsValid(self.ViewModel) then ParticleEffectAttach("gauss_gun_raiden_4", PATTACH_POINT_FOLLOW, self.ViewModel, 13) end end)
			timer.Simple(1.76, function() if IsValid(self) and IsValid(self.ViewModel) then ParticleEffectAttach("gauss_gun_raiden_5", PATTACH_POINT_FOLLOW, self.ViewModel, 13) end end)
			timer.Simple(1.79, function() if IsValid(self) and IsValid(self.ViewModel) then ParticleEffectAttach("gauss_gun_raiden_3", PATTACH_POINT_FOLLOW, self.ViewModel, 14) end end)
			timer.Simple(1.79, function() if IsValid(self) and IsValid(self.ViewModel) then ParticleEffectAttach("gauss_gun_raiden_4", PATTACH_POINT_FOLLOW, self.ViewModel, 14) end end)
			timer.Simple(1.82, function() if IsValid(self) and IsValid(self.ViewModel) then ParticleEffectAttach("gauss_gun_raiden_5", PATTACH_POINT_FOLLOW, self.ViewModel, 15) end end)
			timer.Simple(1.82, function() if IsValid(self) and IsValid(self.ViewModel) then ParticleEffectAttach("gauss_gun_raiden_3", PATTACH_POINT_FOLLOW, self.ViewModel, 15) end end)
			timer.Simple(1.85, function() if IsValid(self) and IsValid(self.ViewModel) then ParticleEffectAttach("gauss_gun_raiden_4", PATTACH_POINT_FOLLOW, self.ViewModel, 16) end end)
			timer.Simple(1.85, function() if IsValid(self) and IsValid(self.ViewModel) then ParticleEffectAttach("gauss_gun_raiden_5", PATTACH_POINT_FOLLOW, self.ViewModel, 16) end end)
        end
    end
end

function EFFECT:Think()
    if not IsValid(self.Weapon) or not IsValid(self.Owner) or not IsValid(self.ViewModel) then 
        return false 
    end
    return true
end

function EFFECT:Render()
end