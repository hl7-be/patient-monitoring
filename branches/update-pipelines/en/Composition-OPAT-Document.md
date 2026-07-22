# OPAT document example (composition) - Patient Monitoring Outcome FHIR Implementation Guide v0.1.0

## Example Composition: OPAT document example (composition)

**status**: Final

**type**: OPAT

**date**: 2025-08-11 16:31:20+0200

**author**: [Organization UZ Leuven](Organization-Organization-UZL.md)

**title**: Outpatient Parenteral Antimicrobial Therapy (OPAT)

**custodian**: [Organization UZ Leuven](Organization-Organization-UZL.md)



## Resource Content

```json
{
  "resourceType" : "Composition",
  "id" : "OPAT-Document",
  "status" : "final",
  "type" : {
    "text" : "OPAT"
  },
  "subject" : {
    "reference" : "Patient/Patient-123"
  },
  "date" : "2025-08-11T16:31:20+02:00",
  "author" : [{
    "reference" : "Organization/Organization-UZL"
  }],
  "title" : "Outpatient Parenteral Antimicrobial Therapy (OPAT)",
  "custodian" : {
    "reference" : "Organization/Organization-UZL"
  },
  "section" : [{
    "title" : "Patientgegevens",
    "author" : [{
      "reference" : "Organization/Organization-UZL"
    }],
    "entry" : [{
      "reference" : "Patient/Patient-123"
    }]
  },
  {
    "title" : "Contactgegevens zorgteam",
    "author" : [{
      "reference" : "Organization/Organization-UZL"
    }],
    "entry" : [{
      "reference" : "CareTeam/CareTeam-F-7766077"
    }]
  },
  {
    "title" : "Relevante voorgeschiedenis",
    "author" : [{
      "reference" : "Organization/Organization-UZL"
    }],
    "entry" : [{
      "reference" : "ClinicalImpression/ClinicalImpression-MED-medischeVG"
    }]
  },
  {
    "title" : "Toekomstige ziekenhuisafspraken in UZL",
    "author" : [{
      "reference" : "Organization/Organization-UZL"
    }],
    "entry" : [{
      "reference" : "Appointment/Appointment-testapp"
    }]
  },
  {
    "title" : "Bloeddruk",
    "author" : [{
      "reference" : "Organization/Organization-UZL"
    }],
    "text" : {
      "status" : "empty",
      "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\">Geen gegevens beschikbaar</div>"
    },
    "emptyReason" : {
      "coding" : [{
        "system" : "http://terminology.hl7.org/CodeSystem/list-empty-reason",
        "code" : "nilknown",
        "display" : "Nil Known"
      }]
    }
  },
  {
    "title" : "Hartslag",
    "author" : [{
      "reference" : "Organization/Organization-UZL"
    }],
    "text" : {
      "status" : "empty",
      "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\">Geen gegevens beschikbaar</div>"
    },
    "emptyReason" : {
      "coding" : [{
        "system" : "http://terminology.hl7.org/CodeSystem/list-empty-reason",
        "code" : "nilknown",
        "display" : "Nil Known"
      }]
    }
  },
  {
    "title" : "Temperatuur",
    "author" : [{
      "reference" : "Organization/Organization-UZL"
    }],
    "entry" : [{
      "reference" : "Observation/Observation-Temperatuur"
    }]
  },
  {
    "title" : "Gewicht",
    "author" : [{
      "reference" : "Organization/Organization-UZL"
    }],
    "text" : {
      "status" : "empty",
      "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\">Geen gegevens beschikbaar</div>"
    },
    "emptyReason" : {
      "coding" : [{
        "system" : "http://terminology.hl7.org/CodeSystem/list-empty-reason",
        "code" : "nilknown",
        "display" : "Nil Known"
      }]
    }
  },
  {
    "title" : "Nevenwerkingen/symptoomlast",
    "author" : [{
      "reference" : "Organization/Organization-UZL"
    }],
    "entry" : [{
      "reference" : "ClinicalImpression/ClinicalImpression-OBS-Obstipatie"
    },
    {
      "reference" : "ClinicalImpression/ClinicalImpression-OBS-Gewrichtspijn"
    },
    {
      "reference" : "ClinicalImpression/ClinicalImpression-OBS-Rillingen"
    },
    {
      "reference" : "ClinicalImpression/ClinicalImpression-OBS-Verminderdeeetlust"
    },
    {
      "reference" : "ClinicalImpression/ClinicalImpression-OBS-Pijn"
    },
    {
      "reference" : "ClinicalImpression/ClinicalImpression-OBS-Jeuk"
    },
    {
      "reference" : "ClinicalImpression/ClinicalImpression-OBS-Andere"
    },
    {
      "reference" : "ClinicalImpression/ClinicalImpression-OBS-Observatie-andere-specifieer"
    },
    {
      "reference" : "ClinicalImpression/ClinicalImpression-OBS-Huiduitslag"
    },
    {
      "reference" : "ClinicalImpression/ClinicalImpression-OBS-Moe"
    },
    {
      "reference" : "ClinicalImpression/ClinicalImpression-OBS-Ademhalingsproblemen"
    },
    {
      "reference" : "ClinicalImpression/ClinicalImpression-OBS-Zwelling"
    },
    {
      "reference" : "ClinicalImpression/ClinicalImpression-OBS-Braken"
    },
    {
      "reference" : "ClinicalImpression/ClinicalImpression-OBS-Misselijkheid"
    },
    {
      "reference" : "ClinicalImpression/ClinicalImpression-OBS-Blaren"
    },
    {
      "reference" : "ClinicalImpression/ClinicalImpression-OBS-Diarree"
    },
    {
      "reference" : "ClinicalImpression/ClinicalImpression-OBS-Candidiase"
    }]
  },
  {
    "title" : "Kathetertype",
    "author" : [{
      "reference" : "Organization/Organization-UZL"
    }],
    "entry" : [{
      "reference" : "Observation/Observation-Katheter-7938866"
    }]
  }]
}

```
