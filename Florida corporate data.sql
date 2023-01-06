/*

	Simple SQL script to load Florida Corporate Data files into a staging table, then 

*/

drop table if exists CordataStaging;

create table CordataStaging (line nvarchar(1441))

bulk insert CordataStaging
from 'C:\Users\chris\Dev\cordata\cordata0.txt'
with (codepage = '65001', rowterminator = '0x0a');
go
-- (1026189 rows affected)

bulk insert CordataStaging
from 'C:\Users\chris\Dev\cordata\cordata1.txt'
with (codepage = '65001', rowterminator = '0x0a');
go
-- (1026456 rows affected)

bulk insert CordataStaging
from 'C:\Users\chris\Dev\cordata\cordata2.txt'
with (codepage = '65001', rowterminator = '0x0a');
go
-- (1026371 rows affected)

bulk insert CordataStaging
from 'C:\Users\chris\Dev\cordata\cordata3.txt'
with (codepage = '65001', rowterminator = '0x0a');
go
-- (1026413 rows affected)

bulk insert CordataStaging
from 'C:\Users\chris\Dev\cordata\cordata4.txt'
with (codepage = '65001', rowterminator = '0x0a');
go
-- (1026425 rows affected)

bulk insert CordataStaging
from 'C:\Users\chris\Dev\cordata\cordata5.txt'
with (codepage = '65001', rowterminator = '0x0a');
go
-- (1026247 rows affected)

bulk insert CordataStaging
from 'C:\Users\chris\Dev\cordata\cordata6.txt'
with (codepage = '65001', rowterminator = '0x0a');
go
-- (1026127 rows affected)

bulk insert CordataStaging
from 'C:\Users\chris\Dev\cordata\cordata7.txt'
with (codepage = '65001', rowterminator = '0x0a');
go
-- (1026291 rows affected)

bulk insert CordataStaging
from 'C:\Users\chris\Dev\cordata\cordata8.txt'
with (codepage = '65001', rowterminator = '0x0a');
-- (1026260 rows affected)

bulk insert CordataStaging
from 'C:\Users\chris\Dev\cordata\cordata9.txt'
with (codepage = '65001', rowterminator = '0x0a');
-- (1026193 rows affected)


select count(*) from CordataStaging
-- 10262972


-- Create a new corporate data table consisting of the 79 fields 
INSERT INTO [dbo].[CORDATA]
(
	[Corporation_Number],
	[Corporation_Name],
	[Status],
	[Filing_Type],
	[Address_1],
	[Address_2],
	[City],
	[State],
	[Zip],
	[Country],
	[Mail_Address_1],
	[Mail_Address_2],
	[Mail_City],
	[Mail_State],
	[Mail_Zip],
	[Mail_Country],
	[File_Date],
	[FEI_Number],
	[More_than_Six_Officers_Flag],
	[Last_Transaction_Date],
	[State_Country],
	[Report_Year_1],
	[Filler_1],
	[Report_Date_1],
	[Report_Year_2],
	[Filler_2],
	[Report_Date_2],
	[Report_Year_3],
	[Filler_3],
	[Report_Date_3],
	[RA_Name],
	[RA_Type],
	[RA_Address],
	[RA_City],
	[RA_State],
	[RA_Zip],
	[Officer_1_Title],
	[Officer_1_Type],
	[Officer_1_Name],
	[Officer_1_Address],
	[Officer_1_City],
	[Officer_1_State],
	[Officer_1_Zip],
	[Officer_2_Title],
	[Officer_2_Type],
	[Officer_2_Name],
	[Officer_2_Address],
	[Officer_2_City],
	[Officer_2_State],
	[Officer_2_Zip],
	[Officer_3_Title],
	[Officer_3_Type],
	[Officer_3_Name],
	[Officer_3_Address],
	[Officer_3_City],
	[Officer_3_State],
	[Officer_3_Zip],
	[Officer_4_Title],
	[Officer_4_Type],
	[Officer_4_Name],
	[Officer_4_Address],
	[Officer_4_City],
	[Officer_4_State],
	[Officer_4_Zip],
	[Officer_5_Title],
	[Officer_5_Type],
	[Officer_5_Name],
	[Officer_5_Address],
	[Officer_5_City],
	[Officer_5_State],
	[Officer_5_Zip],
	[Officer_6_Title],
	[Officer_6_Type],
	[Officer_6_Name],
	[Officer_6_Address],
	[Officer_6_City],
	[Officer_6_State],
	[Officer_6_Zip],
	[Filler_4]
)
SELECT
	SUBSTRING([line],1,12),
	SUBSTRING([line],13,192),
	SUBSTRING([line],205,1),
	SUBSTRING([line],206,15),
	SUBSTRING([line],221,42),
	SUBSTRING([line],263,42),
	SUBSTRING([line],305,28),
	SUBSTRING([line],333,2),
	SUBSTRING([line],335,10),
	SUBSTRING([line],345,2),
	SUBSTRING([line],347,42),
	SUBSTRING([line],389,42),
	SUBSTRING([line],431,28),
	SUBSTRING([line],459,2),
	SUBSTRING([line],461,10),
	SUBSTRING([line],471,2),
	SUBSTRING([line],473,8),
	SUBSTRING([line],481,14),
	SUBSTRING([line],495,1),
	SUBSTRING([line],496,8),
	SUBSTRING([line],504,2),
	SUBSTRING([line],506,4),
	SUBSTRING([line],510,1),
	SUBSTRING([line],511,8),
	SUBSTRING([line],519,4),
	SUBSTRING([line],523,1),
	SUBSTRING([line],524,8),
	SUBSTRING([line],532,4),
	SUBSTRING([line],536,1),
	SUBSTRING([line],537,8),
	SUBSTRING([line],545,42),
	SUBSTRING([line],587,1),
	SUBSTRING([line],588,42),
	SUBSTRING([line],630,28),
	SUBSTRING([line],658,2),
	SUBSTRING([line],660,9),
	SUBSTRING([line],669,4),
	SUBSTRING([line],673,1),
	SUBSTRING([line],674,42),
	SUBSTRING([line],716,42),
	SUBSTRING([line],758,28),
	SUBSTRING([line],786,2),
	SUBSTRING([line],788,9),
	SUBSTRING([line],797,4),
	SUBSTRING([line],801,1),
	SUBSTRING([line],802,42),
	SUBSTRING([line],844,42),
	SUBSTRING([line],886,28),
	SUBSTRING([line],914,2),
	SUBSTRING([line],916,9),
	SUBSTRING([line],925,4),
	SUBSTRING([line],929,1),
	SUBSTRING([line],930,42),
	SUBSTRING([line],972,42),
	SUBSTRING([line],1014,28),
	SUBSTRING([line],1042,2),
	SUBSTRING([line],1044,9),
	SUBSTRING([line],1053,4),
	SUBSTRING([line],1057,1),
	SUBSTRING([line],1058,42),
	SUBSTRING([line],1100,42),
	SUBSTRING([line],1142,28),
	SUBSTRING([line],1170,2),
	SUBSTRING([line],1172,9),
	SUBSTRING([line],1181,4),
	SUBSTRING([line],1185,1),
	SUBSTRING([line],1186,42),
	SUBSTRING([line],1228,42),
	SUBSTRING([line],1270,28),
	SUBSTRING([line],1298,2),
	SUBSTRING([line],1300,9),
	SUBSTRING([line],1309,4),
	SUBSTRING([line],1313,1),
	SUBSTRING([line],1314,42),
	SUBSTRING([line],1356,42),
	SUBSTRING([line],1398,28),
	SUBSTRING([line],1426,2),
	SUBSTRING([line],1428,9),
	SUBSTRING([line],1437,4)
FROM dbo.CordataStaging
-- (10262972 rows affected)
-- 11 min 21 sec


-- Remove whitespaces, just rtrim at this time, run this code together
	declare @SQL varchar(max)
	declare @TableName nvarchar(128)
	set @TableName = 'Cordata'
 
	SELECT 
		@SQL = COALESCE(@SQL + ',[', '[') + COLUMN_NAME + ']=RTRIM([' + COLUMN_NAME + '])'
	FROM 
		INFORMATION_SCHEMA.COLUMNS
	WHERE 
		TABLE_NAME = @TableName
		AND DATA_TYPE = 'nvarchar'

	-- select @sql

	SET @SQL = 'UPDATE [' + @TableName + '] SET ' + @SQL
	EXECUTE(@SQL)
	-- (10262972 rows affected)
	-- 7 min 55 sec

-- Remove staging table
drop table if exists CordataStaging; 