let $td := sum(donations//donation//payment//amount)
let $tc := count(AmnestyDonationWebsite/Campaigns/*)
let $f := round( $td div $tc,2)
for $x in AmnestyDonationWebsite/Campaigns/*
let $goal := xs:decimal(replace($x/Goal, " EUR",""))

return <campaignFunding >
{$x/@id}
<name> {$x/Name}</name>
<funding> {$f} EUR</funding>
<goal> {$goal} EUR</goal>
<fundingUntilGoalMet>{$goal - $f} EUR</fundingUntilGoalMet>



</campaignFunding>
