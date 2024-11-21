declare variable $selectedQuery := "specificExpiryDate"; (: Change to select query :)

<results>
  {
    if ($selectedQuery = "allHolderNames") then
      for $holderName in //holderName
      return <holderName>{$holderName/text()}</holderName>

    else if ($selectedQuery = "allCardNumbers") then
      for $cardNumber in //cardNumber
      return <cardNumber>{$cardNumber/text()}</cardNumber>

    else if ($selectedQuery = "specificHolderInfo") then
      for $cardInfo in //cardInfo[holderName="John Smith"]
      return $cardInfo

    else if ($selectedQuery = "secondBillingAddress") then
      let $billingAddress := /debitCredit/cardInfo[2]/billingAddress
      return $billingAddress

    else if ($selectedQuery = "specificExpiryDate") then
      for $expiryDate in //cardInfo[cardNumber="9013284528563965"]/expiryDate
      return <expiryDate>{$expiryDate/text()}</expiryDate>

    else if ($selectedQuery = "allCardDetails") then
      for $cardInfo in //cardInfo
      return $cardInfo

  }
</results>
