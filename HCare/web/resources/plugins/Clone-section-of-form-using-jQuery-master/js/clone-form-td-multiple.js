/*
 Author: Tristan Denyer (based on Charlie Griefer's original clone code, and some great help from Dan - see his comments in blog post)
 Plugin repo: https://github.com/tristandenyer/Clone-section-of-form-using-jQuery
 Demo at http://tristandenyer.com/using-jquery-to-duplicate-a-section-of-a-form-maintaining-accessibility/
 Ver: 0.9.4.3
 Last updated: Mar 22, 2015
 
 The MIT License (MIT)
 
 Copyright (c) 2011 Tristan Denyer
 
 Permission is hereby granted, free of charge, to any person obtaining a copy
 of this software and associated documentation files (the "Software"), to deal
 in the Software without restriction, including without limitation the rights
 to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
 copies of the Software, and to permit persons to whom the Software is
 furnished to do so, subject to the following conditions:
 
 The above copyright notice and this permission notice shall be included in
 all copies or substantial portions of the Software.
 
 THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
 OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
 THE SOFTWARE.
 */
$(function () {
    $('#btnAdd_1').click(function () {
        var num = $('.clonedInput_1').length, // Checks to see how many "duplicatable" input fields we currently have
                newNum = new Number(num + 1), // The numeric ID of the new input field being added, increasing by 1 each time
                newElem = $('#entry' + num).clone().attr('id', 'entry' + newNum).fadeIn('slow'); // create the new element via clone(), and manipulate it's ID using newNum value

        /*  This is where we manipulate the name/id values of the input inside the new, cloned element
         Below are examples of what forms elements you can clone, but not the only ones.
         There are 2 basic structures below: one for an H2, and one for form elements.
         To make more, you can copy the one for form elements and simply update the classes for its label and input.
         Keep in mind that the .val() method is what clears the element when it gets cloned. Radio and checkboxes need .val([]) instead of .val('').
         */

        // Email input - text
        newElem.find('.input-collegename').attr('id', 'ID' + newNum + '_college_name').attr('name', 'ID' + newNum + '_college_name').val('');
        newElem.find('.input-degreename').attr('id', 'ID' + newNum + '_degree_name').attr('name', 'ID' + newNum + '_degree_name').val('');
        newElem.find('.input-collegeyear').attr('id', 'ID' + newNum + '_college_year').attr('name', 'ID' + newNum + '_college_year').val('');

        // Insert the new element after the last "duplicatable" input field
        $('#entry' + num).after(newElem);
        $('#ID' + newNum + '_title').focus();

        // Enable the "remove" button. This only shows once you have a duplicated section.
        $('#btnDel_1').attr('disabled', false);

        // Right now you can only add 4 sections, for a total of 5. Change '5' below to the max number of sections you want to allow.
        // This first if statement is for forms using input type="button" (see older demo). Delete if using button element.
        if (newNum == 5)
        {
            $('#btnAdd_1').attr('disabled', true); // value here updates the text in the 'add' button when the limit is reached
        }
        // This second if statement is for forms using the new button tag (see Bootstrap demo). Delete if using input type="button" element.
        if (newNum == 5) {

            $('#btnAdd_1').attr('disabled', true); // value here updates the text in the 'add' button when the limit is reached 
            if (newNum == 5) {
                $.alert('jQuery alert.js Plugin!', {
                    title: 'You have reached the limit',
                    position: 'top-center'
                });

            }
        }
    });

    $('#btnDel_1').click(function () {
        // Confirmation dialog box. Works on all desktop browsers and iPhone.
        //  if (confirm("Are you sure you wish to remove this email? This cannot be undone."))
        {
            var num = $('.clonedInput_1').length;
            // how many "duplicatable" input fields we currently have
            $('#entry' + num).slideUp('5000', function () {
                $(this).remove();
                // if only one element remains, disable the "remove" button
                if (num - 1 == 1)
                    $('#btnDel_1').attr('disabled', true);
                // enable the "add" button. IMPORTANT: only for forms using input type="button" (see older demo). DELETE if using button element.
                $('#btnAdd_1').attr('disabled', false);

            });
        }
        return false; // Removes the last section you added
    });
    // Enable the "add" button
    $('#btnAdd_1').attr('disabled', false);
    // Disable the "remove" button
    $('#btnDel_1').attr('disabled', true);


// -------------------------------------------------------------------


    $('#btnAdd_2').click(function () {
        var num = $('.clonedInput_2').length, // Checks to see how many "duplicatable" input fields we currently have
                newNum = new Number(num + 1), // The numeric ID of the new input field being added, increasing by 1 each time
                newElem = $('#addcontactentry' + num).clone().attr('id', 'addcontactentry' + newNum).fadeIn('slow'); // create the new element via clone(), and manipulate it's ID using newNum value

        /*  
         * This is where we manipulate the name/id values of the input inside the new, cloned element
         Below are examples of what forms elements you can clone, but not the only ones.
         There are 2 basic structures below: one for an H2, and one for form elements.
         To make more, you can copy the one for form elements and simply update the classes for its label and input.
         Keep in mind that the .val() method is what clears the element when it gets cloned. Radio and checkboxes need .val([]) instead of .val('').
         */

        // Email input - text
        newElem.find('.input-additionalcontact').attr('id', 'ID' + newNum + '_additionalcontact').attr('name', 'ID' + newNum + '_additionalcontact').val('');


        // Insert the new element after the last "duplicatable" input field
        $('#addcontactentry' + num).after(newElem);
        $('#ID' + newNum + '_title').focus();

        // Enable the "remove" button. 
        // This only shows once you have a duplicated section.
        $('#btnDel_2').attr('disabled', false);

        // Right now you can only add 4 sections, for a total of 5. Change '5' below to the max number of sections you want to allow.
        // This first if statement is for forms using input type="button" (see older demo). Delete if using button element.
        if (newNum == 5)
        {
            $('#btnAdd_2').attr('disabled', true); // value here updates the text in the 'add' button when the limit is reached
        }
        // This second if statement is for forms using the new button tag (see Bootstrap demo). Delete if using input type="button" element.
        if (newNum == 5) {

            $('#btnAdd_2').attr('disabled', true); // value here updates the text in the 'add' button when the limit is reached 
            if (newNum == 5) {
                $.alert('jQuery alert.js Plugin!', {
                    title: 'You have reached the limit',
                    position: 'top-center'
                });

            }
        }
    });

    $('#btnDel_2').click(function () {
        // Confirmation dialog box. Works on all desktop browsers and iPhone.
        //  if (confirm("Are you sure you wish to remove this email? This cannot be undone."))
        {
            var num = $('.clonedInput_2').length;
            // how many "duplicatable" input fields we currently have
            $('#addcontactentry' + num).slideUp('5000', function () {
                $(this).remove();
                // if only one element remains, disable the "remove" button
                if (num - 1 == 1)
                    $('#btnDel_2').attr('disabled', true);
                // enable the "add" button. IMPORTANT: only for forms using input type="button" (see older demo). DELETE if using button element.
                $('#btnAdd_2').attr('disabled', false);

            });
        }
        return false; // Removes the last section you added
    });
    // Enable the "add" button
    $('#btnAdd_2').attr('disabled', false);
    // Disable the "remove" button
    $('#btnDel_2').attr('disabled', true);


//--------------------------------------------------



    $('#btnAdd_3').click(function () {
        var num = $('.clonedInput_3').length, // Checks to see how many "duplicatable" input fields we currently have
                newNum = new Number(num + 1), // The numeric ID of the new input field being added, increasing by 1 each time
                newElem = $('#addemailentry' + num).clone().attr('id', 'addemailentry' + newNum).fadeIn('slow'); // create the new element via clone(), and manipulate it's ID using newNum value

        // Email input - text
        newElem.find('.input-additionalemail').attr('id', 'ID' + newNum + '_additional_email').attr('name', 'ID' + newNum + '_additional_email').val('');


        // Insert the new element after the last "duplicatable" input field
        $('#addemailentry' + num).after(newElem);
        $('#ID' + newNum + '_title').focus();

        // Enable the "remove" button. 
        // This only shows once you have a duplicated section.
        $('#btnDel_3').attr('disabled', false);

        // Right now you can only add 4 sections, for a total of 5. Change '5' below to the max number of sections you want to allow.
        // This first if statement is for forms using input type="button" (see older demo). Delete if using button element.
        if (newNum == 5)
        {
            $('#btnAdd_3').attr('disabled', true); // value here updates the text in the 'add' button when the limit is reached
        }
        // This second if statement is for forms using the new button tag (see Bootstrap demo). Delete if using input type="button" element.
        if (newNum == 5) {

            $('#btnAdd_3').attr('disabled', true); // value here updates the text in the 'add' button when the limit is reached 
            if (newNum == 5) {
                $.alert('jQuery alert.js Plugin!', {
                    title: 'You have reached the limit',
                    position: 'top-center'
                });

            }
        }
    });

    $('#btnDel_3').click(function () {
        // Confirmation dialog box. Works on all desktop browsers and iPhone.
        //  if (confirm("Are you sure you wish to remove this email? This cannot be undone."))
        {
            var num = $('.clonedInput_3').length;
            // how many "duplicatable" input fields we currently have
            $('#addemailentry' + num).slideUp('5000', function () {
                $(this).remove();
                // if only one element remains, disable the "remove" button
                if (num - 1 == 1)
                    $('#btnDel_3').attr('disabled', true);
                // enable the "add" button. IMPORTANT: only for forms using input type="button" (see older demo). DELETE if using button element.
                $('#btnAdd_3').attr('disabled', false);

            });
        }
        return false; // Removes the last section you added
    });
    // Enable the "add" button
    $('#btnAdd_3').attr('disabled', false);
    // Disable the "remove" button
    $('#btnDel_3').attr('disabled', true);

//-----------------------------------------------------------------


    $('#btnAdd_4').click(function () {
        var num = $('.clonedInput_4').length, // Checks to see how many "duplicatable" input fields we currently have
                newNum = new Number(num + 1), // The numeric ID of the new input field being added, increasing by 1 each time
                newElem = $('#regentry' + num).clone().attr('id', 'regentry' + newNum).fadeIn('slow'); // create the new element via clone(), and manipulate it's ID using newNum value

        // Email input - text
        newElem.find('.input-regno').attr('id', 'ID' + newNum + '_reg_no').attr('name', 'ID' + newNum + '_reg_no').val('');
        newElem.find('.input-regyear').attr('id', 'ID' + newNum + '_reg_year').attr('name', 'ID' + newNum + '_reg_year').val('');
        newElem.find('.input-regcouncil').attr('id', 'ID' + newNum + '_reg_council').attr('name', 'ID' + newNum + '_reg_council').val('');

        // Insert the new element after the last "duplicatable" input field
        $('#regentry' + num).after(newElem);
        $('#ID' + newNum + '_title').focus();

        // Enable the "remove" button. 
        // This only shows once you have a duplicated section.
        $('#btnDel_4').attr('disabled', false);

        // Right now you can only add 4 sections, for a total of 5. Change '5' below to the max number of sections you want to allow.
        // This first if statement is for forms using input type="button" (see older demo). Delete if using button element.
        if (newNum == 5)
        {
            $('#btnAdd_4').attr('disabled', true); // value here updates the text in the 'add' button when the limit is reached
        }
        // This second if statement is for forms using the new button tag (see Bootstrap demo). Delete if using input type="button" element.
        if (newNum == 5) {

            $('#btnAdd_4').attr('disabled', true); // value here updates the text in the 'add' button when the limit is reached 
            if (newNum == 5) {
                $.alert('jQuery alert.js Plugin!', {
                    title: 'You have reached the limit',
                    position: 'top-center'
                });

            }
        }
    });

    $('#btnDel_4').click(function () {
        // Confirmation dialog box. Works on all desktop browsers and iPhone.
        //  if (confirm("Are you sure you wish to remove this email? This cannot be undone."))
        {
            var num = $('.clonedInput_4').length;
            // how many "duplicatable" input fields we currently have
            $('#regentry' + num).slideUp('5000', function () {
                $(this).remove();
                // if only one element remains, disable the "remove" button
                if (num - 1 == 1)
                    $('#btnDel_4').attr('disabled', true);
                // enable the "add" button. IMPORTANT: only for forms using input type="button" (see older demo). DELETE if using button element.
                $('#btnAdd_4').attr('disabled', false);

            });
        }
        return false; // Removes the last section you added
    });
    // Enable the "add" button
    $('#btnAdd_4').attr('disabled', false);
    // Disable the "remove" button
    $('#btnDel_4').attr('disabled', true);


/// ----------------------------------------------------------

$('#btnAdd_5').click(function () {
        var num = $('.clonedInput_5').length, // Checks to see how many "duplicatable" input fields we currently have
                newNum = new Number(num + 1), // The numeric ID of the new input field being added, increasing by 1 each time
                newElem = $('#experentry' + num).clone().attr('id', 'experentry' + newNum).fadeIn('slow'); // create the new element via clone(), and manipulate it's ID using newNum value

        // Email input - text
        newElem.find('.input-expfromyear').attr('id', 'ID' + newNum + '_exp_from_year').attr('name', 'ID' + newNum + '_exp_from_year').val('');
        newElem.find('.input-exptoyear').attr('id', 'ID' + newNum + '_exp_to_year').attr('name', 'ID' + newNum + '_exp_to_year').val('');
        newElem.find('.input-exprole').attr('id', 'ID' + newNum + '_exp_role').attr('name', 'ID' + newNum + '_exp_role').val('');
        newElem.find('.input-exporg').attr('id', 'ID' + newNum + '_exp_org').attr('name', 'ID' + newNum + '_exp_org').val('');
        newElem.find('.input-expcity').attr('id', 'ID' + newNum + '_exp_city').attr('name', 'ID' + newNum + '_exp_city').val('');

        // Insert the new element after the last "duplicatable" input field
        $('#experentry' + num).after(newElem);
        $('#ID' + newNum + '_title').focus();

        // Enable the "remove" button. 
        // This only shows once you have a duplicated section.
        $('#btnDel_5').attr('disabled', false);

        // Right now you can only add 4 sections, for a total of 5. Change '5' below to the max number of sections you want to allow.
        // This first if statement is for forms using input type="button" (see older demo). Delete if using button element.
        if (newNum == 5)
        {
            $('#btnAdd_5').attr('disabled', true); // value here updates the text in the 'add' button when the limit is reached
        }
        // This second if statement is for forms using the new button tag (see Bootstrap demo). Delete if using input type="button" element.
        if (newNum == 5) {

            $('#btnAdd_5').attr('disabled', true); // value here updates the text in the 'add' button when the limit is reached 
            if (newNum == 5) {
                $.alert('jQuery alert.js Plugin!', {
                    title: 'You have reached the limit',
                    position: 'top-center'
                });

            }
        }
    });

    $('#btnDel_5').click(function () {
        // Confirmation dialog box. Works on all desktop browsers and iPhone.
        //  if (confirm("Are you sure you wish to remove this email? This cannot be undone."))
        {
            var num = $('.clonedInput_5').length;
            // how many "duplicatable" input fields we currently have
            $('#experentry' + num).slideUp('5000', function () {
                $(this).remove();
                // if only one element remains, disable the "remove" button
                if (num - 1 == 1)
                    $('#btnDel_5').attr('disabled', true);
                // enable the "add" button. IMPORTANT: only for forms using input type="button" (see older demo). DELETE if using button element.
                $('#btnAdd_5').attr('disabled', false);

            });
        }
        return false; // Removes the last section you added
    });
    // Enable the "add" button
    $('#btnAdd_5').attr('disabled', false);
    // Disable the "remove" button
    $('#btnDel_5').attr('disabled', true);

//---------------------------------------------------------------

$('#btnAdd_6').click(function () {
        var num = $('.clonedInput_6').length, // Checks to see how many "duplicatable" input fields we currently have
                newNum = new Number(num + 1), // The numeric ID of the new input field being added, increasing by 1 each time
                newElem = $('#awardentry' + num).clone().attr('id', 'awardentry' + newNum).fadeIn('slow'); // create the new element via clone(), and manipulate it's ID using newNum value

        // Email input - text
        newElem.find('.input-awardname').attr('id', 'ID' + newNum + '_award_name').attr('name', 'ID' + newNum + '_award_name').val('');
        newElem.find('.input-awardyear').attr('id', 'ID' + newNum + '_award_year').attr('name', 'ID' + newNum + '_award_year').val('');
        
        
        // Insert the new element after the last "duplicatable" input field
        $('#awardentry' + num).after(newElem);
        $('#ID' + newNum + '_title').focus();

        // Enable the "remove" button. 
        // This only shows once you have a duplicated section.
        $('#btnDel_6').attr('disabled', false);

        // Right now you can only add 4 sections, for a total of 5. Change '5' below to the max number of sections you want to allow.
        // This first if statement is for forms using input type="button" (see older demo). Delete if using button element.
        if (newNum == 5)
        {
            $('#btnAdd_6').attr('disabled', true); // value here updates the text in the 'add' button when the limit is reached
        }
        // This second if statement is for forms using the new button tag (see Bootstrap demo). Delete if using input type="button" element.
        if (newNum == 5) {

            $('#btnAdd_6').attr('disabled', true); // value here updates the text in the 'add' button when the limit is reached 
            if (newNum == 5) {
                $.alert('jQuery alert.js Plugin!', {
                    title: 'You have reached the limit',
                    position: 'top-center'
                });

            }
        }
    });

    $('#btnDel_6').click(function () {
        // Confirmation dialog box. Works on all desktop browsers and iPhone.
        //  if (confirm("Are you sure you wish to remove this email? This cannot be undone."))
        {
            var num = $('.clonedInput_6').length;
            // how many "duplicatable" input fields we currently have
            $('#awardentry' + num).slideUp('5000', function () {
                $(this).remove();
                // if only one element remains, disable the "remove" button
                if (num - 1 == 1)
                    $('#btnDel_6').attr('disabled', true);
                // enable the "add" button. IMPORTANT: only for forms using input type="button" (see older demo). DELETE if using button element.
                $('#btnAdd_6').attr('disabled', false);

            });
        }
        return false; // Removes the last section you added
    });
    // Enable the "add" button
    $('#btnAdd_6').attr('disabled', false);
    // Disable the "remove" button
    $('#btnDel_6').attr('disabled', true);

//---------------------------------------------------------------------



$('#btnAdd_7').click(function () {
        var num = $('.clonedInput_7').length, // Checks to see how many "duplicatable" input fields we currently have
                newNum = new Number(num + 1), // The numeric ID of the new input field being added, increasing by 1 each time
                newElem = $('#memberentry' + num).clone().attr('id', 'memberentry' + newNum).fadeIn('slow'); // create the new element via clone(), and manipulate it's ID using newNum value

        // Email input - text
        newElem.find('.input-membername').attr('id', 'ID' + newNum + '_member_name').attr('name', 'ID' + newNum + '_member_name').val('');
        
        
        
        // Insert the new element after the last "duplicatable" input field
        $('#memberentry' + num).after(newElem);
        $('#ID' + newNum + '_title').focus();

        // Enable the "remove" button. 
        // This only shows once you have a duplicated section.
        $('#btnDel_7').attr('disabled', false);

        // Right now you can only add 4 sections, for a total of 5. Change '5' below to the max number of sections you want to allow.
        // This first if statement is for forms using input type="button" (see older demo). Delete if using button element.
        if (newNum == 5)
        {
            $('#btnAdd_7').attr('disabled', true); // value here updates the text in the 'add' button when the limit is reached
        }
        // This second if statement is for forms using the new button tag (see Bootstrap demo). Delete if using input type="button" element.
        if (newNum == 5) {

            $('#btnAdd_7').attr('disabled', true); // value here updates the text in the 'add' button when the limit is reached 
            if (newNum == 5) {
                $.alert('jQuery alert.js Plugin!', {
                    title: 'You have reached the limit',
                    position: 'top-center'
                });

            }
        }
    });

    $('#btnDel_7').click(function () {
        // Confirmation dialog box. Works on all desktop browsers and iPhone.
        //  if (confirm("Are you sure you wish to remove this email? This cannot be undone."))
        {
            var num = $('.clonedInput_7').length;
            // how many "duplicatable" input fields we currently have
            $('#memberentry' + num).slideUp('5000', function () {
                $(this).remove();
                // if only one element remains, disable the "remove" button
                if (num - 1 == 1)
                    $('#btnDel_7').attr('disabled', true);
                // enable the "add" button. IMPORTANT: only for forms using input type="button" (see older demo). DELETE if using button element.
                $('#btnAdd_7').attr('disabled', false);

            });
        }
        return false; // Removes the last section you added
    });
    // Enable the "add" button
    $('#btnAdd_7').attr('disabled', false);
    // Disable the "remove" button
    $('#btnDel_7').attr('disabled', true);


//------------------------------------------------------------------------



$('#btnAdd_8').click(function () {
        var num = $('.clonedInput_8').length, // Checks to see how many "duplicatable" input fields we currently have
                newNum = new Number(num + 1), // The numeric ID of the new input field being added, increasing by 1 each time
                newElem = $('#specialentry' + num).clone().attr('id', 'specialentry' + newNum).fadeIn('slow'); // create the new element via clone(), and manipulate it's ID using newNum value

        // Email input - text
        newElem.find('.input-specializationname').attr('id', 'ID' + newNum + '_specialization_name').attr('name', 'ID' + newNum + '_specialization_name').val('');
        
        
        
        // Insert the new element after the last "duplicatable" input field
        $('#specialentry' + num).after(newElem);
        $('#ID' + newNum + '_title').focus();

        // Enable the "remove" button. 
        // This only shows once you have a duplicated section.
        $('#btnDel_8').attr('disabled', false);

        // Right now you can only add 4 sections, for a total of 5. Change '5' below to the max number of sections you want to allow.
        // This first if statement is for forms using input type="button" (see older demo). Delete if using button element.
        if (newNum == 5)
        {
            $('#btnAdd_8').attr('disabled', true); // value here updates the text in the 'add' button when the limit is reached
        }
        // This second if statement is for forms using the new button tag (see Bootstrap demo). Delete if using input type="button" element.
        if (newNum == 5) {

            $('#btnAdd_8').attr('disabled', true); // value here updates the text in the 'add' button when the limit is reached 
            if (newNum == 5) {
                $.alert('jQuery alert.js Plugin!', {
                    title: 'You have reached the limit',
                    position: 'top-center'
                });

            }
        }
    });

    $('#btnDel_8').click(function () {
        // Confirmation dialog box. Works on all desktop browsers and iPhone.
        //  if (confirm("Are you sure you wish to remove this email? This cannot be undone."))
        {
            var num = $('.clonedInput_8').length;
            // how many "duplicatable" input fields we currently have
            $('#specialentry' + num).slideUp('5000', function () {
                $(this).remove();
                // if only one element remains, disable the "remove" button
                if (num - 1 == 1)
                    $('#btnDel_8').attr('disabled', true);
                // enable the "add" button. IMPORTANT: only for forms using input type="button" (see older demo). DELETE if using button element.
                $('#btnAdd_8').attr('disabled', false);

            });
        }
        return false; // Removes the last section you added
    });
    // Enable the "add" button
    $('#btnAdd_8').attr('disabled', false);
    // Disable the "remove" button
    $('#btnDel_8').attr('disabled', true);



//-------------------------------------------------------------------------




$('#btnAdd_9').click(function () {
        var num = $('.clonedInput_9').length, // Checks to see how many "duplicatable" input fields we currently have
                newNum = new Number(num + 1), // The numeric ID of the new input field being added, increasing by 1 each time
                newElem = $('#serviceentry' + num).clone().attr('id', 'serviceentry' + newNum).fadeIn('slow'); // create the new element via clone(), and manipulate it's ID using newNum value

        // Email input - text
        newElem.find('.input-profileservice').attr('id', 'ID' + newNum + '_profile_service').attr('name', 'ID' + newNum + '_profile_service').val('');
        
        
        
        // Insert the new element after the last "duplicatable" input field
        $('#serviceentry' + num).after(newElem);
        $('#ID' + newNum + '_title').focus();

        // Enable the "remove" button. 
        // This only shows once you have a duplicated section.
        $('#btnDel_9').attr('disabled', false);

        // Right now you can only add 4 sections, for a total of 5. Change '5' below to the max number of sections you want to allow.
        // This first if statement is for forms using input type="button" (see older demo). Delete if using button element.
        if (newNum == 5)
        {
            $('#btnAdd_9').attr('disabled', true); // value here updates the text in the 'add' button when the limit is reached
        }
        // This second if statement is for forms using the new button tag (see Bootstrap demo). Delete if using input type="button" element.
        if (newNum == 5) {

            $('#btnAdd_9').attr('disabled', true); // value here updates the text in the 'add' button when the limit is reached 
            if (newNum == 5) {
                $.alert('jQuery alert.js Plugin!', {
                    title: 'You have reached the limit',
                    position: 'top-center'
                });

            }
        }
    });

    $('#btnDel_9').click(function () {
        // Confirmation dialog box. Works on all desktop browsers and iPhone.
        //  if (confirm("Are you sure you wish to remove this email? This cannot be undone."))
        {
            var num = $('.clonedInput_9').length;
            // how many "duplicatable" input fields we currently have
            $('#serviceentry' + num).slideUp('5000', function () {
                $(this).remove();
                // if only one element remains, disable the "remove" button
                if (num - 1 == 1)
                    $('#btnDel_9').attr('disabled', true);
                // enable the "add" button. IMPORTANT: only for forms using input type="button" (see older demo). DELETE if using button element.
                $('#btnAdd_9').attr('disabled', false);

            });
        }
        return false; // Removes the last section you added
    });
    // Enable the "add" button
    $('#btnAdd_9').attr('disabled', false);
    // Disable the "remove" button
    $('#btnDel_9').attr('disabled', true);




});