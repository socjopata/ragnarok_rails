# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).

character_class = CharacterClass.create(name: I18n.t(:berserker))
#TODO it would be nice to be able to refer a virtue (or maybe even the character_class and other entities by some internal_name in case the original names will change in the Midguard game Manual)
character_class.virtues.create(
  name: I18n.t(:furiat),
  description: I18n.t(:furiat_desc)
)
character_class.virtues.create(
  name: I18n.t(:pogarda_smierci),
  description: I18n.t(:pogarda_smierci_desc)
)
character_class.virtues.create(
  name: I18n.t(:runiczne_tatuaze),
  description: I18n.t(:runiczne_tatuaze_desc)
)

character_class = CharacterClass.create(name: I18n.t(:einher))
character_class.virtues.create(
  name: I18n.t(:cybernetyczne_cialo),
  description: I18n.t(:cybernertyczne_cialo_desc)
)
character_class.virtues.create(
  name: I18n.t(:niezniszczalny),
  description: I18n.t(:niezniszczalny_desc)
)
character_class.virtues.create(
  name: I18n.t(:z_grubej_rury),
  description: I18n.t(:runiczne_tatuaze_desc)
)

character_class = CharacterClass.create(name: I18n.t(:huskarl))
character_class.virtues.create(
  name: I18n.t(:chwila_chwaly),
  description: I18n.t(:chwila_chwaly_desc)
)
character_class.virtues.create(
  name: I18n.t(:hekser),
  description: I18n.t(:hekser_desc)
)
character_class.virtues.create(
  name: I18n.t(:wyga),
  description: I18n.t(:wyga_desc)
)

character_class = CharacterClass.create(name: I18n.t(:jaeger))
character_class.virtues.create(
  name: I18n.t(:widze_wszystko),
  description: I18n.t(:widze_wszystko_desc)
)
character_class.virtues.create(
  name: I18n.t(:zapach_krwi),
  description: I18n.t(:zapach_krwi_desc)
)
character_class.virtues.create(
  name: I18n.t(:zywy_lub_martwy),
  description: I18n.t(:zywy_lub_martwy_desc)
)

character_class = CharacterClass.create(name: I18n.t(:jarl))
character_class.virtues.create(
  name: I18n.t(:bron_rodowa),
  description: I18n.t(:bron_rodowa_desc)
)
character_class.virtues.create(
  name: I18n.t(:stac_mnie),
  description: I18n.t(:stac_mnie_desc)
)
character_class.virtues.create(
  name: I18n.t(:zasoby),
  description: I18n.t(:zasoby_desc)
)

character_class = CharacterClass.create(name: I18n.t(:skald))
character_class.virtues.create(
  name: I18n.t(:natchnienie),
  description: I18n.t(:natchnienie_desc)
)
character_class.virtues.create(
  name: I18n.t(:persona),
  description: I18n.t(:persona_desc)
)
character_class.virtues.create(
  name: I18n.t(:skupienie),
  description: I18n.t(:skupienie_desc)
)

character_class = CharacterClass.create(name: I18n.t(:techmistrz))
character_class.virtues.create(
  name: I18n.t(:szalony_geniusz),
  description: I18n.t(:szalony_geniusz_desc)
)
character_class.virtues.create(
  name: I18n.t(:tajemnice),
  description: I18n.t(:tajemnice_desc)
)
character_class.virtues.create(
  name: I18n.t(:zaufaj_mi_jestem_inzynierem),
  description: I18n.t(:zaufaj_mi_jestem_inzynierem_desc)
)

character_class = CharacterClass.create(name: I18n.t(:thane))
character_class.virtues.create(
  name: I18n.t(:analityczny_umysl),
  description: I18n.t(:analityczny_umysl_desc)
)
character_class.virtues.create(
  name: I18n.t(:strzelec_wyborowy),
  description: I18n.t(:strzelec_wyborowy_desc)
)
character_class.virtues.create(
  name: I18n.t(:zahartowany),
  description: I18n.t(:zahartowany_desc)
)

character_class = CharacterClass.create(name: I18n.t(:trickster))
character_class.virtues.create(
  name: I18n.t(:kanciarz),
  description: I18n.t(:kanciarz_desc)
)
character_class.virtues.create(
  name: I18n.t(:nieczysta_zagrywka),
  description: I18n.t(:nieczysta_zagrywka_desc)
)
character_class.virtues.create(
  name: I18n.t(:oszust),
  description: I18n.t(:oszust_desc)
)

character_class = CharacterClass.create(name: I18n.t(:ulfhednar))
character_class.virtues.create(
  name: I18n.t(:akrobata),
  description: I18n.t(:akrobata_desc)
)
character_class.virtues.create(
  name: I18n.t(:kameleon),
  description: I18n.t(:kameleon_desc)
)
character_class.virtues.create(
  name: I18n.t(:zabojca),
  description: I18n.t(:zabojca_desc)
)

character_class = CharacterClass.create(name: I18n.t(:wieszcz))
character_class.virtues.create(
  name: I18n.t(:badasz_hekseri),
  description: I18n.t(:badacz_hekseri_desc)
)
character_class.virtues.create(
  name: I18n.t(:mistrz_entropii),
  description: I18n.t(:mistrz_entropii_desc)
)
character_class.virtues.create(
  name: I18n.t(:tajemnica_arkana),
  description: I18n.t(:tajemnica_arkana_desc)
)

character_class = CharacterClass.create(name: I18n.t(:wiking))
character_class.virtues.create(
  name: I18n.t(:poczulem_krew),
  description: I18n.t(:poczulem_krew_desc)
)
character_class.virtues.create(
  name: I18n.t(:potomek_tyra),
  description: I18n.t(:potomek_tyra_desc)
)
character_class.virtues.create(
  name: I18n.t(:wiarus),
  description: I18n.t(:wiarus_desc)
)

character_class = CharacterClass.create(name: I18n.t(:wolwa))
character_class.virtues.create(
  name: I18n.t(:potega_nadziei),
  description: I18n.t(:potega_nadziei_desc)
)
character_class.virtues.create(
  name: I18n.t(:wladczyni_losu),
  description: I18n.t(:wladczyni_losu_desc)
)
character_class.virtues.create(
  name: I18n.t(:wiez_z_yggdrasilem),
  description: I18n.t(:wiez_z_yggdrasilem_desc)
)

character_class = CharacterClass.create(name: I18n.t(:walkiria))
character_class.virtues.create(
  name: I18n.t(:corka_frei),
  description: I18n.t(:corka_frei_desc)
)
character_class.virtues.create(
  name: I18n.t(:gwiazda_heimdala),
  description: I18n.t(:gwiazda_heimdala_desc)
)
character_class.virtues.create(
  name: I18n.t(:skrzydla_asgardu),
  description: I18n.t(:skrzydla_asgardu_desc)
)

#TODO this is not (obviously) idempotent: https://en.wikipedia.org/wiki/Idempotence Let's make it so executing the seeds twice or thrice doesn't get us three Berserkers

#TODO it looks like socjopata got tired with copy pasting copy texts from the manual. But we need all character_classes and accompanied virtues definitions from the Manual :>
