function EFFECT:Init(data)
    self.Weapon = data:GetEntity()
    self.Owner = self.Weapon:GetOwner()
    
    if IsValid(self.Owner) and self.Owner:IsPlayer() then
        self.ViewModel = self.Owner:GetViewModel()
        
        if IsValid(self.ViewModel) then
			timer.Simple(0.03, function() ParticleEffectAttach("gauss_gun_raiden_1", PATTACH_POINT_FOLLOW, self.ViewModel, 5) end)
			timer.Simple(0.05, function() ParticleEffectAttach("gauss_gun_raiden_1", PATTACH_POINT_FOLLOW, self.ViewModel, 6) end)
			timer.Simple(0.07, function() ParticleEffectAttach("gauss_gun_raiden_1", PATTACH_POINT_FOLLOW, self.ViewModel, 7) end)
			timer.Simple(0.09, function() ParticleEffectAttach("gauss_gun_raiden_1", PATTACH_POINT_FOLLOW, self.ViewModel, 8) end)
			timer.Simple(0.11, function() ParticleEffectAttach("gauss_gun_raiden_1", PATTACH_POINT_FOLLOW, self.ViewModel, 9) end)
			timer.Simple(0.13, function() ParticleEffectAttach("gauss_gun_raiden_1", PATTACH_POINT_FOLLOW, self.ViewModel, 10) end)
			timer.Simple(0.03, function() ParticleEffectAttach("gauss_gun_raiden_1", PATTACH_POINT_FOLLOW, self.ViewModel, 11) end)
			timer.Simple(0.05, function() ParticleEffectAttach("gauss_gun_raiden_1", PATTACH_POINT_FOLLOW, self.ViewModel, 12) end)
			timer.Simple(0.07, function() ParticleEffectAttach("gauss_gun_raiden_1", PATTACH_POINT_FOLLOW, self.ViewModel, 13) end)
			timer.Simple(0.09, function() ParticleEffectAttach("gauss_gun_raiden_1", PATTACH_POINT_FOLLOW, self.ViewModel, 14) end)
			timer.Simple(0.11, function() ParticleEffectAttach("gauss_gun_raiden_1", PATTACH_POINT_FOLLOW, self.ViewModel, 15) end)
			timer.Simple(0.13, function() ParticleEffectAttach("gauss_gun_raiden_1", PATTACH_POINT_FOLLOW, self.ViewModel, 16) end)
			
			---------------------------------------------------------------------------------------------------------------------------
			
            timer.Simple(0.3, function() ParticleEffectAttach("gauss_gun_raiden_2", PATTACH_POINT_FOLLOW, self.ViewModel, 10) end)
			timer.Simple(0.33, function() ParticleEffectAttach("gauss_gun_raiden_1", PATTACH_POINT_FOLLOW, self.ViewModel, 10) end)
			timer.Simple(0.36, function() ParticleEffectAttach("gauss_gun_raiden_0", PATTACH_POINT_FOLLOW, self.ViewModel, 10) end)
			timer.Simple(0.3, function() ParticleEffectAttach("gauss_gun_raiden_2", PATTACH_POINT_FOLLOW, self.ViewModel, 16) end)
			timer.Simple(0.33, function() ParticleEffectAttach("gauss_gun_raiden_1", PATTACH_POINT_FOLLOW, self.ViewModel, 16) end)
			timer.Simple(0.36, function() ParticleEffectAttach("gauss_gun_raiden_0", PATTACH_POINT_FOLLOW, self.ViewModel, 16) end)
			
			timer.Simple(0.3, function() ParticleEffectAttach("gauss_gun_raiden_2", PATTACH_POINT_FOLLOW, self.ViewModel, 9) end)
			timer.Simple(0.33, function() ParticleEffectAttach("gauss_gun_raiden_1", PATTACH_POINT_FOLLOW, self.ViewModel, 9) end)
			timer.Simple(0.36, function() ParticleEffectAttach("gauss_gun_raiden_0", PATTACH_POINT_FOLLOW, self.ViewModel, 9) end)
			timer.Simple(0.3, function() ParticleEffectAttach("gauss_gun_raiden_2", PATTACH_POINT_FOLLOW, self.ViewModel, 15) end)
			timer.Simple(0.33, function() ParticleEffectAttach("gauss_gun_raiden_1", PATTACH_POINT_FOLLOW, self.ViewModel, 15) end)
			timer.Simple(0.36, function() ParticleEffectAttach("gauss_gun_raiden_0", PATTACH_POINT_FOLLOW, self.ViewModel, 15) end)
			
			---------------------------------------------------------------------------------------------------------------------------
			
			timer.Simple(0.7, function() ParticleEffectAttach("gauss_gun_raiden_2", PATTACH_POINT_FOLLOW, self.ViewModel, 10) end)
			timer.Simple(0.73, function() ParticleEffectAttach("gauss_gun_raiden_1", PATTACH_POINT_FOLLOW, self.ViewModel, 10) end)
			timer.Simple(0.76, function() ParticleEffectAttach("gauss_gun_raiden_0", PATTACH_POINT_FOLLOW, self.ViewModel, 10) end)
			timer.Simple(0.7, function() ParticleEffectAttach("gauss_gun_raiden_2", PATTACH_POINT_FOLLOW, self.ViewModel, 16) end)
			timer.Simple(0.73, function() ParticleEffectAttach("gauss_gun_raiden_1", PATTACH_POINT_FOLLOW, self.ViewModel, 16) end)
			timer.Simple(0.76, function() ParticleEffectAttach("gauss_gun_raiden_0", PATTACH_POINT_FOLLOW, self.ViewModel, 16) end)
			
			timer.Simple(0.7, function() ParticleEffectAttach("gauss_gun_raiden_2", PATTACH_POINT_FOLLOW, self.ViewModel, 9) end)
			timer.Simple(0.73, function() ParticleEffectAttach("gauss_gun_raiden_1", PATTACH_POINT_FOLLOW, self.ViewModel, 9) end)
			timer.Simple(0.76, function() ParticleEffectAttach("gauss_gun_raiden_0", PATTACH_POINT_FOLLOW, self.ViewModel, 9) end)
			timer.Simple(0.7, function() ParticleEffectAttach("gauss_gun_raiden_2", PATTACH_POINT_FOLLOW, self.ViewModel, 15) end)
			timer.Simple(0.73, function() ParticleEffectAttach("gauss_gun_raiden_1", PATTACH_POINT_FOLLOW, self.ViewModel, 15) end)
			timer.Simple(0.76, function() ParticleEffectAttach("gauss_gun_raiden_0", PATTACH_POINT_FOLLOW, self.ViewModel, 15) end)
			
			---------------------------------------------------------------------------------------------------------------------------
			
			timer.Simple(1.1, function() ParticleEffectAttach("gauss_gun_raiden_2", PATTACH_POINT_FOLLOW, self.ViewModel, 10) end)
			timer.Simple(1.13, function() ParticleEffectAttach("gauss_gun_raiden_1", PATTACH_POINT_FOLLOW, self.ViewModel, 10) end)
			timer.Simple(1.16, function() ParticleEffectAttach("gauss_gun_raiden_0", PATTACH_POINT_FOLLOW, self.ViewModel, 10) end)
			timer.Simple(1.1, function() ParticleEffectAttach("gauss_gun_raiden_2", PATTACH_POINT_FOLLOW, self.ViewModel, 16) end)
			timer.Simple(1.13, function() ParticleEffectAttach("gauss_gun_raiden_1", PATTACH_POINT_FOLLOW, self.ViewModel, 16) end)
			timer.Simple(1.16, function() ParticleEffectAttach("gauss_gun_raiden_0", PATTACH_POINT_FOLLOW, self.ViewModel, 16) end)
			
			timer.Simple(1.1, function() ParticleEffectAttach("gauss_gun_raiden_2", PATTACH_POINT_FOLLOW, self.ViewModel, 9) end)
			timer.Simple(1.13, function() ParticleEffectAttach("gauss_gun_raiden_1", PATTACH_POINT_FOLLOW, self.ViewModel, 9) end)
			timer.Simple(1.16, function() ParticleEffectAttach("gauss_gun_raiden_0", PATTACH_POINT_FOLLOW, self.ViewModel, 9) end)
			timer.Simple(1.1, function() ParticleEffectAttach("gauss_gun_raiden_2", PATTACH_POINT_FOLLOW, self.ViewModel, 15) end)
			timer.Simple(1.13, function() ParticleEffectAttach("gauss_gun_raiden_1", PATTACH_POINT_FOLLOW, self.ViewModel, 15) end)
			timer.Simple(1.16, function() ParticleEffectAttach("gauss_gun_raiden_0", PATTACH_POINT_FOLLOW, self.ViewModel, 15) end)
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