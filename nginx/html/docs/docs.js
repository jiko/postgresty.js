var applyMedium = function(){
    new Medium({
        element: document.getElementById('title'),
        mode: 'inline',
        maxLength: 25,
        placeholder: 'Your Title'
    });
    
    new Medium({
        element: document.getElementById('article'),
        mode: 'rich',
        placeholder: 'Your Article'
    });
};


$(document).ready(function(){
    
    applyMedium();
});
