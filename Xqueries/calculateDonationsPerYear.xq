
declare function local:yearly_difference($y1 as xs:decimal?,$y2 as xs:decimal?)
as xs:decimal?{
  let $p := round(($y2 - $y1) div $y1 * 100,2)
  return $p
};

let $x := sum(//donation[donationTime/year = 2024]/payment/amount)
let $y := sum(//donation[donationTime/year = 2023]/payment/amount)
let $a := if(local:yearly_difference($x,$y)>= 0) {"+"} else {"-"}




return <donation> 
<year1>Total of Dontations in 2023 = {$x}</year1>
<year2>2024 Dontation = {$y}</year2>
<donationIncrease> Percentage increase/decrease in donations from 2023 to 2024 is {$a} {local:yearly_difference($x,$y)}%</donationIncrease>
</donation>
