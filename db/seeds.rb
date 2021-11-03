# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
CharacterClass.find_or_create_by(internal_name: "berserker").tap do |character_class|
  character_class.name = I18n.t(:berserker)
  character_class.virtues.find_or_create_by(internal_name: "madman").tap do |virtue|
    virtue.name = I18n.t(:furiat)
    virtue.description = I18n.t(:furiat_desc)
    virtue.save if character_class.changed?
  end
  character_class.virtues.find_or_create_by(internal_name: "contempt_of_death").tap do |virtue|
    virtue.name = I18n.t(:pogarda_smierci)
    virtue.description = I18n.t(:pogarda_smierci_desc)
    virtue.save if character_class.changed?
  end
  character_class.virtues.find_or_create_by(internal_name: "tattoos").tap do |virtue|
    virtue.name = I18n.t(:runiczne_tatuaze)
    virtue.description = I18n.t(:runiczne_tatuaze_desc)
    virtue.save if character_class.changed?
  end
  character_class.save if character_class.changed?
end

CharacterClass.find_or_create_by(internal_name: "einher").tap do |character_class|
  character_class.name = I18n.t(:einher)
  character_class.virtues.find_or_create_by(internal_name: "cybernetic_body").tap do |virtue|
    virtue.name = I18n.t(:cybernetyczne_cialo)
    virtue.description = I18n.t(:cybernertyczne_cialo_desc)
    virtue.save if character_class.changed?
  end
  character_class.virtues.find_or_create_by(internal_name: "indestructible").tap do |virtue|
    virtue.name = I18n.t(:niezniszczalny)
    virtue.description = I18n.t(:niezniszczalny_desc)
    virtue.save if character_class.changed?
  end
  character_class.virtues.find_or_create_by(internal_name: "out_full_blast").tap do |virtue|
    virtue.name = I18n.t(:z_grubej_rury)
    virtue.description = I18n.t(:z_grubej_rury_desc)
    virtue.save if character_class.changed?
  end
  character_class.save if character_class.changed?
end

CharacterClass.find_or_create_by(internal_name: "huskarl").tap do |character_class|
  character_class.name = I18n.t(:huskarl)
  character_class.virtues.find_or_create_by(internal_name: "moment_of_praise").tap do |virtue|
    virtue.name = I18n.t(:chwila_chwaly)
    virtue.description = I18n.t(:chwila_chwaly_desc)
    virtue.save if character_class.changed?
  end
  character_class.virtues.find_or_create_by(internal_name: "hekser").tap do |virtue|
    virtue.name = I18n.t(:hekser)
    virtue.description = I18n.t(:hekser_desc)
    virtue.save if character_class.changed?
  end
  character_class.virtues.find_or_create_by(internal_name: "stager").tap do |virtue|
    virtue.name = I18n.t(:wyga)
    virtue.description = I18n.t(:wyga_desc)
    virtue.save if character_class.changed?
  end
  character_class.save if character_class.changed?
end

CharacterClass.find_or_create_by(internal_name: "jaeger").tap do |character_class|
  character_class.name = I18n.t(:jaeger)
  character_class.virtues.find_or_create_by(internal_name: "i_see_everything").tap do |virtue|
    virtue.name = I18n.t(:widze_wszystko)
    virtue.description = I18n.t(:widze_wszystko_desc)
    virtue.save if character_class.changed?
  end
  character_class.virtues.find_or_create_by(internal_name: "smell_of_blood").tap do |virtue|
    virtue.name = I18n.t(:zapach_krwi)
    virtue.description = I18n.t(:zapach_krwi_desc)
    virtue.save if character_class.changed?
  end
  character_class.virtues.find_or_create_by(internal_name: "dead_or_alive").tap do |virtue|
    virtue.name = I18n.t(:zywy_lub_martwy)
    virtue.description = I18n.t(:zywy_lub_martwy_desc)
    virtue.save if character_class.changed?
  end
  character_class.save if character_class.changed?
end

CharacterClass.find_or_create_by(internal_name: "jarl").tap do |character_class|
  character_class.name = I18n.t(:jarl)
  character_class.virtues.find_or_create_by(internal_name: "family_weapon").tap do |virtue|
    virtue.name = I18n.t(:bron_rodowa)
    virtue.description = I18n.t(:bron_rodowa_desc)
    virtue.save if character_class.changed?
  end
  character_class.virtues.find_or_create_by(internal_name: "i_can_afford").tap do |virtue|
    virtue.name = I18n.t(:stac_mnie)
    virtue.description = I18n.t(:stac_mnie_desc)
    virtue.save if character_class.changed?
  end
  character_class.virtues.find_or_create_by(internal_name: "resources").tap do |virtue|
    virtue.name = I18n.t(:zasoby)
    virtue.description = I18n.t(:zasoby_desc)
    virtue.save if character_class.changed?
  end
  character_class.save if character_class.changed?
end

CharacterClass.find_or_create_by(internal_name: "skald").tap do |character_class|
  character_class.name = I18n.t(:skald)
  character_class.virtues.find_or_create_by(internal_name: "inspiration").tap do |virtue|
    virtue.name = I18n.t(:natchnienie)
    virtue.description = I18n.t(:natchnienie_desc)
    virtue.save if character_class.changed?
  end
  character_class.virtues.find_or_create_by(internal_name: "person").tap do |virtue|
    virtue.name = I18n.t(:persona)
    virtue.description = I18n.t(:persona_desc)
    virtue.save if character_class.changed?
  end
  character_class.virtues.find_or_create_by(internal_name: "focus").tap do |virtue|
    virtue.name = I18n.t(:skupienie)
    virtue.description = I18n.t(:skupienie_desc)
    virtue.save if character_class.changed?
  end
  character_class.save if character_class.changed?
end

CharacterClass.find_or_create_by(internal_name: "tech_master").tap do |character_class|
  character_class.name = I18n.t(:techmistrz)
  character_class.virtues.find_or_create_by(internal_name: "crazy_genius").tap do |virtue|
    virtue.name = I18n.t(:szalony_geniusz)
    virtue.description = I18n.t(:szalony_geniusz_desc)
    virtue.save if character_class.changed?
  end
  character_class.virtues.find_or_create_by(internal_name: "secrets").tap do |virtue|
    virtue.name = I18n.t(:tajemnice)
    virtue.description = I18n.t(:tajemnice_desc)
    virtue.save if character_class.changed?
  end
  character_class.virtues.find_or_create_by(internal_name: "trust_me_i_am_an_engineer").tap do |virtue|
    virtue.name = I18n.t(:zaufaj_mi_jestem_inzynierem)
    virtue.description = I18n.t(:zaufaj_mi_jestem_inzynierem_desc)
    virtue.save if character_class.changed?
  end
  character_class.save if character_class.changed?
end

CharacterClass.find_or_create_by(internal_name: "thane").tap do |character_class|
  character_class.name = I18n.t(:thane)
  character_class.virtues.find_or_create_by(internal_name: "analytical_mind").tap do |virtue|
    virtue.name = I18n.t(:analityczny_umysl)
    virtue.description = I18n.t(:analityczny_umysl_desc)
    virtue.save if character_class.changed?
  end
  character_class.virtues.find_or_create_by(internal_name: "sniper").tap do |virtue|
    virtue.name = I18n.t(:strzelec_wyborowy)
    virtue.description = I18n.t(:strzelec_wyborowy_desc)
    virtue.save if character_class.changed?
  end
  character_class.virtues.find_or_create_by(internal_name: "hardened").tap do |virtue|
    virtue.name = I18n.t(:zahartowany)
    virtue.description = I18n.t(:zahartowany_desc)
    virtue.save if character_class.changed?
  end
  character_class.save if character_class.changed?
end

CharacterClass.find_or_create_by(internal_name: "trickster").tap do |character_class|
  character_class.name = I18n.t(:trickster)
  character_class.virtues.find_or_create_by(internal_name: "gyp").tap do |virtue|
    virtue.name = I18n.t(:kanciarz)
    virtue.description = I18n.t(:kanciarz_desc)
    virtue.save if character_class.changed?
  end
  character_class.virtues.find_or_create_by(internal_name: "dirty_play").tap do |virtue|
    virtue.name = I18n.t(:nieczysta_zagrywka)
    virtue.description = I18n.t(:nieczysta_zagrywka_desc)
    virtue.save if character_class.changed?
  end
  character_class.virtues.find_or_create_by(internal_name: "fraud").tap do |virtue|
    virtue.name = I18n.t(:oszust)
    virtue.description = I18n.t(:oszust_desc)
    virtue.save if character_class.changed?
  end
  character_class.save if character_class.changed?
end

CharacterClass.find_or_create_by(internal_name: "ulfhednar").tap do |character_class|
  character_class.name = I18n.t(:ulfhednar)
  character_class.virtues.find_or_create_by(internal_name: "acrobat").tap do |virtue|
    virtue.name = I18n.t(:akrobata)
    virtue.description = I18n.t(:akrobata_desc)
    virtue.save if character_class.changed?
  end
  character_class.virtues.find_or_create_by(internal_name: "chameleon").tap do |virtue|
    virtue.name = I18n.t(:kameleon)
    virtue.description = I18n.t(:kameleon_desc)
    virtue.save if character_class.changed?
  end
  character_class.virtues.find_or_create_by(internal_name: "killer").tap do |virtue|
    virtue.name = I18n.t(:zabojca)
    virtue.description = I18n.t(:zabojca_desc)
    virtue.save if character_class.changed?
  end
  character_class.save if character_class.changed?
end

CharacterClass.find_or_create_by(internal_name: "soothsayer").tap do |character_class|
  character_class.name = I18n.t(:wieszcz)
  character_class.virtues.find_or_create_by(internal_name: "hexeri_explorer").tap do |virtue|
    virtue.name = I18n.t(:badasz_hekseri)
    virtue.description = I18n.t(:badacz_hekseri_desc)
    virtue.save if character_class.changed?
  end
  character_class.virtues.find_or_create_by(internal_name: "entropy_master").tap do |virtue|
    virtue.name = I18n.t(:mistrz_entropii)
    virtue.description = I18n.t(:mistrz_entropii_desc)
    virtue.save if character_class.changed?
  end
  character_class.virtues.find_or_create_by(internal_name: "arcana_mystery").tap do |virtue|
    virtue.name = I18n.t(:tajemnica_arkana)
    virtue.description = I18n.t(:tajemnica_arkana_desc)
    virtue.save if character_class.changed?
  end
  character_class.save if character_class.changed?
end

CharacterClass.find_or_create_by(internal_name: "viking").tap do |character_class|
  character_class.name = I18n.t(:wiking)
  character_class.virtues.find_or_create_by(internal_name: "i_felt_blood").tap do |virtue|
    virtue.name = I18n.t(:poczulem_krew)
    virtue.description = I18n.t(:poczulem_krew_desc)
    virtue.save if character_class.changed?
  end
  character_class.virtues.find_or_create_by(internal_name: "descendant_of_tyra").tap do |virtue|
    virtue.name = I18n.t(:potomek_tyra)
    virtue.description = I18n.t(:potomek_tyra_desc)
    virtue.save if character_class.changed?
  end
  character_class.virtues.find_or_create_by(internal_name: "old_sweat").tap do |virtue|
    virtue.name = I18n.t(:wiarus)
    virtue.description = I18n.t(:wiarus_desc)
    virtue.save if character_class.changed?
  end
  character_class.save if character_class.changed?
end

CharacterClass.find_or_create_by(internal_name: "wolwa").tap do |character_class|
  character_class.name = I18n.t(:wolwa)
  character_class.virtues.find_or_create_by(internal_name: "power_of_hope").tap do |virtue|
    virtue.name = I18n.t(:potega_nadziei)
    virtue.description = I18n.t(:potega_nadziei_desc)
    virtue.save if character_class.changed?
  end
  character_class.virtues.find_or_create_by(internal_name: "mistress_of_fate").tap do |virtue|
    virtue.name = I18n.t(:wladczyni_losu)
    virtue.description = I18n.t(:wladczyni_losu_descd)
    virtue.save if character_class.changed?
  end
  character_class.virtues.find_or_create_by(internal_name: "bond_with_yggdrasil").tap do |virtue|
    virtue.name = I18n.t(:wiez_z_yggdrasilem)
    virtue.description = I18n.t(:wiez_z_yggdrasilem_desc)
    virtue.save if character_class.changed?
  end
  character_class.save if character_class.changed?
end

CharacterClass.find_or_create_by(internal_name: "valkyrie").tap do |character_class|
  character_class.name = I18n.t(:walkiria)
  character_class.virtues.find_or_create_by(internal_name: "daughter_of_frey").tap do |virtue|
    virtue.name = I18n.t(:corka_frei)
    virtue.description = I18n.t(:corka_frei_desc)
    virtue.save if character_class.changed?
  end
  character_class.virtues.find_or_create_by(internal_name: "heimdal_star").tap do |virtue|
    virtue.name = I18n.t(:gwiazda_heimdala)
    virtue.description = I18n.t(:gwiazda_heimdala_desc)
    virtue.save if character_class.changed?
  end
  character_class.virtues.find_or_create_by(internal_name: "asgard_wings").tap do |virtue|
    virtue.name = I18n.t(:skrzydla_asgardu)
    virtue.description = I18n.t(:skrzydla_asgardu_desc)
    virtue.save if character_class.changed?
  end
  character_class.save if character_class.changed?
end
#TODO it would be nice to be able to refer a virtue (or maybe even the character_class and other entities by some internal_name in case the original names will change in the Midguard game Manual)
#TODO this is not (obviously) idempotent: https://en.wikipedia.org/wiki/Idempotence Let's make it so executing the seeds twice or thrice doesn't get us three Berserkers
#TODO it looks like socjopata got tired with copy pasting copy texts from the manual. But we need all character_classes and accompanied virtues definitions from the Manual :>
