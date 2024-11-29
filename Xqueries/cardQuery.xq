let $name := "John Smith"
let $personInfo := //cardInfo[holderName = $personName]

<results>
  {
      <personDetails>
        <holderName>{ $personInfo/holderName/text() }</holderName>
        <cardNumbers>
          { for $cardNumber in $personInfo/cardNumber return <cardNumber>{$cardNumber/text()}</cardNumber> }
        </cardNumbers>
        <billingAddresses>
          { for $billingAddress in $personInfo/billingAddress return <billingAddress>{$billingAddress/text()}</billingAddress> }
        </billingAddresses>
        <expiryDates>
          { for $expiryDate in $personInfo/expiryDate return <expiryDate>{$expiryDate/text()}</expiryDate> }
        </expiryDates>
      </personDetails>
  }
</results>