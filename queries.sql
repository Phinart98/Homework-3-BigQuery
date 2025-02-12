-- Question 1
SELECT * FROM `starlit-sum-448800-v5.hw3.yellow_taxi_external`;

-- Question 2
SELECT COUNT(DISTINCT PULocationID) FROM `starlit-sum-448800-v5.hw3.yellow_taxi_materialized`;

-- Question 3
SELECT PULocationID FROM `starlit-sum-448800-v5.hw3.yellow_taxi_materialized`;
-- then
SELECT PULocationID, DOLocationID FROM `starlit-sum-448800-v5.hw3.yellow_taxi_materialized`;

-- Question 4
SELECT COUNT(*) FROM `starlit-sum-448800-v5.hw3.yellow_taxi_materialized` 
WHERE fare_amount = 0;

-- Question 5
CREATE OR REPLACE TABLE `starlit-sum-448800-v5.hw3.yellow_taxi_partitioned`
PARTITION BY DATE(tpep_dropoff_datetime)
CLUSTER BY VendorID AS
SELECT * FROM `starlit-sum-448800-v5.hw3.yellow_taxi_materialized`;

-- Question 6
SELECT DISTINCT VendorID FROM `starlit-sum-448800-v5.hw3.yellow_taxi_materialized`
WHERE tpep_dropoff_datetime BETWEEN '2024-03-01' AND '2024-03-15';
-- then
SELECT DISTINCT VendorID FROM `starlit-sum-448800-v5.hw3.yellow_taxi_partitioned`
WHERE tpep_dropoff_datetime BETWEEN '2024-03-01' AND '2024-03-15';


