document.addEventListener("DOMContentLoaded", () => {
  // toggling restaurants

  const toggleLi = (e) => {
    const li = e.target;
    if (li.className === "visited") {
      li.className = "";
    } else {
      li.className = "visited";
    }
  };

  document.querySelectorAll("#restaurants li").forEach((li) => {
    li.addEventListener("click", toggleLi);
  });



  // adding SF places as list items
  const addFavorite = (e) => {
    e.preventDefault();
    const favInput = document.querySelector(".favorite-input");
    const fav = favInput.value;
    favInput.value = "";
    const newLI = document.createElement("li");
    newLi.textContent = fav;
    const favList = document.getElementById("sf-places");
    favList.appendChild(newLi);
  };

  const submitButton = document.querySelector(".favorite-submit");
  submitButton.addEventListener("click", addFavorite);



  // adding new photos

  // --- your code here!



});
