let $x := sum(//donation[donationTime/year = 2024]/payment/amount)
let $y := sum(//donation[donationTime/year = 2023]/payment/amount)
let $z := ($y - $x) div $y * 100
let $a := if($z >= 0) {"+"} else {"-"}




return <donation> 
<year1>Total of Dontations in 2023 = {$x}</year1>
<year2>2024 Dontation = {$y}</year2>
<donationIncrease> Percentage increase/decrease in donations from 2023 to 204 is {$a} {$z}%</donationIncrease>
</donation>
