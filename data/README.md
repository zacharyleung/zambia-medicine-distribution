[comment]: <> (Please also refer to the Google document)
[comment]: <> ("GitHub data files for MSOM paper Zambia")

This dataset contains data concerning the Zambia public sector supply chain for essential medical drugs and supplies.

# facility-accessibility.csv

The facility accessibility
data table has the following columns:

 - **district**: the district that the facility is in
 - **facility**: the name of the facility
 - **Xi** (for i = 1, 2, ..., 12): the probability that the facility will
    be accessible for a delivery of medical drugs and supplies by the
    DHO in month i of the year
 - **has_full_accessibility**: `has_full_accessibility = TRUE` if `Xi = 1`
    for all i = 1, 2, ..., 12, and `has_full_accessibility = FALSE` otherwise



# facility-lead-times.csv

The facility lead times 
data table has the following columns:

 - **district**: the district that the facility is in
 - **configuration**: the configuration used by the district, either
   `xdock` (cross-docking) or `istock` (intermediate stocking)
 - **facility**: the name of the facility
 - **has_full_accessibility**: `has_full_accessibility = TRUE` if `Xi = 1`
    for all i = 1, 2, ..., 12, and `has_full_accessibility = FALSE` otherwise
 - **start_date**: the date when a shipment arrived at the DHO
 - **end_date**: the date when a shipment was delivered to the facility
 - **lead_time_days**: the lead times in days for a shipment



# reference-facilities-daily-demand-mean.csv

LaTeX
The file \texttt{reference-facilities-daily-demand-mean.csv} contains
the resulting average daily demand estimates for these facilities.



# reference-facilities-normalized-weekly-demand-mean.csv

By aggregating this data at the weekly level and normalizing these curves so that the mean weekly demand equals one, we thus obtained 17 different seasonality patterns associated with these specific locations. This data can be accessed from the file \texttt{reference-facilities-normalized-weekly-demand-mean.csv}





# stock-cards-transactions.csv

The stock cards
data table has the following columns:

 - **file_name**:
   the name of the file from which
   the stock card transaction was transcribed
 - **district**: the district that the facility is in
 - **facility**: the name of the facility
 - **drug_name**:
   the name of the drug for which
   the stock card transaction was transcribed
 - **date**:
   the date of the stock card transaction
 - **transaction_type**:
   the type of stock card transaction,
   usually one of issuance, physical count, receipt or adjustment
 - **transacting_party**:
   the transacting party,
   usually one of
   DISP (dispensary), OPD (outpatient department),
   MSL, DHO (district health office), CHW (community health workers)
 - **receipt**:
   the amount received by the facility
 - **issuance**:
   the amount issued by the facility
 - **adjustment**:
   the amount of inventory adjustments at the facility
   (e.g., inventory expired, inventory transferred)
 - **stock_balance**:
   the inventory level at the facility
   after receipt, issuance and adjustment
 - **units**: usually doses, sometimes boxes






