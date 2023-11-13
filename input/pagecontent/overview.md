### Specifications

These are the core data requirements for common profiles:

* **Patient** data for identity management / demographics: name and NISS and other identifiers; userID and userName, email address; dateOfbirth

The monitoring can produce **measurements** or **reports**. 

* **Measurement** can contain
  * metadata e.g. measurement attempts
  * status
  * timestamp
  * reference measurements
  * findings / interpretation
  * notes
  * context (e.g. symptoms, activity, others)
  * **components** (i.e. sub-measurements)

Measurement are associated with a Device (software and/or hardware)
* **Device**
  * **software**
    * app
    * version
  * **hardware**

<br>
<br>
### Model overview

<figure>
  {% include monitoring-model.svg %}
  <figcaption>Overall patient monitoring model</figcaption>
</figure>
<br clear="all">

