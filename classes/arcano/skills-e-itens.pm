automacro configurarLancasDeGelo {
    exclusive 1
    priority -1
    SkillLevel MG_COLDBOLT >= 1
    ConfigKeyNot attackSkillSlot_2 MG_COLDBOLT
    call {
        [
        log ===================================
        log = configurando Lanças de Gelo
        log ===================================
        ]
        $blocoExiste = checarSeExisteNoConfig("attackSkillSlot_2")
        if ( $blocoExiste = nao ) {
            adicionaAttackSkillSlot()
            pause 1
            do reload config
        }
        
        do conf attackSkillSlot_2 MG_COLDBOLT
        do conf attackSkillSlot_2_sp > 20%
        do conf attackSkillSlot_2_lvl none
        do conf attackSkillSlot_2_stopWhenHit 1
        do conf attackSkillSlot_2_inLockOnly 1
    }
}

automacro configurarLancasDeFogo {
    SkillLevel MG_FIREBOLT >= 1
    exclusive 1
    priority -2
    ConfigKeyNot attackSkillSlot_1 MG_FIREBOLT
    priority 2
    call {
        [
        log ===================================
        log = configurando Lanças de Fogo
        log ===================================
        ]
        
        $blocoExiste = checarSeExisteNoConfig("attackSkillSlot_1")
        if ( $blocoExiste = nao ) {
            adicionaAttackSkillSlot()
            pause 1
            do reload config
        }
        
        do conf attackSkillSlot_1 MG_FIREBOLT
        do conf attackSkillSlot_1_sp > 20%
        do conf attackSkillSlot_1_lvl none
        do conf attackSkillSlot_1_stopWhenHit 1
        do conf attackSkillSlot_1_inLockOnly 1
        do conf attackSkillSlot_1_notInTown 1
        do conf attackSkillSlot_1_monsters Rabo de Verme, Jibóia, Pé-Grande
    }
}

automacro configurarRelampago {
    SkillLevel MG_LIGHTNINGBOLT >= 3
    exclusive 1
    priority -3
    ConfigKeyNot attackSkillSlot_0 MG_LIGHTNINGBOLT
    priority 1
    call {
        [
        log ===================================
        log = configurando relâmpago
        log ===================================
        ]
        
        $blocoExiste = checarSeExisteNoConfig("attackSkillSlot_0")
        if ( $blocoExiste = nao ) {
            adicionaAttackSkillSlot()
            pause 1
            do reload config
        }
        
        do conf attackSkillSlot_0 MG_LIGHTNINGBOLT
        do conf attackSkillSlot_0_sp > 20%
        do conf attackSkillSlot_0_lvl none #faz ele usar no lvl máximo que tiver
        do conf attackSkillSlot_0_stopWhenHit 1
        do conf attackSkillSlot_0_inLockOnly 1
        do conf attackSkillSlot_0_notInTown 1
        do conf attackSkillSlot_0_monsters Esporo
    }
}


automacro configurarAtaqueEspiritual {
    SkillLevel MG_NAPALMBEAT > 0
    ConfigKeyNot attackSkillSlot_2 MG_NAPALMBEAT
    priority 0
    exclusive 1
    call {
        [
        log ===========================================
        log =Já tenho a skill Ataque Espiritual,
        log =Configurando pra usar ela
        log ===========================================
        ]
        while (checarSeExisteNoConfig("attackSkillSlot_2") = nao ) {
            adicionaAttackSkillSlot()
            pause 1
            do reload config
        }
        
        do conf attackSkillSlot_2 MG_NAPALMBEAT
        do conf attackSkillSlot_2_sp >= 25
        do conf attackSkillSlot_2_dist 10
        do conf attackSkillSlot_2_whenStatusInactive EFST_POSTDELAY
        do conf attackSkillSlot_2_monsters
        do conf attackSkillSlot_2_disabled 1
    }
}

automacro configurarEspiritosAncioes {
    SkillLevel MG_SOULSTRIKE > 0
    ConfigKeyNot attackSkillSlot_4 MG_SOULSTRIKE
    priority 0
    exclusive 1
    call {
        [
        log ===========================================
        log =Já tenho a skill Espíritos Anciões,
        log =Configurando pra usar ela
        log ===========================================
        ]
        while (checarSeExisteNoConfig("attackSkillSlot_4") = nao ) {
            adicionaAttackSkillSlot()
            pause 1
            do reload config
        }
        
        do conf attackSkillSlot_4 MG_SOULSTRIKE
        do conf attackSkillSlot_4_sp >= 25
        do conf attackSkillSlot_4_dist 10
        do conf attackSkillSlot_4_whenStatusInactive EFST_POSTDELAY
        do conf attackSkillSlot_4_monsters
        do conf attackSkillSlot_4_disabled 1
    }
}

automacro configurarRajadaCongelante {
    SkillLevel MG_FROSTDIVER > 0
    ConfigKeyNot attackSkillSlot_5 MG_FROSTDIVER
    priority 0
    exclusive 1
    call {
        [
        log ===========================================
        log =Já tenho a skill Rajada Congelante,
        log =Configurando pra usar ela
        log ===========================================
        ]
        while (checarSeExisteNoConfig("attackSkillSlot_5") = nao ) {
            adicionaAttackSkillSlot()
            pause 1
            do reload config
        }
        
        do conf attackSkillSlot_5 MG_FROSTDIVER
        do conf attackSkillSlot_5_sp >= 25
        do conf attackSkillSlot_5_dist 10
        do conf attackSkillSlot_5_whenStatusInactive EFST_POSTDELAY
        do conf attackSkillSlot_5_target_whenStatusInactive EFST_BODYSTATE_FREEZING
        do conf attackSkillSlot_5_monsters
        do conf attackSkillSlot_5_disabled 1
    }
}

automacro darCajadadaNeles {
    exclusive 1
    JobID $parametrosClasses{idC1}, $parametrosClasses{idBC1}
    JobLevel < 2
    ConfigKeyNot attackUseWeapon 1
    call {
        do conf attackUseWeapon 1
    }
}

automacro jaTenhoSkill_pararDeBaterNaCajadada {
    JobLevel > 1
    exclusive 1
    ConfigKeyNot attackUseWeapon 0
    JobID $parametrosClasses{idC1}, $parametrosClasses{idBC1}, $parametrosClasses{idC1T}
    call {
        do conf attackUseWeapon 0
    }
}

automacro souUmMeroAprendizEqueroBater {
    JobID 0, 4023, 4001
    exclusive 1
    ConfigKeyNot attackUseWeapon 1
    call {
        do conf attackUseWeapon 1
    }
}

automacro configurarDistanciaDeAtaque_usandoMagias {
    ConfigKey attackUseWeapon 0
    ConfigKeyNot attackDistance 6
    exclusive 1
    call {
        do conf attackDistance 6
    }
}

automacro configurarDistanciaDeAtaque_naCajadada {
    ConfigKey attackUseWeapon 1
    ConfigKeyNot attackDistance 1.5
    exclusive 1
    call {
        do conf attackDistance 1.5
    }
}

