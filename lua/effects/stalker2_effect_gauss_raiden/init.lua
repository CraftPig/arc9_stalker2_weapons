function EFFECT:Init(data)
    self.Weapon = data:GetEntity()
    self.Owner = self.Weapon:GetOwner()
    
    if IsValid(self.Owner) and self.Owner:IsPlayer() then
        self.ViewModel = self.Owner:GetViewModel()
        
        if IsValid(self) and IsValid(self.ViewModel) then
			timer.Simple(0.03, function() if IsValid(self) and IsValid(self.ViewModel) then ParticleEffectAttach("gauss_gun_raiden_1", PATTACH_POINT_FOLLOW, self.ViewModel, 5) end end)
			timer.Simple(0.05, function() if IsValid(self) and IsValid(self.ViewModel) then ParticleEffectAttach("gauss_gun_raiden_1", PATTACH_POINT_FOLLOW, self.ViewModel, 6) end end)
			timer.Simple(0.07, function() if IsValid(self) and IsValid(self.ViewModel) then ParticleEffectAttach("gauss_gun_raiden_1", PATTACH_POINT_FOLLOW, self.ViewModel, 7) end end)
			timer.Simple(0.09, function() if IsValid(self) and IsValid(self.ViewModel) then ParticleEffectAttach("gauss_gun_raiden_1", PATTACH_POINT_FOLLOW, self.ViewModel, 8) end end)
			timer.Simple(0.11, function() if IsValid(self) and IsValid(self.ViewModel) then ParticleEffectAttach("gauss_gun_raiden_1", PATTACH_POINT_FOLLOW, self.ViewModel, 9) end end)
			timer.Simple(0.13, function() if IsValid(self) and IsValid(self.ViewModel) then ParticleEffectAttach("gauss_gun_raiden_1", PATTACH_POINT_FOLLOW, self.ViewModel, 10) end end)
			timer.Simple(0.03, function() if IsValid(self) and IsValid(self.ViewModel) then ParticleEffectAttach("gauss_gun_raiden_1", PATTACH_POINT_FOLLOW, self.ViewModel, 11) end end)
			timer.Simple(0.05, function() if IsValid(self) and IsValid(self.ViewModel) then ParticleEffectAttach("gauss_gun_raiden_1", PATTACH_POINT_FOLLOW, self.ViewModel, 12) end end)
			timer.Simple(0.07, function() if IsValid(self) and IsValid(self.ViewModel) then ParticleEffectAttach("gauss_gun_raiden_1", PATTACH_POINT_FOLLOW, self.ViewModel, 13) end end)
			timer.Simple(0.09, function() if IsValid(self) and IsValid(self.ViewModel) then ParticleEffectAttach("gauss_gun_raiden_1", PATTACH_POINT_FOLLOW, self.ViewModel, 14) end end)
			timer.Simple(0.11, function() if IsValid(self) and IsValid(self.ViewModel) then ParticleEffectAttach("gauss_gun_raiden_1", PATTACH_POINT_FOLLOW, self.ViewModel, 15) end end)
			timer.Simple(0.13, function() if IsValid(self) and IsValid(self.ViewModel) then ParticleEffectAttach("gauss_gun_raiden_1", PATTACH_POINT_FOLLOW, self.ViewModel, 16) end end)
			
			---------------------------------------------------------------------------------------------------------------------------
			
            timer.Simple(0.3, function() if IsValid(self) and IsValid(self.ViewModel) then ParticleEffectAttach("gauss_gun_raiden_2", PATTACH_POINT_FOLLOW, self.ViewModel, 10) end end)
			timer.Simple(0.33, function() if IsValid(self) and IsValid(self.ViewModel) then ParticleEffectAttach("gauss_gun_raiden_1", PATTACH_POINT_FOLLOW, self.ViewModel, 10) end end)
			timer.Simple(0.36, function() if IsValid(self) and IsValid(self.ViewModel) then ParticleEffectAttach("gauss_gun_raiden_0", PATTACH_POINT_FOLLOW, self.ViewModel, 10) end end)
			timer.Simple(0.3, function() if IsValid(self) and IsValid(self.ViewModel) then ParticleEffectAttach("gauss_gun_raiden_2", PATTACH_POINT_FOLLOW, self.ViewModel, 16) end end)
			timer.Simple(0.33, function() if IsValid(self) and IsValid(self.ViewModel) then ParticleEffectAttach("gauss_gun_raiden_1", PATTACH_POINT_FOLLOW, self.ViewModel, 16) end end)
			timer.Simple(0.36, function() if IsValid(self) and IsValid(self.ViewModel) then ParticleEffectAttach("gauss_gun_raiden_0", PATTACH_POINT_FOLLOW, self.ViewModel, 16) end end)
			
			timer.Simple(0.3, function() if IsValid(self) and IsValid(self.ViewModel) then ParticleEffectAttach("gauss_gun_raiden_2", PATTACH_POINT_FOLLOW, self.ViewModel, 9) end end)
			timer.Simple(0.33, function() if IsValid(self) and IsValid(self.ViewModel) then ParticleEffectAttach("gauss_gun_raiden_1", PATTACH_POINT_FOLLOW, self.ViewModel, 9) end end)
			timer.Simple(0.36, function() if IsValid(self) and IsValid(self.ViewModel) then ParticleEffectAttach("gauss_gun_raiden_0", PATTACH_POINT_FOLLOW, self.ViewModel, 9) end end)
			timer.Simple(0.3, function() if IsValid(self) and IsValid(self.ViewModel) then ParticleEffectAttach("gauss_gun_raiden_2", PATTACH_POINT_FOLLOW, self.ViewModel, 15) end end)
			timer.Simple(0.33, function() if IsValid(self) and IsValid(self.ViewModel) then ParticleEffectAttach("gauss_gun_raiden_1", PATTACH_POINT_FOLLOW, self.ViewModel, 15) end end)
			timer.Simple(0.36, function() if IsValid(self) and IsValid(self.ViewModel) then ParticleEffectAttach("gauss_gun_raiden_0", PATTACH_POINT_FOLLOW, self.ViewModel, 15) end end)
			
			---------------------------------------------------------------------------------------------------------------------------
			
			timer.Simple(0.7, function() if IsValid(self) and IsValid(self.ViewModel) then ParticleEffectAttach("gauss_gun_raiden_2", PATTACH_POINT_FOLLOW, self.ViewModel, 10) end end)
			timer.Simple(0.73, function() if IsValid(self) and IsValid(self.ViewModel) then ParticleEffectAttach("gauss_gun_raiden_1", PATTACH_POINT_FOLLOW, self.ViewModel, 10) end end)
			timer.Simple(0.76, function() if IsValid(self) and IsValid(self.ViewModel) then ParticleEffectAttach("gauss_gun_raiden_0", PATTACH_POINT_FOLLOW, self.ViewModel, 10) end end)
			timer.Simple(0.7, function() if IsValid(self) and IsValid(self.ViewModel) then ParticleEffectAttach("gauss_gun_raiden_2", PATTACH_POINT_FOLLOW, self.ViewModel, 16) end end)
			timer.Simple(0.73, function() if IsValid(self) and IsValid(self.ViewModel) then ParticleEffectAttach("gauss_gun_raiden_1", PATTACH_POINT_FOLLOW, self.ViewModel, 16) end end)
			timer.Simple(0.76, function() if IsValid(self) and IsValid(self.ViewModel) then ParticleEffectAttach("gauss_gun_raiden_0", PATTACH_POINT_FOLLOW, self.ViewModel, 16) end end)
			
			timer.Simple(0.7, function() if IsValid(self) and IsValid(self.ViewModel) then ParticleEffectAttach("gauss_gun_raiden_2", PATTACH_POINT_FOLLOW, self.ViewModel, 9) end end)
			timer.Simple(0.73, function() if IsValid(self) and IsValid(self.ViewModel) then ParticleEffectAttach("gauss_gun_raiden_1", PATTACH_POINT_FOLLOW, self.ViewModel, 9) end end)
			timer.Simple(0.76, function() if IsValid(self) and IsValid(self.ViewModel) then ParticleEffectAttach("gauss_gun_raiden_0", PATTACH_POINT_FOLLOW, self.ViewModel, 9) end end)
			timer.Simple(0.7, function() if IsValid(self) and IsValid(self.ViewModel) then ParticleEffectAttach("gauss_gun_raiden_2", PATTACH_POINT_FOLLOW, self.ViewModel, 15) end end)
			timer.Simple(0.73, function() if IsValid(self) and IsValid(self.ViewModel) then ParticleEffectAttach("gauss_gun_raiden_1", PATTACH_POINT_FOLLOW, self.ViewModel, 15) end end)
			timer.Simple(0.76, function() if IsValid(self) and IsValid(self.ViewModel) then ParticleEffectAttach("gauss_gun_raiden_0", PATTACH_POINT_FOLLOW, self.ViewModel, 15) end end)
			
			---------------------------------------------------------------------------------------------------------------------------
			
			timer.Simple(1.1, function() if IsValid(self) and IsValid(self.ViewModel) then ParticleEffectAttach("gauss_gun_raiden_2", PATTACH_POINT_FOLLOW, self.ViewModel, 10) end end)
			timer.Simple(1.13, function() if IsValid(self) and IsValid(self.ViewModel) then ParticleEffectAttach("gauss_gun_raiden_1", PATTACH_POINT_FOLLOW, self.ViewModel, 10) end end)
			timer.Simple(1.16, function() if IsValid(self) and IsValid(self.ViewModel) then ParticleEffectAttach("gauss_gun_raiden_0", PATTACH_POINT_FOLLOW, self.ViewModel, 10) end end)
			timer.Simple(1.1, function() if IsValid(self) and IsValid(self.ViewModel) then ParticleEffectAttach("gauss_gun_raiden_2", PATTACH_POINT_FOLLOW, self.ViewModel, 16) end end)
			timer.Simple(1.13, function() if IsValid(self) and IsValid(self.ViewModel) then ParticleEffectAttach("gauss_gun_raiden_1", PATTACH_POINT_FOLLOW, self.ViewModel, 16) end end)
			timer.Simple(1.16, function() if IsValid(self) and IsValid(self.ViewModel) then ParticleEffectAttach("gauss_gun_raiden_0", PATTACH_POINT_FOLLOW, self.ViewModel, 16) end end)
			
			timer.Simple(1.1, function() if IsValid(self) and IsValid(self.ViewModel) then ParticleEffectAttach("gauss_gun_raiden_2", PATTACH_POINT_FOLLOW, self.ViewModel, 9) end end)
			timer.Simple(1.13, function() if IsValid(self) and IsValid(self.ViewModel) then ParticleEffectAttach("gauss_gun_raiden_1", PATTACH_POINT_FOLLOW, self.ViewModel, 9) end end)
			timer.Simple(1.16, function() if IsValid(self) and IsValid(self.ViewModel) then ParticleEffectAttach("gauss_gun_raiden_0", PATTACH_POINT_FOLLOW, self.ViewModel, 9) end end)
			timer.Simple(1.1, function() if IsValid(self) and IsValid(self.ViewModel) then ParticleEffectAttach("gauss_gun_raiden_2", PATTACH_POINT_FOLLOW, self.ViewModel, 15) end end)
			timer.Simple(1.13, function() if IsValid(self) and IsValid(self.ViewModel) then ParticleEffectAttach("gauss_gun_raiden_1", PATTACH_POINT_FOLLOW, self.ViewModel, 15) end end)
			timer.Simple(1.16, function() if IsValid(self) and IsValid(self.ViewModel) then ParticleEffectAttach("gauss_gun_raiden_0", PATTACH_POINT_FOLLOW, self.ViewModel, 15) end end)
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