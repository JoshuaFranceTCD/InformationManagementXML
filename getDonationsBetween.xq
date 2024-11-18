let $startYear := 2024
let $startMonth := 01
let $startDay := 01

let $endYear := 2024
let $endMonth := 05
let $endDay := 01

for $donation in /donations/donation
  let $year := $donation/donationTime/year
  let $month := $donation/donationTime/month
  let $day := $donation/donationTime/day
  
  where 
    (
      ($year > $startYear) or
      ($year = $startYear and $month > $startMonth) or
      ($year = $startYear and $month = $startMonth and $day > $startDay)
    )
    and
    (
      ($year < $endYear) or
      ($year = $endYear and $month < $endMonth) or
      ($year = $endYear and $month = $endMonth and $day < $endDay)
    )
  
  return 
      <Donation>
          <donorId>{ $donation/@donorId }</donorId>
          <donationTime>
              { $year }
              { $month }
              { $day } 
              { $donation//hour }
              { $donation//minute }
          </donationTime>
          { $donation/payment }
      </Donation>
