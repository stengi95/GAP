@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Space Faction'
@Metadata.ignorePropagatedAnnotations: true
define view entity ZSM0514_V_FACTION
  as select from zsm0514_t_s_fact as faction
    inner join   zsm0514_t_sfarer as spacefarer on spacefarer.faction = faction.faction
{
  key faction.faction                 as Faction,
      count( distinct spacefarer.id ) as NumberOfSpacefarers

}
group by
  faction.faction
