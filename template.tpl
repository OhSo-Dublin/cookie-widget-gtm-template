___INFO___

{
  "type": "TAG",
  "id": "cookieproof",
  "version": 1,
  "securityGroups": [],
  "displayName": "CookieProof Consent Manager",
  "categories": [
    "TAG_MANAGEMENT",
    "PERSONALIZATION"
  ],
  "brand": {
    "id": "CookieProof",
    "displayName": "CookieProof",
    "thumbnail": "data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABIAAAASCAYAAABWzo5XAAAACXBIWXMAAAsTAAALEwEAmpwYAAAAAXNSR0IArs4c6QAAAARnQU1BAACxjwv8YQUAAAGKSURBVHgB1ZNNTsJAFMffm1EWuukFTMsNegTYGSSh3gCXIkQ8gXACMKZxiZxAF1TdgScQT9DCCVy4MFZmfNO00M+IiRvfop158+Y3//feDMAfGRYtWO5I+4J3U4A01JwBepNyZ/ZrUH1hn0uAYSrco0/P0VvjdDwrAoEQr1mnUidva0v7ruIOtK1AyHkj4AF0Hf0MSftsvSbB2uelwVYgqo2p/nyjzEuKg2bdva78CAKJ8+DH+Ki2sF/UxkwIx8tovJPHsNwbwwdpheEGFh9mFio6otN9JlwI257YR+khiC6B30KXlgGpfOvUDRqaUCSArsNE71xJhHl6LVB9SKnwQMXGBOAQd0tD9D+OKWwQg80xOkzKmWO0q2tQkNLSnlJUJZoHLQ+Niu3SxMjR2HT09jiRGq5EPx4StVYVPg+i6hVBEiD1jiSw3jqQsalS4qdSjiBCfFbjvkTXHvTTvhSrExlevtx0qC4K8lS+8OLu3Cui3tEecIshbxBUU+1eIT1YBvePB61n+Bf2DV7imSGMm10UAAAAAElFTkSuQmCC"
  },
  "description": "A fully customisable website cookie banner that captures user consent, and effectively handle all your cookie compliance requirements.",
  "containerContexts": [
    "WEB"
  ]
}


___TEMPLATE_PARAMETERS___

[
  {
    "type": "TEXT",
    "name": "WebsiteId",
    "displayName": "Your website ID",
    "simpleValueType": true,
    "help": "Log in to your \u003ca href\u003d\"https://app.cookieproof.com/\" target\u003d\"_blank\"\u003eCookieProof account\u003c/a\u003e, then click on \u003ci\u003eSettings \u003e Installation\u003c/i\u003e. From the installation script, copy your website ID from the src attribute.\u003cbr /\u003e(e.g. src\u003d\"https://cdn.cookieproof.com/widgets/client\u003cbr/\u003e/\u003ci\u003eYOUR_WEBSITE_ID\u003c/i\u003e/script.js\").",
    "valueHint": "e.g. d0d2072b543b16d6dadc7ccbff6b8072"
  },
  {
    "type": "GROUP",
    "name": "consentDefaultSettings",
    "displayName": "Consent Default Settings",
    "groupStyle": "ZIPPY_OPEN_ON_PARAM",
    "subParams": [
      {
        "type": "PARAM_TABLE",
        "name": "defaultSettings",
        "paramTableColumns": [
          {
            "param": {
              "type": "SELECT",
              "name": "functional",
              "displayName": "Functional cookies",
              "macrosInSelect": true,
              "selectItems": [
                {
                  "value": "granted",
                  "displayValue": "Enabled"
                },
                {
                  "value": "denied",
                  "displayValue": "Disabled"
                }
              ],
              "simpleValueType": true
            },
            "isUnique": false
          },
          {
            "param": {
              "type": "SELECT",
              "name": "security",
              "displayName": "Necessary cookies",
              "selectItems": [
                {
                  "value": "granted",
                  "displayValue": "Enabled"
                },
                {
                  "value": "denied",
                  "displayValue": "Disabled"
                }
              ],
              "simpleValueType": true,
              "macrosInSelect": true
            },
            "isUnique": false
          },
          {
            "param": {
              "type": "SELECT",
              "name": "analytics",
              "displayName": "Analytics cookies",
              "macrosInSelect": true,
              "selectItems": [
                {
                  "value": "granted",
                  "displayValue": "Enabled"
                },
                {
                  "value": "denied",
                  "displayValue": "Disabled"
                }
              ],
              "simpleValueType": true
            },
            "isUnique": false
          },
          {
            "param": {
              "type": "SELECT",
              "name": "advertisement",
              "displayName": "Advertisement cookies",
              "macrosInSelect": true,
              "selectItems": [
                {
                  "value": "granted",
                  "displayValue": "Enabled"
                },
                {
                  "value": "denied",
                  "displayValue": "Disabled"
                }
              ],
              "simpleValueType": true
            },
            "isUnique": false
          },
          {
            "param": {
              "type": "TEXT",
              "name": "regions",
              "displayName": "Regions",
              "simpleValueType": true,
              "defaultValue": "All",
              "help": "Specify a comma-separated list of \u003ca href\u003d\"https://en.wikipedia.org/wiki/ISO_3166-2\"\u003eregions\u003c/a\u003e for which you want to apply this setting. If you specify All, the setting will be applied to all users."
            },
            "isUnique": false
          }
        ],
        "newRowButtonText": "Add new"
      }
    ]
  },
  {
    "type": "GROUP",
    "name": "otherSettings",
    "displayName": "Other Settings",
    "groupStyle": "ZIPPY_OPEN_ON_PARAM",
    "subParams": [
      {
        "type": "TEXT",
        "name": "waitForTime",
        "displayName": "Wait for update",
        "simpleValueType": true,
        "help": "Set the number of milliseconds to wait before firing tags waiting for consent.",
        "defaultValue": 500,
        "valueUnit": "milliseconds"
      },
      {
        "type": "CHECKBOX",
        "name": "urlPassThrough",
        "checkboxText": "Pass ad click information through URLs",
        "simpleValueType": true,
        "help": "Check this option if you would like internal links to include advertising identifiers (such as gclid, dclid, gclsrc, and _gl) in their URLs while waiting for consent to be granted."
      },
      {
        "type": "CHECKBOX",
        "name": "adsRedaction",
        "checkboxText": "Redact ads data",
        "simpleValueType": true,
        "help": "When this option is checked and the default consent state of \"Advertisement Cookies\" is disabled, Google\u0027s advertising tags will remove all advertising identifiers from the requests, and route the traffic through domains that do not use cookies."
      }
    ]
  }
]


___SANDBOXED_JS_FOR_WEB_TEMPLATE___

const queryPermission = require("queryPermission");
const injectScript = require("injectScript");
const setDefaultConsentState = require("setDefaultConsentState");
const gtagSet = require("gtagSet");
const updateConsentState = require("updateConsentState");
const callInWindow = require("callInWindow");
const getCookieValues = require("getCookieValues");
const COOKIE_NAME = "cp_consent";

const defaultSettings = data.defaultSettings || [];
const waitForTime = data.waitForTime;

function setConsentInitStates(consentData) {
    if (waitForTime > 0) consentData.wait_for_update = waitForTime;
    setDefaultConsentState(consentData);
}

gtagSet({
    ads_data_redaction: !!data.adsDataRedaction,
    url_passthrough: !!data.urlPassThrough,
    "developer_id.dYTZjNT": true,
});

const onUserConsent = (consent) => {
    const consentModeStates = {
        ad_storage: consent.advertisement ? "granted" : "denied",
        analytics_storage: consent.analytics ? "granted" : "denied",
        functionality_storage: consent.functional ? "granted" : "denied",
        personalization_storage: consent.performance ? "granted" : "denied",
        security_storage: consent.necessary ? "granted" : "denied",
    };

    updateConsentState(consentModeStates);
};

const stringToJSON = (ckSt) => {
    let ckString = ckSt;
    ckString = ckString.replace('{"consent":"{', "");
    ckString = ckString.split(",");

    var obj = {};
    for (const i in ckString) {
        let cc = ckString[i].split('\\"');
        if (cc[0].indexOf('"id"') !== -1) continue;
        const val = cc[2].replace(":", "").replace('"', "");
        obj[cc[1]] = val === "1" ? 1 : 0;
    }

    return obj;
};

const settings = getCookieValues(COOKIE_NAME);
if ( typeof settings !== "undefined" && settings.length > 0 && settings[0].indexOf('"g_consent_mode":true') !== -1 ) {
    if (settings[0].indexOf('necessary') !== -1) {
        onUserConsent(stringToJSON(settings[0]));
    } else {
        if (defaultSettings.length > 0) {
            defaultSettings.forEach((setting) => {
                const consent = {
                    functionality_storage: setting.functional,
                    personalization_storage: setting.functional,
                    security_storage: setting.security,
                    analytics_storage: setting.analytics,
                    ad_storage: setting.advertisement,
                };
                const regions = setting.regions
                    .split(",")
                    .map((region) => region.trim())
                    .filter((region) => region);

                if (regions.length > 0 && regions[0].toLowerCase() !== "all")
                    consent.region = regions;
                setConsentInitStates(consent);
            });
        } else {
            setDefaultConsentState({
                ad_storage: "denied",
                analytics_storage: "denied",
                functionality_storage: "denied",
                personalization_storage: "denied",
                security_storage: "granted",
                region: ["ES", "US-AK"],
                wait_for_update: 500,
            });
        }
    }
}

const onSuccess = () => {
    callInWindow("onCPUserConsent", onUserConsent);
    data.gtmOnSuccess();
};

const onFailure = () => {
    data.gtmOnFailure();
};

const url =
    "https://cdn.cookieproof.com/widgets/client/" +
    data.WebsiteId +
    "/script.js";

if (queryPermission("inject_script", url)) {
    injectScript(url, onSuccess, onFailure);
}


___WEB_PERMISSIONS___

[
  {
    "instance": {
      "key": {
        "publicId": "inject_script",
        "versionId": "1"
      },
      "param": [
        {
          "key": "urls",
          "value": {
            "type": 2,
            "listItem": [
              {
                "type": 1,
                "string": "https://*.cookieproof.com/widgets/client/*/script.js"
              }
            ]
          }
        }
      ]
    },
    "clientAnnotations": {
      "isEditedByUser": true
    },
    "isRequired": true
  },
  {
    "instance": {
      "key": {
        "publicId": "access_consent",
        "versionId": "1"
      },
      "param": [
        {
          "key": "consentTypes",
          "value": {
            "type": 2,
            "listItem": [
              {
                "type": 3,
                "mapKey": [
                  {
                    "type": 1,
                    "string": "consentType"
                  },
                  {
                    "type": 1,
                    "string": "read"
                  },
                  {
                    "type": 1,
                    "string": "write"
                  }
                ],
                "mapValue": [
                  {
                    "type": 1,
                    "string": "ad_storage"
                  },
                  {
                    "type": 8,
                    "boolean": false
                  },
                  {
                    "type": 8,
                    "boolean": true
                  }
                ]
              },
              {
                "type": 3,
                "mapKey": [
                  {
                    "type": 1,
                    "string": "consentType"
                  },
                  {
                    "type": 1,
                    "string": "read"
                  },
                  {
                    "type": 1,
                    "string": "write"
                  }
                ],
                "mapValue": [
                  {
                    "type": 1,
                    "string": "analytics_storage"
                  },
                  {
                    "type": 8,
                    "boolean": false
                  },
                  {
                    "type": 8,
                    "boolean": true
                  }
                ]
              },
              {
                "type": 3,
                "mapKey": [
                  {
                    "type": 1,
                    "string": "consentType"
                  },
                  {
                    "type": 1,
                    "string": "read"
                  },
                  {
                    "type": 1,
                    "string": "write"
                  }
                ],
                "mapValue": [
                  {
                    "type": 1,
                    "string": "functionality_storage"
                  },
                  {
                    "type": 8,
                    "boolean": false
                  },
                  {
                    "type": 8,
                    "boolean": true
                  }
                ]
              },
              {
                "type": 3,
                "mapKey": [
                  {
                    "type": 1,
                    "string": "consentType"
                  },
                  {
                    "type": 1,
                    "string": "read"
                  },
                  {
                    "type": 1,
                    "string": "write"
                  }
                ],
                "mapValue": [
                  {
                    "type": 1,
                    "string": "personalization_storage"
                  },
                  {
                    "type": 8,
                    "boolean": false
                  },
                  {
                    "type": 8,
                    "boolean": true
                  }
                ]
              },
              {
                "type": 3,
                "mapKey": [
                  {
                    "type": 1,
                    "string": "consentType"
                  },
                  {
                    "type": 1,
                    "string": "read"
                  },
                  {
                    "type": 1,
                    "string": "write"
                  }
                ],
                "mapValue": [
                  {
                    "type": 1,
                    "string": "security_storage"
                  },
                  {
                    "type": 8,
                    "boolean": false
                  },
                  {
                    "type": 8,
                    "boolean": true
                  }
                ]
              },
              {
                "type": 3,
                "mapKey": [
                  {
                    "type": 1,
                    "string": "consentType"
                  },
                  {
                    "type": 1,
                    "string": "read"
                  },
                  {
                    "type": 1,
                    "string": "write"
                  }
                ],
                "mapValue": [
                  {
                    "type": 1,
                    "string": "wait_for_update"
                  },
                  {
                    "type": 8,
                    "boolean": false
                  },
                  {
                    "type": 8,
                    "boolean": true
                  }
                ]
              }
            ]
          }
        }
      ]
    },
    "clientAnnotations": {
      "isEditedByUser": true
    },
    "isRequired": true
  },
  {
    "instance": {
      "key": {
        "publicId": "write_data_layer",
        "versionId": "1"
      },
      "param": [
        {
          "key": "keyPatterns",
          "value": {
            "type": 2,
            "listItem": [
              {
                "type": 1,
                "string": "ads_data_redaction"
              },
              {
                "type": 1,
                "string": "url_passthrough"
              },
              {
                "type": 1,
                "string": "developer_id.dYTZjNT"
              }
            ]
          }
        }
      ]
    },
    "clientAnnotations": {
      "isEditedByUser": true
    },
    "isRequired": true
  },
  {
    "instance": {
      "key": {
        "publicId": "access_globals",
        "versionId": "1"
      },
      "param": [
        {
          "key": "keys",
          "value": {
            "type": 2,
            "listItem": [
              {
                "type": 3,
                "mapKey": [
                  {
                    "type": 1,
                    "string": "key"
                  },
                  {
                    "type": 1,
                    "string": "read"
                  },
                  {
                    "type": 1,
                    "string": "write"
                  },
                  {
                    "type": 1,
                    "string": "execute"
                  }
                ],
                "mapValue": [
                  {
                    "type": 1,
                    "string": "onCPUserConsent"
                  },
                  {
                    "type": 8,
                    "boolean": true
                  },
                  {
                    "type": 8,
                    "boolean": true
                  },
                  {
                    "type": 8,
                    "boolean": true
                  }
                ]
              }
            ]
          }
        }
      ]
    },
    "clientAnnotations": {
      "isEditedByUser": true
    },
    "isRequired": true
  },
  {
    "instance": {
      "key": {
        "publicId": "get_cookies",
        "versionId": "1"
      },
      "param": [
        {
          "key": "cookieAccess",
          "value": {
            "type": 1,
            "string": "specific"
          }
        },
        {
          "key": "cookieNames",
          "value": {
            "type": 2,
            "listItem": [
              {
                "type": 1,
                "string": "cp_consent"
              }
            ]
          }
        }
      ]
    },
    "clientAnnotations": {
      "isEditedByUser": true
    },
    "isRequired": true
  }
]


___TESTS___

scenarios: []


___NOTES___

Created on 09/06/2023, 15:11:20


