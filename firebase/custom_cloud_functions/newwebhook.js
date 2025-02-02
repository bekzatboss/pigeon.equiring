const functions = require("firebase-functions");
const admin = require("firebase-admin");
// To avoid deployment errors, do not call admin.initializeApp() in your code

exports.newwebhook = functions.https.onRequest(async (req, res) => {
  try {
    // Разрешаем только GET-запросы
    if (req.method !== "GET") {
      return res.status(405).send("Метод не поддерживается");
    }

    // Получаем параметры из URL
    const { docid, userid, value } = req.query;

    console.log("Webhook query params:", req.query);

    // Проверяем, что переданы все необходимые параметры
    if (!docid || !userid || !value) {
      return res
        .status(400)
        .send("Отсутствуют обязательные параметры (docid, userid, value)");
    }

    const numericValue = parseFloat(value);
    if (isNaN(numericValue)) {
      return res.status(400).send("Некорректное значение value (не число)");
    }

    // Получаем документ в Firestore из коллекции payments
    const paymentRef = admin.firestore().collection("payments").doc(docid);
    const paymentDoc = await paymentRef.get();

    if (paymentDoc.exists) {
      // Обновляем статус платежа
      await paymentRef.update({ confirmed: true });

      // Получаем документ пользователя
      const userRef = admin.firestore().collection("users").doc(userid);
      const userDoc = await userRef.get();

      if (userDoc.exists) {
        const currentBalance = parseFloat(userDoc.data().ballance) || 0; // Берём текущий баланс
        const newBalance = currentBalance + numericValue; // Добавляем value

        // Обновляем баланс пользователя
        await userRef.update({ ballance: newBalance.toString() });

        res.status(200).send(`Платеж подтвержден, новый баланс: ${newBalance}`);
      } else {
        res.status(404).send("Пользователь не найден");
      }
    } else {
      res.status(404).send("Документ платежа не найден");
    }
  } catch (error) {
    console.error("Ошибка:", error);
    res.status(500).send("Внутренняя ошибка сервера");
  }
});
