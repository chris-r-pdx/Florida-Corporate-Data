# Florida Corporate Data
This is a basic SQL script to assist in the loading and preparation of Florida's Corporate Data for further querying. Florida does provide a search function for corporations (https://dos.myflorida.com/sunbiz/search/) including searching by name,  officer or registered agent, street address, etc., however loading this data to a SQL database will allow for more robust queries and matching to alternative data sources.

For this project I used Microsoft SQL Server and the associated SQL file is in T-SQL: https://github.com/chris-r-pdx/Florida-Corporate-Data/blob/867333275778074af0c7dbe4d8550055f3ad2bd4/Florida%20corporate%20data.sql

## Data
Florida's Corporate Data file is available here: https://dos.myflorida.com/sunbiz/other-services/data-downloads/corporate-data-file/

On the Data Access Portal (public ftp) navigate to and download: \Public\doc\Quarterly\Cor\cordata.zip

For purpose of this script cordata.zip was last modified 10/9/2022 10:21:26, size 1,390,275 (KB)

Within this zip are a series of text files:

![Corporate data text files](cordata_files.png)

The text files include 79 fields and are structured as follows:
https://dos.myflorida.com/sunbiz/other-services/data-downloads/corporate-data-file/file-structure/

## Loading and Transformation
 Within a database I create a table, 'CordataStaging', which contains a single column to hold each line of data from the text files extracted from the zip file downloaded.

I then used the 'bulk insert' command on each of those text files to insert each row into the staging table.

https://github.com/chris-r-pdx/Florida-Corporate-Data/blob/867333275778074af0c7dbe4d8550055f3ad2bd4/Florida%20corporate%20data.sql#L1-L71


I then select from the staging table into a new 'Cordata' table each of the 79 fields, as substrings of the text.

https://github.com/chris-r-pdx/Florida-Corporate-Data/blob/867333275778074af0c7dbe4d8550055f3ad2bd4/Florida%20corporate%20data.sql#L74-L239

I then removed trailing whitespaces from all 79 fields and dropped the staging table.

https://github.com/chris-r-pdx/Florida-Corporate-Data/blob/867333275778074af0c7dbe4d8550055f3ad2bd4/Florida%20corporate%20data.sql#L242-L263

## Next Steps
Depending on your needs further transformation of the CORDATA table could take place, e.g. indexing, converting fields containing dates into a date type field, etc.
