automacro criandoblocos {
	ConfigKeyNotExist attackSkillSlot_2 #caso não tenha pelo menos 3 blocos criar até 3 blocos novos
	exclusive 1
	priority -2
	call {
		log criando blocos attackSkillSlot
		configurarSkills()
		if (&config(attackSkillSlot_2) == none) {
			pause 2
			do reload config
		}
	}
}
	
automacro configurandoblocos {
	ConfigKeyNot classe none
	ConfigKey attackskillSlot_0 none
	run-once 1
	exclusive 1
	call {
		
		switch(&config(classe)) {
		
			case(templario) {
				do conf attackSkillSlot_0 
				do conf attackSkillSlot_0_monsters 
				do conf attackSkillSlot_0_sp > 50
				do conf attackSkillSlot_0_WhenStatusInactive EFST_POSTDELAY
				
				do conf attackSkillSlot_1
				do conf attackSkillSlot_1_monsters 
				do conf attackSkillSlot_1_sp > 50
				do conf attackSkillSlot_1_WhenStatusInactive EFST_POSTDELAY
				
				do conf attackSkillSlot_2 
				do conf attackSkillSlot_2_monsters 
				do conf attackSkillSlot_2_sp > 50
				do conf attackSkillSlot_2_WhenStatusInactive EFST_POSTDELAY
			}
			case(cavaleiro) {
				do conf attackSkillSlot_0 
				do conf attackSkillSlot_0_monsters 
				do conf attackSkillSlot_0_sp > 50
				do conf attackSkillSlot_0_WhenStatusInactive EFST_POSTDELAY
				
				do conf attackSkillSlot_1
				do conf attackSkillSlot_1_monsters 
				do conf attackSkillSlot_1_sp > 50
				do conf attackSkillSlot_1_WhenStatusInactive EFST_POSTDELAY
				
				do conf attackSkillSlot_2 
				do conf attackSkillSlot_2_monsters 
				do conf attackSkillSlot_2_sp > 50
				do conf attackSkillSlot_2_WhenStatusInactive EFST_POSTDELAY
			}
			case(sacerdote) #Luz Divina?????{
				do conf attackSkillSlot_0 
				do conf attackSkillSlot_0_monsters 
				do conf attackSkillSlot_0_sp > 50
				do conf attackSkillSlot_0_WhenStatusInactive EFST_POSTDELAY
				
				do conf attackSkillSlot_1
				do conf attackSkillSlot_1_monsters 
				do conf attackSkillSlot_1_sp > 50
				do conf attackSkillSlot_1_WhenStatusInactive EFST_POSTDELAY
				
				do conf attackSkillSlot_2 
				do conf attackSkillSlot_2_monsters 
				do conf attackSkillSlot_2_sp > 50
				do conf attackSkillSlot_2_WhenStatusInactive EFST_POSTDELAY
			}
			case(monge) {
				do conf attackSkillSlot_0 
				do conf attackSkillSlot_0_monsters 
				do conf attackSkillSlot_0_sp > 50
				do conf attackSkillSlot_0_WhenStatusInactive EFST_POSTDELAY
				
				do conf attackSkillSlot_1
				do conf attackSkillSlot_1_monsters 
				do conf attackSkillSlot_1_sp > 50
				do conf attackSkillSlot_1_WhenStatusInactive EFST_POSTDELAY
				
				do conf attackSkillSlot_2 
				do conf attackSkillSlot_2_monsters 
				do conf attackSkillSlot_2_sp > 50
				do conf attackSkillSlot_2_WhenStatusInactive EFST_POSTDELAY
			}		
			case(bruxo) {
				#Mapas de base -> ein_fild09 | pay_fild02 | mjolnir_11 | mjolnir_01 | mjolnir_02 | cmd_fild01
				#Só Skills de Mago por enquanto
				do conf attackSkillSlot_0 Lanças de Fogo #Monstros de Terra/Sem dano elemental
				do conf attackSkillSlot_0_monsters Jiboía, Rabo de Verme, Caramelo, Pé Grande, Creamy, Percevejo, Poporing, Besouro-Chifre, Yoyo, Grove, Flora, Argiope, Argos, Porcellio, Metaling
				do conf attackSkillSlot_0_sp > 50
				do conf attackSkillSlot_0_WhenStatusInactive EFST_POSTDELAY
				
				do conf attackSkillSlot_1 Lanças de Gelo #Monstros de Fogo
				do conf attackSkillSlot_1_monsters Salgueiro Ancião 
				do conf attackSkillSlot_1_sp > 50
				do conf attackSkillSlot_1_WhenStatusInactive EFST_POSTDELAY
				
				do conf attackSkillSlot_2 Relampago #Monstros de Agua
				do conf attackSkillSlot_2_monsters Esporo 
				do conf attackSkillSlot_2_sp > 50
				do conf attackSkillSlot_2_WhenStatusInactive EFST_POSTDELAY
			}
			case(sabio) {
				#Mapas de base -> ein_fild09 | pay_fild02 | mjolnir_11 | mjolnir_01 | mjolnir_02 | cmd_fild01
				#Só Skills de Mago por enquanto
				do conf attackSkillSlot_0 Lanças de Fogo #Monstros de Terra/Sem dano elemental
				do conf attackSkillSlot_0_monsters Jiboía, Rabo de Verme, Caramelo, Pé Grande, Creamy, Percevejo, Poporing, Besouro-Chifre, Yoyo, Grove, Flora, Argiope, Argos, Porcellio, Metaling
				do conf attackSkillSlot_0_sp > 50
				do conf attackSkillSlot_0_WhenStatusInactive EFST_POSTDELAY
				
				do conf attackSkillSlot_1 Lanças de Gelo #Monstros de Fogo
				do conf attackSkillSlot_1_monsters Salgueiro Ancião 
				do conf attackSkillSlot_1_sp > 50
				do conf attackSkillSlot_1_WhenStatusInactive EFST_POSTDELAY
				
				do conf attackSkillSlot_2 Relampago #Monstros de Agua
				do conf attackSkillSlot_2_monsters Esporo 
				do conf attackSkillSlot_2_sp > 50
				do conf attackSkillSlot_2_WhenStatusInactive EFST_POSTDELAY
			}
			case(ca[cç]ador) {
				do conf attackSkillSlot_0 
				do conf attackSkillSlot_0_monsters 
				do conf attackSkillSlot_0_sp > 50
				do conf attackSkillSlot_0_WhenStatusInactive EFST_POSTDELAY
				
				do conf attackSkillSlot_1
				do conf attackSkillSlot_1_monsters 
				do conf attackSkillSlot_1_sp > 50
				do conf attackSkillSlot_1_WhenStatusInactive EFST_POSTDELAY
				
				do conf attackSkillSlot_2 
				do conf attackSkillSlot_2_monsters 
				do conf attackSkillSlot_2_sp > 50
				do conf attackSkillSlot_2_WhenStatusInactive EFST_POSTDELAY
			}
			case(bardo) {
				do conf attackSkillSlot_0 
				do conf attackSkillSlot_0_monsters 
				do conf attackSkillSlot_0_sp > 50
				do conf attackSkillSlot_0_WhenStatusInactive EFST_POSTDELAY
				
				do conf attackSkillSlot_1 
				do conf attackSkillSlot_1_monsters 
				do conf attackSkillSlot_1_sp > 50
				do conf attackSkillSlot_1_WhenStatusInactive EFST_POSTDELAY
				
				do conf attackSkillSlot_2 
				do conf attackSkillSlot_2_monsters
				do conf attackSkillSlot_2_sp > 50
				do conf attackSkillSlot_2_WhenStatusInactive EFST_POSTDELAY
			}
			case(mercenario) {
				do conf attackSkillSlot_0 
				do conf attackSkillSlot_0_monsters 
				do conf attackSkillSlot_0_sp > 50
				do conf attackSkillSlot_0_WhenStatusInactive EFST_POSTDELAY
				
				do conf attackSkillSlot_1 
				do conf attackSkillSlot_1_monsters 
				do conf attackSkillSlot_1_sp > 50
				do conf attackSkillSlot_1_WhenStatusInactive EFST_POSTDELAY
				
				do conf attackSkillSlot_2 
				do conf attackSkillSlot_2_monsters 
				do conf attackSkillSlot_2_sp > 50
				do conf attackSkillSlot_2_WhenStatusInactive EFST_POSTDELAY
			}
			case(arruaceiro) {
				do conf attackSkillSlot_0 
				do conf attackSkillSlot_0_monsters 
				do conf attackSkillSlot_0_sp > 50
				do conf attackSkillSlot_0_WhenStatusInactive EFST_POSTDELAY
				
				do conf attackSkillSlot_1 
				do conf attackSkillSlot_1_monsters 
				do conf attackSkillSlot_1_sp > 50
				do conf attackSkillSlot_1_WhenStatusInactive EFST_POSTDELAY
				
				do conf attackSkillSlot_2 
				do conf attackSkillSlot_2_monsters 
				do conf attackSkillSlot_2_sp > 50
				do conf attackSkillSlot_2_WhenStatusInactive EFST_POSTDELAY
				}
			}
		}
	}
}	
		
	
##################################	
#SUB Criar Blocos attackSkillSlot#
##################################
sub cofigurarskills {
	open (my $fh, '>>:encoding(UTF-8)', Settings::getControlFilename('config.txt'));
	print $fh "attackSkillSlot {\n";
	print $fh "	monsters \n";  
	print $fh "	sp \n";
	print $fh "	whenStatusInactive \n";
	print $fh "}\n";
}