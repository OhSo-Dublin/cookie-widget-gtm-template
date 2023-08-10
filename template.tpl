___TERMS_OF_SERVICE___

By creating or modifying this file you agree to Google Tag Manager's Community
Template Gallery Developer Terms of Service available at
https://developers.google.com/tag-manager/gallery-tos (or such other URL as
Google may provide), as modified from time to time.


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
    "help": "Log in to your CookieProof account, then click on \u003ci\u003eSettings \u003e Installation\u003c/i\u003e. From the installation script, copy your website ID from the src attribute.\u003cbr/\u003e\n(e.g. src\u003d\"https://cdn.cookieproof.com/widgets/\nscripts/\u003ci\u003eYOUR_WEBSITE_ID\u003c/i\u003e.js\").",
    "valueHint": "e.g. d0d2072b543b16d6dadc7ccbff6b8072"
  }
]


___SANDBOXED_JS_FOR_WEB_TEMPLATE___

// Enter your template code here.
const queryPermission = require('queryPermission');
const injectScript = require('injectScript');

const url = 'https://cdn.cookieproof.com/widgets/client/'+data.WebsiteId+'/script.js';
if(queryPermission('inject_script', url)) {
  injectScript(url, data.gtmOnSuccess, data.gtmOnFailure, url);
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
                "string": "https://cdn.cookieproof.com/widgets/client/*/script.js"
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


