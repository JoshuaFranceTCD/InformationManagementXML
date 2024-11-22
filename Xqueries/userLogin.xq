let $donors := doc("donors.xml")

let $donorId := "1" (: Replace with the Donor ID to log in :)
let $donor := $donors//DonorLink[DonorID=$donorId]
return
    if (empty($donor)) then
        "Login failed: Donor ID not found."
    else
        concat("Login successful. Donor ID: ", $donorId)
