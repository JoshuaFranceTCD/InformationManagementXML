let $x := sum(//payment[paymentType = "CREDITCARD"]/amount)
let $y:= sum(//payment[paymentType = "DEBITCARD"]/amount)
let $z:= round($x div $y,2)

return 
<credit>
<outstandingCredit> {$y} </outstandingCredit>
<percentageOfCredit>{$z}%</percentageOfCredit>
</credit>




