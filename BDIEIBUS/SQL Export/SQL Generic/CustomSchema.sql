﻿/*
This script apply iB schema objects - S. Teodorani
*/

/* Create custom table for ib generic data */
if not exists (select * from sysobjects where name='hh_ibdata' and xtype='U')
 begin
  create table [hh_ibdata] (
  [key]           varchar(100),
  [codditt]       varchar(100),
  [value]         varchar(100),
  [description]   varchar(500)
)
 end


/* Add custom field an_hhlat_ib to anagra for latitude data */
if not exists (select * from INFORMATION_SCHEMA.COLUMNS where COLUMN_NAME='an_hhlat_ib' AND TABLE_NAME='anagra')
 begin
   alter table anagra add an_hhlat_ib decimal(18,6)
 end



/* Add custom field an_hhlon_ib to anagra for longitude data */
if not exists (select * from INFORMATION_SCHEMA.COLUMNS where COLUMN_NAME='an_hhlon_ib' AND TABLE_NAME='anagra')
 begin
   alter table anagra add an_hhlon_ib decimal(18,6)
 end

