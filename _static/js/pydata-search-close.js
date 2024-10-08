// Script to allow use of readthedocs-sphinx-search extension with the pydata
// theme
//
// Based in part on:
// https://github.com/pydata/pydata-sphinx-theme/blob/v0.13.3/src/pydata_sphinx_theme/assets/scripts/pydata-sphinx-theme.js#L167-L272

/*******************************************************************************
 * Search
 */
/** Find any search forms on the page and return their input element */
var findSearchInput = () => {
  let forms = document.querySelectorAll("form.bd-search");
  if (!forms.length) {
    // no search form found
    return;
  } else {
    var form;
    if (forms.length == 1) {
      // there is exactly one search form (persistent or hidden)
      form = forms[0];
    } else {
      // must be at least one persistent form, use the first persistent one
      form = document.querySelector(
        "div:not(.search-button__search-container) > form.bd-search"
      );
    }
    return form.querySelector("input");
  }
};

/** Function to hide the search field */
var hideSearchField = () => {
 
  let input = findSearchInput();
  let searchPopupWrapper = document.querySelector(".search-button__wrapper");
  let hiddenInput = searchPopupWrapper.querySelector("input");
  
  if (input === hiddenInput) {
    searchPopupWrapper.classList.remove("show");
  }
  
  if (document.activeElement === input) {
    input.blur();
  }
};

/** Add an event listener for hideSearchField() for Escape*/
var addEventListenerForSearchKeyboard = () => {
  window.addEventListener(
    "keydown",
    (event) => {
      console.log(event.code)
      // Allow Escape key to hide the search field
      if (event.code == "Escape") {
        hideSearchField();
      }

      // Original listener for "/"
      if (event.code === "Slash" && !isModalVisible()) {
        event.preventDefault();
        // Grab the search element from the DOM
        const searchElement = document.querySelector('readthedocs-search');        
        searchElement.showModal();
      }      

      // Open the new search modal by simulating "/" keypress when Ctrl+K is pressed
      if (event.ctrlKey && event.key === 'k') {
        console.log('ctrl+k was pressed')
        event.preventDefault();  // Prevent default behavior of Ctrl+K
        simulateSlashKeyPress();
      }
    },
    true
  );
};

/** Function to simulate pressing the "/" key */
var simulateSlashKeyPress = () => {
  console.log("pressing '/'")
  const slashKeyEvent = new KeyboardEvent("keydown", {
    key: '/',
    keyCode: 191,
    code: "Slash",
    which: 191,
    bubbles: true,
    cancelable: true
  });
  window.dispatchEvent(slashKeyEvent);
};

/** Activate callbacks for search button popup */
var setupSearchButtons = () => {
  addEventListenerForSearchKeyboard();
};

// Custom code to manage closing the RtD search dialog properly
$(document).ready(function(){
  $(".search__cross").click(function(){
    hideSearchField();
  });
  $(".search__outer__wrapper.search__backdrop").click(function(){
    hideSearchField();
  });
  $(".search-button__overlay").click(function(){
    // Shouldn't be necessary since it's currently hidden by CSS, but just in
    // case
    console.log("Close by search-button__overlay");
    hideSearchField();
  });
});

$(setupSearchButtons);
