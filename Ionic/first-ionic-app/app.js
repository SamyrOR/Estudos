const reasonInput = document.querySelector("#input-reason");
const amountInput = document.querySelector("#input-amount");
const cancelBtn = document.querySelector("#btn-cancel");
const confirmBtn = document.querySelector("#btn-confirm");
const expensesList = document.querySelector("#expenses-list");
const totalExpensesOutput = document.querySelector("#total-expenses");
// const ionAlert = document.querySelector("ion-alert");
let totalExpenses = 0;

confirmBtn.addEventListener("click", () => {
  let enteredReason = reasonInput.value;
  let enteredAmount = amountInput.value;

  if (
    enteredReason.trim().length <= 0 ||
    enteredAmount <= 0 ||
    enteredAmount.trim().length <= 0
  ) {
    presentAlert();
    return;
  }
  let newItem = document.createElement("ion-item");
  newItem.textContent = `${enteredReason}: $${enteredAmount}`;
  expensesList.appendChild(newItem);
  sumExpenses(enteredAmount);
  resetForm();
});

cancelBtn.addEventListener("click", resetForm);

function resetForm() {
  reasonInput.value = "";
  amountInput.value = "";
}

function sumExpenses(amount) {
  totalExpenses += parseInt(amount);
  totalExpensesOutput.textContent = `$: ${totalExpenses}`;
}
async function presentAlert() {
  const ionAlert = document.createElement("ion-alert");
  ionAlert.header = "Invalid Inputs!";
  ionAlert.message = "Please, enter valid reason and amount!";
  ionAlert.buttons = ["OK"];

  document.body.appendChild(ionAlert);
  await ionAlert.present();
  const { role } = await ionAlert.onDidDismiss();
}
