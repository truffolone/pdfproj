function loadComposerPage(url, element)
{
    /** getting html page */
    $.get(url, function(data) {
        if(data.status === 'success') {
            sendSuccess(data.message);
            /** rendering page */
            element.empty().append($(data.data));
            console.log('triggering');
            $.event.trigger(trigger);
            return true;
        } else {
            sendError(data.message);
            return false;
        }
    }).fail(function(data){
        sendError('System Error');
        return false;
    });
}