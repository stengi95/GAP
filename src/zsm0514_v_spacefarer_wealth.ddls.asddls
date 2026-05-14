@AbapCatalog.viewEnhancementCategory: [ #NONE ]

@AccessControl.authorizationCheck: #NOT_REQUIRED

@EndUserText.label: 'Spacefarer Wealth CDS view'

@Metadata.ignorePropagatedAnnotations: true

define view entity ZSM0514_V_SPACEFARER_WEALTH
  as select from zsm0514_t_sfarer as  spacefarer 
    left outer join   zsm0514_t_sd_col as stardust_collection on spacefarer.id = stardust_collection.id
    left outer join   zsm0514_t_sdust  as stardust            on stardust.id   = stardust_collection.stardust


{
  key spacefarer.id                           as ID,

      spacefarer.name                         as Name,
      spacefarer.credit + sum(stardust.value) as Wealth
}

group by spacefarer.id,
         spacefarer.name,
         spacefarer.credit
