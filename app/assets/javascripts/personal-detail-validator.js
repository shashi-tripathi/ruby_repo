$(document).ready(function() {

var rb = $('input[name="personal_detail[sibling]"]:radio').val();
//alert(rb);
if(rb=='1'){
    $("div#sibling1").css("display","block");
    $("div#sibling2").css("display","block");
    $('personal_detail_sibling_1').checked = "checked";
 }
 else if(rb =='2'){
    $("div#sibling1").css("display","none");
    $("div#sibling2").css("display","none");
 }


$('input[name="personal_detail[sibling]"]:radio').change(function() { 
 var sb=$(this).val();
 if(sb=='1'){
    $("div#sibling1").css("display","block");
    $("div#sibling2").css("display","block");
 }
 if(sb=='2'){
    $("div#sibling1").css("display","none");
    $("div#sibling2").css("display","none");
 }
}); 


    // Generate a simple captcha
    function randomNumber(min, max) {
        return Math.floor(Math.random() * (max - min + 1) + min);
    };
    $('#captchaOperation').html([randomNumber(1, 100), '+', randomNumber(1, 200), '='].join(' '));

    $('#studentForm').bootstrapValidator({
//        live: 'disabled',
        message: 'This value is not valid',
        feedbackIcons: {
            valid: 'glyphicon glyphicon-ok',
            invalid: 'glyphicon glyphicon-remove',
            validating: 'glyphicon glyphicon-refresh'
        },
        fields: {
            'personal_detail[first_name]': {
                  validators: {
                    notEmpty: {
                        message: 'The first name is required and cannot be empty'
                    }
                }
            },
            'personal_detail[last_name]': {
                validators: {
                    notEmpty: {
                        message: 'The Last name is required and cannot be empty'
                    }
                }
            },
             'personal_detail[dob]': {
                validators: {
                    notEmpty: {
                        message: 'Date of birth is required and cannot be empty'
                    }
                }
            },
            
            'personal_detail[f_first_name]': {
                  validators: {
                    notEmpty: {
                        message: 'Father first name is required and cannot be empty'
                    }
                }
            },
            'personal_detail[f_last_name]': {
                validators: {
                    notEmpty: {
                        message: 'Father Last name is required and cannot be empty'
                    }
                }
            },
            

         'personal_detail[m_first_name]': {
                  validators: {
                    notEmpty: {
                        message: 'Mother first name is required and cannot be empty'
                    }
                }
            },
            'personal_detail[m_last_name]': {
                validators: {
                    notEmpty: {
                        message: 'Mother Last name is required and cannot be empty'
                    }
                }
            },
            
            'personal_detail[ref1_name]': {
                validators: {
                    notEmpty: {
                        message: 'Reference Name1 is required and cannot be empty'
                    }
                }
            },
            'personal_detail[ref1_relation]': {
                validators: {
                    notEmpty: {
                        message: 'Reference1 Relation  is required and cannot be empty'
                    }
                }
            },






            username: {
                message: 'The username is not valid',
                validators: {
                    notEmpty: {
                        message: 'The username is required and cannot be empty'
                    },
                    stringLength: {
                        min: 6,
                        max: 30,
                        message: 'The username must be more than 6 and less than 30 characters long'
                    },
                    regexp: {
                        regexp: /^[a-zA-Z0-9_\.]+$/,
                        message: 'The username can only consist of alphabetical, number, dot and underscore'
                    },
                    remote: {
                        type: 'POST',
                        url: 'remote.php',
                        message: 'The username is not available'
                    },
                    different: {
                        field: 'password,confirmPassword',
                        message: 'The username and password cannot be the same as each other'
                    }
                }
            },
            'student[email]': {
                validators: {
                 notEmpty: {
                        message: 'The email is required and cannot be empty'
                    },
                    emailAddress: {
                        message: 'The input is not a valid email address'
                    }
                }
            },
            password: {
                validators: {
                    notEmpty: {
                        message: 'The password is required and cannot be empty'
                    },
                    identical: {
                        field: 'confirmPassword',
                        message: 'The password and its confirm are not the same'
                    },
                    different: {
                        field: 'username',
                        message: 'The password cannot be the same as username'
                    }
                }
            },
            confirmPassword: {
                validators: {
                    notEmpty: {
                        message: 'The confirm password is required and cannot be empty'
                    },
                    identical: {
                        field: 'password',
                        message: 'The password and its confirm are not the same'
                    },
                    different: {
                        field: 'username',
                        message: 'The password cannot be the same as username'
                    }
                }
            },
            birthday: {
                validators: {
                    date: {
                        format: 'YYYY/MM/DD',
                        message: 'The birthday is not valid'
                    }
                }
            },
            'student[gender]': {
                validators: {
                    notEmpty: {
                        message: 'The gender is required'
                    }
                }
            },
            'student[sibling]': {
                validators: {
                    notEmpty: {
                        message: 'The sibling is required'
                    }
                }
            },
            'programs[]': {
                validators: {
                    choice: {
                        min: 2,
                        max: 4,
                        message: 'Please choose 2 - 4 programming languages you are good at'
                    }
                }
            },
            captcha: {
                validators: {
                    callback: {
                        message: 'Wrong answer',
                        callback: function(value, validator) {
                            var items = $('#captchaOperation').html().split(' '), sum = parseInt(items[0]) + parseInt(items[2]);
                            return value == sum;
                        }
                    }
                }
            }
        }
    });





});