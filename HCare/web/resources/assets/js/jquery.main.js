$(function () {
    //original field values

    $('input#username').inputfocus();
    $('input#password').inputfocus();
    $('input#cpassword').inputfocus();
    $('input#lastname').inputfocus();
    $('input#firstname').inputfocus();
    $('input#email').inputfocus();


    //first_step
    $('form').submit(function () {
        return false;
    });
    $('#submit').click(function () {
        var emailPattern = /^[a-zA-Z0-9._-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,4}$/;

        //remove classes
        $('#first_step input').removeClass('error').removeClass('valid');

        //ckeck if inputs aren't empty
        var fields = $('#first_step input[type=text],input[type=password]');
        var error = 0;
        fields.each(function () {

            var value = $(this).val();

            if ($(this).attr('id') == 'username')
            {

                if (value.length < 6) {
                    $(this).addClass('error');

                    $(this).effect("shake", {times: 3}, 50);

                    error++;

                } else {
                    $(this).addClass('valid');
                }

            }

            if ($(this).attr('id') == 'password' || $(this).attr('id') == 'cpassword')
            {

                if (value.length < 8) {
                    $(this).addClass('error');

                    $(this).effect("shake", {times: 3}, 50);

                    error++;

                } else {
                    $(this).addClass('valid');
                }

            }

            if ($(this).attr('id') == 'firstname')
            {

                if (value.length < 4) {
                    $(this).addClass('error');

                    $(this).effect("shake", {times: 3}, 50);

                    error++;

                } else {
                    $(this).addClass('valid');
                }

            }

            if ($(this).attr('id') == 'gender')
            {

                if (value.length < 4) {
                    $(this).addClass('error');

                    $(this).effect("shake", {times: 3}, 50);

                    error++;

                } else {
                    $(this).addClass('valid');
                }

            }

            if ($(this).attr('id') == 'dob_dt')
            {
                
                if (value.length < 10  ){
                    
                    $(this).addClass('error');

                    $(this).effect("shake", {times: 3}, 50);

                    error++;

                } else {
                    
                    $(this).addClass('valid');
                }

            }


            if ($(this).attr('id') == 'email')
            {
                if (value.length < 1 || ($(this).attr('id') == 'email' && !emailPattern.test(value))) {
                    $(this).addClass('error');
                    $(this).effect("shake", {times: 3}, 50);

                    error++;
                } else {
                    $(this).addClass('valid');
                }
            }

        });

        if (!error) {
            if ($('#password').val() != $('#cpassword').val()) {
                $('#first_step input[type=password]').each(function () {
                    $(this).removeClass('valid').addClass('error');
                    $(this).effect("shake", {times: 3}, 50);
                });

                return false;
            } else {

            }
        } else
            return false;
    });
 


});