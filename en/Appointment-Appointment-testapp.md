# Appointment: OPAT Hospital Follow-up - Patient Monitoring Outcome FHIR Implementation Guide v0.1.0

## Example Appointment: Appointment: OPAT Hospital Follow-up

**identifier**: `https://fhir.nexuzhealth.com/standards/fhir/NamingSystem/kws/bifrost/afsprakenBoek/slotNr`/123456 (use: usual, )

**status**: Fulfilled

**start**: 2025-08-11 09:15:00+0200

**end**: 2025-08-11 09:25:00+0200

**minutesDuration**: 10

**created**: 2025-08-06 13:16:41+0200

> **participant****actor**: [Location UZ Leuven - Consultation](Location-testloc.md)**status**: Accepted

> **participant****actor**: [NUMMER 15 KWS-TESTPATIENT (official) Female, DoB: 1931-04-19 ( Medical record number: 310419V999 (use: usual, ))](Patient-Patient-123.md)**status**: Accepted



## Resource Content

```json
{
  "resourceType" : "Appointment",
  "id" : "Appointment-testapp",
  "identifier" : [{
    "use" : "usual",
    "system" : "https://fhir.nexuzhealth.com/standards/fhir/NamingSystem/kws/bifrost/afsprakenBoek/slotNr",
    "value" : "123456"
  }],
  "status" : "fulfilled",
  "start" : "2025-08-11T09:15:00.000+02:00",
  "end" : "2025-08-11T09:25:00.000+02:00",
  "minutesDuration" : 10,
  "created" : "2025-08-06T13:16:41+02:00",
  "participant" : [{
    "actor" : {
      "reference" : "Location/testloc"
    },
    "status" : "accepted"
  },
  {
    "actor" : {
      "reference" : "Patient/Patient-123"
    },
    "status" : "accepted"
  }]
}

```
