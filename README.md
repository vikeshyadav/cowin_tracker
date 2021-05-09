# my_open_source_code
find.sh
  - This script run every 7 seconds in loop forever in terminal and it is aligned with Gonverment rule of 100 call in 5 min.
  - If no availability found the it will return "No Slot found"
  - If it found any availability then will print output as described in example section with a beep sounding 10 times. 
  - This will only show availability if vaccine is greater then 1 in count
  - to modify you can change the script value[1-9]
  - this script will create a data2.json file in current directory
  - change date of script everyday just stop and start with new date. 


Enviorment needed 
  - Bash shell
  - iterm2 preferred

Example run of script

./find.sh DISTRICT_ID DATE(DD-MM-YYYY) AGE
  i.e ./find.sh 202 09-05-2021 45

DISTRICT_ID
  - Cowin have provided a API to list all the state with its ID and its district with ID, 
    - First List your state ID from this API. Copy and paste into your browser and hit enter. This will list all the STATES in India with State_ID
      - https://cdn-api.co-vin.in/api/v2/admin/location/states 
    - secondly Grap your state ID and then pass this ID to below API to list all the ditrict IDs in your state mapped with district name. i.e 9 is state_ID for  DELHI
      - https://cdn-api.co-vin.in/api/v2/admin/location/districts/9 
        - This above API will list all the Districts in your state with DISTRICT_ID, Copy the ID of your district and you will pass this ID as DISTRICT_ID in script


DATE 
  - Pass current date in format of DD-MM-YYYY

AGE 
  - Pass AGE either 18 for 18-44 or 45 for 45+ age group


Example run of script

  ./find.sh 202 09-05-2021 45
  
Example Output 
    % Total    % Received % Xferd  Average Speed   Time    Time     Time  Current
                                 Dload  Upload   Total   Spent    Left  Speed
    100 39513  100 39513    0     0   354k      0 --:--:-- --:--:-- --:--:--  354k

    No Slot found
    
If it found any availibly then this will list below output.

  pincode available_capacity min_age_limit vaccine_Name'
  
  
  Author
  Vikesh Yadav
  
**  Please use this script in need if any high risk person not getting availability. **
