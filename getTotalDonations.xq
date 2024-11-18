let $donorId := "1"
  
for $d in /donors/donor
  where $d/[@id] = $donorId

let $total := sum(/donations/donation[@donorId = $donorId]/payment/amount)

return
  <Info>
    <Name>
      {string($d/name) }
    </Name>  
    <TotalAmount> 
      {string($total) }
    </TotalAmount>  
  </Info>
