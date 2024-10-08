// Script to allow use of readthedocs-sphinx-search extension with the pydata theme
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
var hidePydataSearch = () => {
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

/** Function to hide the ReadTheDocs search (addon version) */
function hideRtdSearch() {
    // Grab the search element from the DOM
    const searchElement = document.querySelector('readthedocs-search');        
    searchElement.closeModal(); 
}

function hideSearch() {
  hidePydataSearch()
  hideRtdSearch()
}

/** Function to show the ReadTheDocs search (addon version) */
function showRtDSearch() {
  const searchElement = document.querySelector('readthedocs-search');
  searchElement.showModal();
  hidePydataSearch();
}

/** Add an event listener for hideSearchField() for Escape*/
var addEventListenerForSearchKeyboard = () => {
  window.addEventListener(
    "keydown",
    (event) => {
      // console.log(event.code)
      // Allow Escape key to hide the search field
      if (event.code == "Escape") {
        hidePydataSearch();
      }

      // Open the ReadTheDocs search modal when Ctrl+K is pressed
      if (event.ctrlKey && event.key === 'k') {
        event.preventDefault(); // Prevent default behavior of Ctrl+K
        showRtDSearch()
      }
    },
    true
  );
};

/** Activate callbacks for search button popup */
var setupSearchButtons = () => {
  addEventListenerForSearchKeyboard();

  // const searchElement = document.querySelector('readthedocs-search');
  //
  // // Select the specific background div within the 'readthedocs-search' element
  // const background = searchElement.shadowRoot.querySelector('div.background');
  // if (background) {
  //   background.addEventListener('click', hideSearch);
  // }

  // Add event listeners to elements with class "search-button__button"
  const searchButtons = document.querySelectorAll('.search-button__button');
  searchButtons.forEach(button => {
    button.addEventListener('click', showRtDSearch);
  });


  document.addEventListener(
    "readthedocs-addons-data-ready",
    function (event) {
      const data = event.detail.data();
      console.log(data)
    }
  );
};

const observer = new MutationObserver((mutations) => {
  mutations.forEach((mutation) => {
    if (mutation.addedNodes.length > 0) {
      const searchElement = document.querySelector('readthedocs-search');
      if (searchElement) {
        console.log('Found the search element!');
        observer.disconnect();  // Stop observing once the element is found
        // Vanilla JS for shadowRoot-based background click listener
        const searchElement = document.querySelector('readthedocs-search');  // Adjust this to target the correct search element
        console.log(searchElement)
        if (searchElement && searchElement.shadowRoot) {
          const background = searchElement.querySelector('div > div.background');
          // Never finds the selector
          if (background) {
            background.addEventListener('click', function() {
              hidePydataSearch();
            });
          }
        }
      }
    }
  });
});

// Custom code to manage closing the RtD search dialog properly
$(document).ready(function(){
  $(".search__cross").click(function(){
    hidePydataSearch();
  });
  $(".search__outer__wrapper.search__backdrop").click(function(){
    hidePydataSearch();
  });
  $(".search-button__overlay").click(function(){
    // Shouldn't be necessary since it's currently hidden by CSS, but just in case
    console.log("Close by search-button__overlay");
    hidePydataSearch();
  });

  customElements.whenDefined('readthedocs-search').then(() => {
    const searchElement = document.querySelector('readthedocs-search');
    if (searchElement) {
      console.log('Found the search element!');
      // Add your shadow DOM query logic here
    } else {
      console.log('Search element not found');
    }
  });
  
  observer.observe(document.body, { childList: true, subtree: true });
});

$(setupSearchButtons);


