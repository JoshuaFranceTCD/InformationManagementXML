declare function local:calculate_funding($totalDonations as xs:decimal?,$totalGoal as xs:decimal?,$goal as xs:decimal?)
as xs:decimal?{
  let $f := $totalDonations * ($goal div $totalGoal )
  return round($f,2)
};


let $td := sum(donations//donation//payment//amount)
let $tc := count(AmnestyDonationWebsite/Campaigns/*)
let $tg := sum(for $g in //Goal return  xs:decimal(replace($g, " EUR",""))

)

for $x in AmnestyDonationWebsite/Campaigns/*
let $goal := xs:decimal(replace($x/Goal, " EUR",""))
where $goal > 0
let $f := local:calculate_funding($td,$tg,$goal)

return <campaignFunding >
{$x/@id}
 {$x/Name}
<funding> {$f} EUR</funding>
<goal> {$goal} EUR</goal>
<fundingUntilGoalMet>{$goal - $f} EUR</fundingUntilGoalMet>
</campaignFunding>
