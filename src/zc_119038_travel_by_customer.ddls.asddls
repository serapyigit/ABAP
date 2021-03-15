@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'TravelByCustomer'
@Metadata.ignorePropagatedAnnotations: false
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity ZC_119038_Travel_By_Customer
  as select from ZI_119038_Travel_By_Customer
{
  key CustomerId,
      count(*)        as NumberOfTravels,
      @Semantics.amount.currencyCode: 'CurrencyCode'
      sum(TotalPrice) as TotalExpenses,
      CurrencyCode
}
group by
  CustomerId,
  CurrencyCode
having
  count(*) > 10
