
CITY=$1
DATE=$2
AGE=$3


while [ 1 -le 2 ]

do
        url_tmp=https://cdn-api.co-vin.in/api/v2/appointment/sessions/public/calendarByDistrict?district_id=$CITY\&date=$DATE

        curl $url_tmp -H 'User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:88.0) Gecko/20100101 Firefox/88.0' > data2.json

        find=`less data2.json|tr -s ',' '\n' | grep "\"min_age_limit\":$AGE" -A 1 -B 1 -B 9 |tr -s '"' ' '| grep 'pincode\|available_capacity\|min_age_limit\|vaccine'| grep -A 1 -A 2 -B 1 -E -e 'available_capacity :+[2-9]'`
        echo $find
        if [[ ! -z "$find" ]]
        then
                for i in {1..10}
                do
                        tput bel
                        sleep 0.2
                done
        else
                echo "No Slot found"
        fi

        unset find
        sleep 20

done
