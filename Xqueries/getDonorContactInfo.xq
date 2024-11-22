for $donor in /donors/donor
  where $donor/@id="1"
return 
    <donorinfo>
          <name>{string($donor/name)}</name>
          <email>{string($donor/email)}</email>
          <countryCode>{string($donor/phoneNumber/countryCode)}</countryCode>
          <number>{string($donor/phoneNumber/number)}</number>
    </donorinfo>
