/* You will need to swap in your table names, region name, tenant name, bucket name, and file names */

begin
 dbms_cloud.copy_data(
    table_name =>'CHANNELS',
    credential_name =>'OBJ_STORE_CRED',
    file_uri_list =>'https://swiftobjectstorage.us-ashburn-1.oraclecloud.com/v1/oracleiscool/LOAD-DATA/chan_v3.dat',
    format => json_object('ignoremissingcolumns' value 'true', 'removequotes' value 'true')
 );
end;
/

begin
 dbms_cloud.copy_data(
    table_name =>'COUNTRIES',
    credential_name =>'OBJ_STORE_CRED',
    file_uri_list =>'https://swiftobjectstorage.us-ashburn-1.oraclecloud.com/v1/oracleiscool/LOAD-DATA/coun_v3.dat',
    format => json_object('ignoremissingcolumns' value 'true', 'removequotes' value 'true')
 );
end;
/

begin
 dbms_cloud.copy_data(
    table_name =>'CUSTOMERS',
    credential_name =>'OBJ_STORE_CRED',
    file_uri_list =>'https://swiftobjectstorage.us-ashburn-1.oraclecloud.com/v1/oracleiscool/LOAD-DATA/cust1v3.dat',
    format => json_object('ignoremissingcolumns' value 'true', 'removequotes' value 'true', 'dateformat' value 'YYYY-MM-DD-HH24-MI-SS')
 );
end;
/

begin
 dbms_cloud.copy_data(
    table_name =>'SUPPLEMENTARY_DEMOGRAPHICS',
    credential_name =>'OBJ_STORE_CRED',
    file_uri_list =>'https://swiftobjectstorage.us-ashburn-1.oraclecloud.com/v1/oracleiscool/LOAD-DATA/dem1v3.dat',
    format => json_object('ignoremissingcolumns' value 'true', 'removequotes' value 'true')
 );
end;
/

begin
 dbms_cloud.copy_data(
    table_name =>'SALES',
    credential_name =>'OBJ_STORE_CRED',
    file_uri_list =>'https://swiftobjectstorage.us-ashburn-1.oraclecloud.com/v1/oracleiscool/LOAD-DATA/dmsal_v3.dat',
    format => json_object('ignoremissingcolumns' value 'true', 'removequotes' value 'true', 'dateformat' value 'YYYY-MM-DD')
 );
end;
/

begin
 dbms_cloud.copy_data(
    table_name =>'PRODUCTS',
    credential_name =>'OBJ_STORE_CRED',
    file_uri_list =>'https://swiftobjectstorage.us-ashburn-1.oraclecloud.com/v1/oracleiscool/LOAD-DATA/prod1v3.dat',
    format => json_object('delimiter' value '|', 'quote' value '^', 'ignoremissingcolumns' value 'true', 'dateformat' value 'YYYY-MM-DD-HH24-MI-SS', 'blankasnull' value 'true')
 );
end;
/

begin
 dbms_cloud.copy_data(
    table_name =>'PROMOTIONS',
    credential_name =>'OBJ_STORE_CRED',
    file_uri_list =>'https://swiftobjectstorage.us-ashburn-1.oraclecloud.com/v1/oracleiscool/LOAD-DATA/prom1v3.dat',
    format => json_object('ignoremissingcolumns' value 'true', 'removequotes' value 'true', 'dateformat' value 'YYYY-MM-DD-HH24-MI-SS', 'blankasnull' value 'true')
 );
end;
/

begin
 dbms_cloud.copy_data(
    table_name =>'SALES',
    credential_name =>'OBJ_STORE_CRED',
    file_uri_list =>'https://swiftobjectstorage.us-ashburn-1.oraclecloud.com/v1/oracleiscool/LOAD-DATA/sale1v3.dat',
    format => json_object('ignoremissingcolumns' value 'true', 'removequotes' value 'true', 'dateformat' value 'YYYY-MM-DD', 'blankasnull' value 'true')
 );
end;
/

begin
 dbms_cloud.copy_data(
    table_name =>'TIMES',
    credential_name =>'OBJ_STORE_CRED',
    file_uri_list =>'https://swiftobjectstorage.us-ashburn-1.oraclecloud.com/v1/oracleiscool/LOAD-DATA/time_v3.dat',
    format => json_object('ignoremissingcolumns' value 'true', 'removequotes' value 'true', 'dateformat' value 'YYYY-MM-DD-HH24-MI-SS', 'blankasnull' value 'true')
 );
end;
/


begin
 dbms_cloud.copy_data(
    table_name =>'COSTS',
    credential_name =>'OBJ_STORE_CRED',
    file_uri_list =>'https://swiftobjectstorage.us-ashburn-1.oraclecloud.com/v1/oracleiscool/LOAD-DATA/costs.dat',
    format => json_object('ignoremissingcolumns' value 'true', 'dateformat' value 'YYYY-MM-DD', 'blankasnull' value 'true')
 );
end;
/
