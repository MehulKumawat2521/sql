-- rename table -- DDL
rename table company to newcompany1;
-- or 
alter table newcompany1 rename to company;

Alter table company rename column phone to mobile;

alter table company 
add primary key(id);

alter table company
add constraint regex_company_uk unique(mobile);
alter table company
drop constraint regex_company_uk;

-- data type
alter table company modify id double;

-- new name with data type
alter table company change id newid varchar(20);
