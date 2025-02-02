const admin = require("firebase-admin/app");
admin.initializeApp();

const newwebhook = require("./newwebhook.js");
exports.newwebhook = newwebhook.newwebhook;
