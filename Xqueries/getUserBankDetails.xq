for $d in /BankAccountDetails/account
  where $d/@donorId="1"
return
    <nameAndBank>
      <iban>{string($d/iban)} </iban>
      <BIC>{string($d/BIC)}</BIC>
    </nameAndBank>
    