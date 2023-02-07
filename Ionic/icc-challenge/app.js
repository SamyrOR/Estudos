const nameInput = document.querySelector("#course-name");
const ratingInput = document.querySelector("#course-rating");
const coursesList = document.querySelector("#courses-list");
const btnAdd = document.querySelector("#btn-add");

btnAdd.addEventListener("click", () => {
  let courseName = nameInput.value;
  let courseRating = ratingInput.value;
  if (
    courseName.trim().length <= 0 ||
    !courseRating ||
    courseRating > 5 ||
    courseRating < 0
  ) {
    invalidInput();
    return;
  }
  creatEvaluation(courseName, courseRating);
});

function creatEvaluation(name, rating) {
  let newCourse = document.createElement("ion-item");
  let course = document.createElement("span");
  let courseName = document.createElement("strong");
  courseName.textContent = name;
  course.appendChild(courseName);
  course.insertAdjacentText("beforeend", ` - ${rating}/5`);
  newCourse.appendChild(course);
  coursesList.appendChild(newCourse);
}

function resetForm() {
  nameInput.value = "";
  ratingInput.value = "";
}

async function invalidInput() {
  let alert = document.createElement("ion-alert");
  alert.header = "Invalid Inputs";
  alert.message = "Please, provide valid inputs!";
  alert.buttons = ["OK"];
  document.body.appendChild(alert);
  await alert.present();
  const { role } = await alert.onDidDismiss();
}
