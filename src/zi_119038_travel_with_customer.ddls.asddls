@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'TravelWithCustomer'
@Metadata.ignorePropagatedAnnotations: false
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity ZI_119038_Travel_With_Customer
  as select from ZI_119038_Travel_Xt
  association [1] to /dmo/customer as _Customer on ZI_119038_Travel_Xt.CustomerId = _Customer.customer_id
{
  key TravelId,
      AgencyId,
      CustomerId,
      BeginDate,
      EndDate,
      Price,
      TotalPrice,
      BookingFee,
      CurrencyCode,
      Description,
      Status,
      _Customer
}
