# Flutter Firebase Template

TODO: this has only been linked with Android

## Link with Firebase
Go to Firebase console, add app, get SHA1 hash and download `google-services.json` and place inside of `android/app/`, then test.

## Add Firebase Cloud Functions
```
mkdir backend
cd backend
firebase init
```
To use Express, simply create the express app and then in `index.ts` end the file with:
```
exports.app = functions.https.onRequest(app);
```
