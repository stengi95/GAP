@AbapCatalog.viewEnhancementCategory: [ #NONE ]

@AccessControl.authorizationCheck: #NOT_REQUIRED

@EndUserText.label: 'Spacefarer CDS view'

@Metadata.ignorePropagatedAnnotations: true

define view entity ZSM0514_V_SPACEFARER
  as select from zsm0514_t_sfarer as spacefarer

  association to zsm0514_t_planet as planet on spacefarer.origin_planet = planet.planet

{
  key id                     as Id,

      name                   as Name,
      wormhole_navigation    as WormholeNavigation,
      reputation             as Reputation,
      credit                 as Credit,
      origin_planet          as OriginPlanet,
      planet.spacesuit_color as SpaceSuit_Color,
      faction                as Faction,
      fact_position          as FactPosition
}
