[comment]: # (Please also refer to the Google document)
[comment]: # ("GitHub data files for MSOM paper Zambia")

This dataset contains data concerning the Zambia public sector supply chain for essential medical drugs and supplies.





# district-data.csv

The `district data`
data table has the following columns:

 - **district**: the name of the district
 - **order_offset**: see note below
 - primary_leadtime:
   the primary lead time expressed as a number of timesteps
 - mean_secondary_leadtime (number of timesteps)
   the mean secondary lead time expressed as a number of timesteps

Note that in the simulator,
it is assumed that there are 48 timesteps in a year.
In the real world,
each district receives a shipment every month.
This is modeled in the simulator in the following way.
A given district *k* will submit orders in timesteps *t* where
*t* ≡ *oₖ* (mod 4),
where *oₖ* ∈ {0, 1, 2, 3} is the order offset for district *k*.




# facility-data.csv

The `facility data`
data table has the following columns:

 - **district**: the district that the facility is in
 - **facility**: the name of the facility
 - **catchment**: the catchment population of that facility
 - **daily_patients**:
   the average number of patients visiting the facility daily,
   as reported from a survey of local health personnel
   conducted by all commodity planners in their respective districts
   in the Fall of 2009
 - **incidence**:
   the estimated number of malaria cases per 1000 people per year,
   in each district of Zambia,
   as estimated by the 2006 epidemiological survey of
   Zambia's health centers obtained from the Ministry of Health
 - **yearly_demand_stockcards**:
   The estimated yearly demand for Artemether/lumefantrine
   as estimated from the stock control cards,
   in units of adult doses.
   If there is a lack of sufficient stock card data
   to obtain an accurate estimate of this quantity,
   then this value is set to `NA`
 - **latitude**: the latitude of this facility
 - **longitude**: the longitude of this facility
 - **shape**: the facility was assigned a demand shape index shape
 - **Xi** (for i = 1, 2, …, 12): the probability that the facility will
    be accessible for a delivery of medical drugs and supplies by the
    DHO in month i of the year





# facility-weekly-demand-mean.csv




# primary-leadtimes-historical-data.csv

The `primary lead times historical data`
data table has the following columns:

 - **district**: the district
 - **submit**: the deadline by which the district needs to submit an
   order to MSL
 - **receive**: the date at which MSL will deliver a shipment to
   the district

Note that this table only includes the first shipment
with a submission deadline in the month of January 2009.






# reference-facilities-daily-demand-mean.csv

The daily demand mean for the reference facilities
data table has the following columns:

 - **district**: the district that the facility is in
 - **facility**: the name of the facility
 - **t** for t = 1, 2, …, 365: the estimated daily demand mean in day **t**




# reference-facilities-normalized-weekly-demand-mean.csv

For the 17 reference facilities,
we aggregate the daily demand mean into 48 "weeks",
and normalize the weekly demand mean so that
the mean weekly demand equals one.
This gives us 17 demand "shapes"
The normalized weekly demand mean for the reference facilities
data table has the following columns:

 - **district**: the district that the facility is in
 - **facility**: the name of the facility
 - **shape**: the unique shape number *i* of the facility, with
   *i* = 1, 2, …, 17
 - **Vk** for **k** = 1, 2, …, 48:
   the estimated normalized weekly demand mean in week **k**





# secondary-leadtimes-historical-data.csv

 - **district**: the district that the facility is in
 - **configuration**: the configuration used by the district, either
   `xdock` (cross-docking) or `istock` (intermediate stocking)
 - **facility**: the name of the facility
 - **facility_has_full_accessibility**:
   `has_full_accessibility = TRUE` if `Xi = 1`
   for all i = 1, 2, …, 12, and `has_full_accessibility = FALSE` otherwise
 - **start_date**:
   if **configuration** = `istock`,
   then **start_date** = the date when the facility report was received;
   if **configuration** = `xdock`,
   then **start_date** = the date when MSL delivered to the district.
 - **end_date**:
   the date when the district delivered to the facility
 - **lead_time_days**:
   the lead time in days, equal to **end_date** minus **start_date**




# stock-cards-all.csv

The `stock cards transactions`
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






