let $donations := //payment/amount
let $total := sum($donations)
return <UpdatedPaymentSystem>
    {
        for $attr in //Attributes
        return
            <Attributes>
                <MoneyReceived type="int">{$total}</MoneyReceived>
                {$attr/Currency}
            </Attributes>
    }
    //Methods,
    //OrganisationBankAccount
</UpdatedPaymentSystem>
