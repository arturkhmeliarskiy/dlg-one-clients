importScripts("https://www.gstatic.com/firebasejs/9.10.0/firebase-app-compat.js");
importScripts("https://www.gstatic.com/firebasejs/9.10.0/firebase-messaging-compat.js");

const firebaseConfig = {
  apiKey: "AIzaSyBOvBFKX_MRxKXtLwhEyVrft3_zmEhTt0E",
  authDomain: "dls-one.firebaseapp.com",
  projectId: "dls-one",
  storageBucket: "dls-one.appspot.com",
  messagingSenderId: "46145425096",
  appId: "1:46145425096:web:496be87b73a8b002e91ffd",
  measurementId: "G-GTX3XCY174"
};
/*
отвечает за отображение уведомлений в системной области,
когда приложение находится в свернутом состоянии
*/

firebase.initializeApp(firebaseConfig);
const messaging = firebase.messaging();
messaging.onBackgroundMessage(function(payload) {
  console.log('Received background message ', payload);
  /*
  обрабатывать только сообщениея из токенов с меткой платформы web
  */
  if(payload.data.platform_type == 'web') {
    const notificationTitle = payload.notification.title;
    const notificationOptions = {
      body: payload.notification.body,
    };
    self.registration.showNotification(notificationTitle,
      notificationOptions);
  }
});