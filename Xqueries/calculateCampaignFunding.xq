let $td := sum(donations//donation//payment//amount)
let $tc := count(AmnestyDonationWebsite/Campaigns/*)
let $f := round( $td div $tc,2)
for $x in AmnestyDonationWebsite/Campaigns/*
let $goal := xs:decimal(replace($x/Goal, " EUR",""))
where $goal > 0

return <campaignFunding >
{$x/@id}
 {$x/Name}
<funding> {$f} EUR</funding>
<goal> {$goal} EUR</goal>
<fundingUntilGoalMet>{$goal - $f} EUR</fundingUntilGoalMet>
</campaignFunding>
