@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Spacefarer Stardust Colletion CDS view'
@Metadata.ignorePropagatedAnnotations: true
define view entity ZSM0514_V_SPACEFARER_SD_COLL
  as select from    zsm0514_t_sfarer as spacefarer
    left outer join zsm0514_t_sd_col as stardust_collection on spacefarer.id = stardust_collection.id
    left outer join zsm0514_t_sdust  as stardust            on stardust.id = stardust_collection.stardust
{
  key spacefarer.id            as ID,

      spacefarer.name          as Name,
      stardust.id              as StardustID,
      stardust.color           as StardustColor,
      stardust.weight          as StardustWeight,
      stardust.state_of_matter as StardustStateOfMatter,
      stardust.value           as StardustValue,
      stardust.raw_dust        as StardustRawDust
}
