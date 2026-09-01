Invariant: medcom-uuid
Description: "The value shall correspond to the structure of an UUID"
Severity: #error
Expression: "$this.matches('(?i)^urn:uuid:[0-9a-f]{8}-[0-9a-f]{4}-[45][0-9a-f]{3}-[89ab][0-9a-f]{3}-[0-9a-f]{12}$')"

Invariant: medcom-document-bundle-id-uuid
Description: "The value shall correspond to the structure of an UUID"
Severity: #error
Expression: "$this.matches('(?i)^[0-9a-f]{8}-[0-9a-f]{4}-[45][0-9a-f]{3}-[89ab][0-9a-f]{3}-[0-9a-f]{12}$')"

Invariant: medcom-datetime-has-time-offset-zulu
// This invariant allows both zulu and offset time zones.
//Winter time
//"2025-11-27T13:34:56+01:00"
//"2025-11-27T12:34:56.789Z"
//Summer time
//"2025-06-27T14:34:56+02:00"
//"2025-06-27T12:34:56.789Z"
Description: "dateTime must include date, time, and time zone."
Severity: #error
Expression: "$this.toString().matches('^[0-9]{4}-(0[1-9]|1[0-2])-(0[1-9]|[12][0-9]|3[01])T([01][0-9]|2[0-3]):[0-5][0-9]:[0-5][0-9]([.][0-9]+)?(Z|[+-][0-9]{2}:[0-9]{2})$')"

//Not currently use in this IG, but is saved for future standard development.          
Invariant: medcom-datetime-has-time-zulu
// This invariant only allows zulu time.
//"2025-11-27T12:34:56.789Z" (equals "2025-11-27T13:34:56+01:00")
//"2025-06-27T12:34:56.789Z" (equals "2025-06-27T14:34:56+02:00")
Description: "dateTime must include date, time, and time zone."
Severity: #error
Expression: "$this.toString().matches('^[0-9]{4}-(0[1-9]|1[0-2])-(0[1-9]|[12][0-9]|3[01])T([01][0-9]|2[0-3]):[0-5][0-9]:[0-5][0-9]([.][0-9]+)?Z$')"

Invariant: medcom-canonical-semver
Description: "The canonical SHALL include an explicit semantic version (semver) with optional prerelease (-...) and build metadata (+...)."
Severity: #error
Expression: "matches('^.*[|][0-9]+[.][0-9]+([.][0-9]+)?(-[0-9A-Za-z-]+([.][0-9A-Za-z-]+)*)?([+][0-9A-Za-z-]+([.][0-9A-Za-z-]+)*)?$')"

Invariant: medcom-plr-formatcode
Description: "The value SHALL follow the format urn:ad:dk:medcom:plr-vx.x:full, where each version component consists of one or two digits."
Severity: #error
Expression: "matches('^urn:ad:dk:medcom:plr-v[0-9]{1,2}.[0-9]{1,2}:full$')"


Invariant: medcom-ekg-formatcode
Description: "The value SHALL follow the format urn:ad:dk:medcom:ekg-vx.x:full, where each version component consists of one or two digits."
Severity: #error
Expression: "matches('^urn:ad:dk:medcom:ekg-v[0-9]{1,2}.[0-9]{1,2}:full$')"

Invariant: medcom-hcom-formatcode
Description: "The value SHALL follow the format urn:ad:dk:medcom:hcom-vx.x:full, where each version component consists of one or two digits."
Severity: #error
Expression: "matches('^urn:ad:dk:medcom:hcom-v[0-9]{1,2}.[0-9]{1,2}:full$')"

Invariant: medcom-ecn-formatcode
Description: "The value SHALL follow the format urn:ad:dk:medcom:ecn-vx.x:full, where each version component consists of one or two digits."
Severity: #error
Expression: "matches('^urn:ad:dk:medcom:ecn-v[0-9]{1,2}.[0-9]{1,2}:full$')"