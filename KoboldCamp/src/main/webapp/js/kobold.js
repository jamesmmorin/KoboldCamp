$(document).ready(function () {
    loadAsset();
    loadUser();

});

var today = new Date();
var dd = today.getDate();
var mm = today.getMonth() + 1; //January is 0!
var yyyy = today.getFullYear();
if (dd < 10) {
    dd = '0' + dd;
}
if (mm < 10) {
    mm = '0' + mm;
}
today = mm + '/' + dd + '/' + yyyy;



//////////////////////////Gets logged-in user's ID//////////////////////////////
////////////////////////////////////////////////////////////////////////////////
var id;
function getUserId() {
    var username = document.getElementById("logInUsername").innerHTML;

    console.log("doc ready");

    $.ajax({
        type: 'PUT',
        url: 'getUserId/' + username
    }).success(function (data) {
        document.getElementById("user_id").innerHTML = id;
    });
}

function echoData(data) {
    console.log(data);
}

//////////////////////////This is the add Asset function////////////////////////
////////////////////////////////////////////////////////////////////////////////
$('#addEquipment').click(function (event) {
    event.preventDefault();

    var c = document.getElementById("categoryTable");
    var category = c.options[c.selectedIndex].value;

    $.ajax({
        type: 'POST',
        url: 'asset',
        data: JSON.stringify({
            category_id: category,
            brand: $('#brand').val(),
            description: $('#description').val(),
            employee_id: 2,
            member_id: 2,
            status_id: 1,
            note: 'this is a note'

        }),
        headers: {
            'Accept': 'application/json',
            'Content-Type': 'application/json'
        },
        'dataType': 'json'
    }).success(function () {
        document.getElementById("addEquipmentForm").reset();
        alert("Equipment Succesfully Added!");
    });

});


//////////////////////////This is the add Member function///////////////////////
////////////////////////////////////////////////////////////////////////////////
$('#addMember').click(function (event) {
    event.preventDefault();

    var authority;

    if (document.getElementById('adminRadio').checked) {
        authority = 'ROLE_ADMIN';
    } else if (document.getElementById('employeeRadio').checked) {
        authority = 'ROLE_EMPLOYEE';
    } else {
        authority = "ROLE_USER";
    }

    $.ajax({
        type: 'POST',
        url: 'user',
        data: JSON.stringify({
            username: $('#username').val(),
            first_name: $('#first_name').val(),
            last_name: $('#last_name').val(),
            email: $('#email').val(),
            phone: $('#phone').val(),
            password: 'kobolds-r-great',
            enabled: 1,
            authority: authority

        }),
        headers: {
            'Accept': 'application/json',
            'Content-Type': 'application/json'
        },
        'dataType': 'json'
    }).success(function () {
        window.location.reload(true);
        alert("New Member Succesfully Added!");
    }).fail(function () {
        alert("That username is already in use, please select another username");
    });

});

//////////////////////////This is the update asset record function//////////////
////////////////////////////////////////////////////////////////////////////////
function updateAsset(id) {
    event.preventDefault();
    document.getElementById("equipmentStatus").innerHTML = id;
}

$('#editAsset').click(function (event) {
    event.preventDefault();

    var e = document.getElementById("assetStatusTable");
    var i = e.options[e.selectedIndex].value;

    $.ajax({
        type: 'POST',
        url: 'assetRecordUpdate',
        data: JSON.stringify({
            asset_id: document.getElementById("equipmentStatus").innerHTML,
            employee_id: document.getElementById("updateAssetMemberId").value,
            member_id: document.getElementById("updateAssetMemberId").value,
            status_id: i,
            note: document.getElementById("xtraNotes").value
        }),
        headers: {
            'Accept': 'application/json',
            'Content-Type': 'application/json'
        },
        'dataType': 'json'
    }).success(function () {
        alert("Record Succesfully Updated!");
        window.location.reload(true);
    });


});

/////////////This is the update user function on the profile page/////////////// THIS IS NOT WORKING YET
////////////////////////////////////////////////////////////////////////////////
$('#updateUserInfo').click(function (event) {
    event.preventDefault();


    getUserId();
    var id = document.getElementById("user_id").innerHTML;
    $.ajax({
        type: 'PUT',
        url: 'userEdit/' + id,
        data: JSON.stringify({
            user_id: id,
            first_name: $('#profileFirstName').val(),
            last_name: $('#profileLastName').val(),
            email: $('#profileEmail').val(),
            phone: $('#profilePhone').val()
        }),
        headers: {
            'Accept': 'application/json',
            'Content-Type': 'application/json'
        },
        'dataType': 'json'
    }).success(function () {
        alert("User Succesfully Updated!");
        window.location.reload(true);
    });

});
/////////////////This populates the Member table on the admin page//////////////
////////////////////////////////////////////////////////////////////////////////

function loadUser() {

    $.ajax({
        url: "displayMemberList", type: 'GET',
        headers: {
            'Accept': 'application/json',
            'Content-Type': 'application/json'
        },
        'dataType': 'json'
    }).success(function (data, status) {
        fillMembersTable(data, status);
        fillMemberTable(data, status);
    });
}


////////////////This populates the asset table on the asset page////////////////
////////////////////////////////////////////////////////////////////////////////
function loadAsset() {
    clearAssetTable();
    clearRentalTable();

    $.ajax({
        url: "displayAssetList", type: 'GET',
        headers: {
            'Accept': 'application/json',
            'Content-Type': 'application/json'
        },
        'dataType': 'json'
    }).success(function (data, status) {
        fillAssetTable(data, status);
        fillRentalTable(data, status);
    });
}

/////This populates the rental history table on the 1001 page/////////////////// 
////////////////////////////////////////////////////////////////////////////////
function assetRentalHistory(id) {

    window.open("asset/" + id);

//    $.ajax({
//            type: 'GET',
//            url: 'assetRentalHistory/' + id
//        }).success(function () {
//            window.location.reload(true);
//            alert("Asset Successfull Removed");
//        });

}

//////////////////////these clear diferent tables///////////////////////////////
////////////////////////////////////////////////////////////////////////////////
function clearRentalTable() {
    $('#rentalRows').empty();
}

function clearAssetTable() {
    $('#assetRows').empty();
}

function clearMemberTable() {
    $('#memberRows').empty();
}

function clearMembersTable() {
    $('#membersRows').empty();
}

function clearProfileTable() {
    $('#profileRows').empty();
}

//////////////This deletes the asset from the table on asset.jsp////////////////
////////////////////////////////////////////////////////////////////////////////
function deleteAsset(id) {
    var answer = confirm("Do you really want to delete this Asset?");
    if (answer === true) {
        $.ajax({
            type: 'DELETE',
            url: 'assetDelete/' + id
        }).success(function () {
            window.location.reload(true);
            alert("Asset Successfull Removed");
        });
    }
}

//////////////This resets the user's password on the admin.jsp page///////////// 
////////////////////////////////////////////////////////////////////////////////
function resetPassword(id) {
    var answer = confirm("Do you really want to reset this user's password?");
    if (answer === true) {

        $.ajax({
            type: 'PUT',
            url: 'resetPassword/' + id
        }).success(function () {
            alert("Password Successfully Reset");
            window.location.reload(true);

        });
    }
}

//////////////This updates the user's password on the profile page////////////// 
////////////////////////////////////////////////////////////////////////////////
$('#changePassword').click(function (event) {
    event.preventDefault();

    var id = 4;

    if ($('#profileNewPassword').val() !== $('#profileRepeatPassword').val()) {
        alert('your passwords need to match, please re-try');
        window.location.reload(true);
    } else {

        $.ajax({
            type: 'PUT',
            url: 'updatePassword',
            data: JSON.stringify({
                user_id: id,
                password: $('#profileNewPassword').val()
            }),
            headers: {
                'Accept': 'application/json',
                'Content-Type': 'application/json'
            },
            'dataType': 'json'
        }).success(function () {
            alert("Password Successfully Reset!");
            window.location.reload(true);
        });
    }
});



////////////this fills the asset table on asset.jsp/////////////////////////////
////////////////////////////////////////////////////////////////////////////////
function fillAssetTable(AssetList, status) {

    clearAssetTable();

    var aTable = $('#assetRows');

    $.each(AssetList, function (index, asset) {
        aTable.append($('<tr>')
                .append($('<td>').text(asset.asset_id))
                .append($('<td>').text(asset.name))
                .append($('<td>').text(asset.brand))
                .append($('<td>').text(asset.description))
                .append($('<td>').text(asset.status))
                .append($('<td>').text(asset.first_name))
                .append($('<td>').text(asset.last_name))
                .append($('<td>')
                        .append($('<a>')
                                .attr({
                                    'onClick': 'assetRentalHistory(' +
                                            asset.asset_id + ')'
                                })
                                .text('View')
                                ) // ends the <a> tag
                        ) // ends the <td> tag for Edit
                .append($('<td>')
                        .append($('<a>')
                                .attr({
                                    'data-asset-id': asset.asset_id,
                                    'data-toggle': 'modal',
                                    'data-target': '#checkInModal',
                                    'onClick': 'updateAsset(' + asset.asset_id + ')'
                                })
                                .text('Edit Status')
                                ) // ends the <a> tag
                        ) // ends the <td> tag
                .append($('<td>')
                        .append($('<a>')
                                .attr({
                                    'onClick': 'deleteAsset(' +
                                            asset.asset_id + ')'
                                })
                                .text('X')
                                ) // ends the <a> tag
                        )
                ); // ends the <tr> 
    }); // ends the 'each' function
}


//////////this fills the table on rentals.jsp///////////////////////////////////
////////////////////////////////////////////////////////////////////////////////
function fillRentalTable(AssetList, status) {

    clearRentalTable();

    var aTable = $('#rentalRows');

    $.each(AssetList, function (index, asset) {
        aTable.append($('<tr>')
                .append($('<td>').text(asset.asset_id))
                .append($('<td>').text(asset.name))
                .append($('<td>').text(asset.brand))
                .append($('<td>').text(asset.description))
                .append($('<td>').text(asset.status)
                        // ends the <a> tag
                        ) // ends the <td> tag 
                ); // ends the <tr> 
    }); // ends the 'each' function
}

////////////////////this fills the member table on admin.jsp////////////////////
////////////////////////////////////////////////////////////////////////////////
function fillMemberTable(memberList, status) {

    clearMemberTable();

    var mTable = $('#memberRows');

    $.each(memberList, function (index, user) {
        mTable.append($('<tr>')
                .append($('<td>').text(user.user_id))
                .append($('<td>').text(user.first_name))
                .append($('<td>').text(user.last_name))
                .append($('<td>').text(user.authority))
                .append($('<td>')
                        .append($('<a>')
                                .attr({
                                    'onClick': 'disableEnableUser(' +
                                            user.user_id + "," + user.enabled + ')'
                                })
                                .text(disableEnableUserText(user))
                                ) // ends the <a> tag
                        ).append($('<td>')
                .append($('<a>')
                        .attr({
                            'onClick': 'resetPassword(' +
                                    user.user_id + ')'
                        })
                        .text('Reset Password')
                        ) // ends the <a> tag
                )
                ); // ends the <tr> 
    }); // ends the 'each' function
}

//////////////This deletes the user from the table on admin.jsp/////////////////
////////////////////////////////////////////////////////////////////////////////
function disableEnableUser(id, enabled) {
    if (enabled === 1) {
        disableUser(id);
    } else {
        enableUser(id);
    }

}

function disableUser(id) {
    var answer = confirm("Do you really want to disable this user's account?");
    if (answer === true) {

        $.ajax({
            type: 'DELETE',
            url: 'userDisable/' + id
        }).success(function () {
            alert("User Account Successfully Disabled");
            window.location.reload(true);

        });
    }
}

function enableUser(id) {
    var answer = confirm("Do you really want to enable this user's account?");
    if (answer === true) {

        $.ajax({
            type: 'DELETE',
            url: 'userEnable/' + id
        }).success(function () {
            alert("User Account Successfully Enabled");
            window.location.reload(true);

        });
    }
}

function disableEnableUserText(user) {
    if (user.enabled === 1) {
        return "DISABLE";
    } else {
        return "ENABLE";
    }

}


//////////////////this fills the member table on members.jsp////////////////////
////////////////////////////////////////////////////////////////////////////////
function fillMembersTable(memberList, status) {

    clearMembersTable();

    var mTable = $('#membersRows');

    $.each(memberList, function (index, user) {
        mTable.append($('<tr>')
                .append($('<td>').text(user.user_id))
                .append($('<td>').text(user.first_name))
                .append($('<td>').text(user.last_name))
                .append($('<td>').text(user.email))
                .append($('<td>').text(user.phone))
                ); // ends the <tr> 
    }); // ends the 'each' function
}

////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////

