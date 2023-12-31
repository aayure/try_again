-- Creating table for bike data
create table bike_data as select * from read_csv_auto('./data/citibike-tripdata.csv.gz', union_by_name=True, filename=True);
-- Creating table for Weather
create table central_park_weather as select * from read_csv_auto('./data/central_park_weather.csv', union_by_name=True, filename=True);
-- Creating table for fhv bases 
create table fhv_bases as select * from read_csv_auto('./data/fhv_bases.csv', union_by_name=True, filename=True);
-- Creating table for fhv tripdata
create table fhv_tripdata as select * from read_parquet('./data/taxi/fhv_tripdata.parquet', union_by_name=True, filename=True);
-- Creating table for fhvhv tripdata
create table fhvhv_tripdata as select * from read_parquet('./data/taxi/fhvhv_tripdata.parquet', union_by_name=True, filename=True);
-- Creating table for green tripdata
create table green_tripdata as select * from read_parquet('./data/taxi/green_tripdata.parquet', union_by_name=True, filename=True);
-- Creating table for yellow_tripdata
create table yellow_tripdata as select * from read_parquet('./data/taxi/yellow_tripdata.parquet', union_by_name=True, filename=True);
