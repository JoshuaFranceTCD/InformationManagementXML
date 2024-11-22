let $donorId := "1" (: Replace with the Donor ID to log in :)
let $donor := //DonorLink[DonorID=$donorId]
return
    if (empty($donor)) then
        "Login failed: Donor ID not found."
    else
        concat("Login successful. Donor ID: ", $donorId)
