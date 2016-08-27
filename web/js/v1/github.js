$(document).ready(function(){
    var repouri = 'https://api.github.com/users/DomHeal/repos';
    var repositories;
    $.getJSON(repouri, function(json) {
        repositories = json;
        outputPageContent();
        function outputPageContent() {
            var output = 'repositories[1].forks';
        }
        $('#forkvalue').html(output);
    } // end outputPageContent()
}); // end
