"use strict";

$(document).on("click", ".open-edit-category", function () {
	let category = $(this).data('category');
	let id = $(this).data('id');
	$("#kt_modal_edit_category #edit_category").val( category );
	$("#kt_modal_edit_category #edit_category_id").val( id );

});

// Class definition
var KTModalEditCategory = function () {
	var submitButton;
	var cancelButton;
	var validator;
	var form;
	var modal;
	var modalEl;

	// Init form inputs
	var initForm = function() {		

	}

	// Handle form validation and submittion

	var handleForm = function() {
		console.log("handleform");
		// Init form validation rules. For more info check the FormValidation plugin's official documentation:https://formvalidation.io/
		validator = FormValidation.formValidation(
			form,
			{
				fields: {
					edit_category: {
						validators: {
							notEmpty: {
								message: 'Category name is required!'
							}
						}
					},
					// target_assign: {
					// 	validators: {
					// 		notEmpty: {
					// 			message: 'Target assign is required'
					// 		}
					// 	}
					// },
				},
				plugins: {
					trigger: new FormValidation.plugins.Trigger(),
					bootstrap: new FormValidation.plugins.Bootstrap5({
						rowSelector: '.fv-row',
                        eleInvalidClass: '',
                        eleValidClass: ''
					})
				}
			}
		);

		// Action buttons
		submitButton.addEventListener('click', function (e) {
			console.log("testing category submit button");
			e.preventDefault();
			//Validate form before submit
			if (validator) {
				validator.validate().then(function (status) {
					console.log('validated!');

					if (status == 'Valid') {
						submitButton.setAttribute('data-kt-indicator', 'on');

						// Disable button to avoid multiple click 
						submitButton.disabled = true;
						let category = document.getElementById('edit_category').value;
						let edit_category_id = document.getElementById('edit_category_id').value;
					
						//Ajax Function to send a get request
						$.ajax({
							type: "post",
							url: "/category/edit",
							dataType:"json",
							data: {category: category,id: edit_category_id},
							success: function(response){

								submitButton.removeAttribute('data-kt-indicator');		
								// Enable button
								submitButton.disabled = false;
								
								// Show success message. For more info check the plugin's official documentation: https://sweetalert2.github.io/
								// Swal.fire({
								// 	text: "Category has been successfully added!",
								// 	icon: "success",
								// 	buttonsStyling: false,
								// 	confirmButtonText: "Ok, got it!",
								// 	customClass: {
								// 		confirmButton: "btn btn-primary"
								// 	}
								// }).then(function (result) {
								// 	if (result.isConfirmed) {
								// 		modal.hide();
								// 	}
								// });
								window.location.href = "/category/overview";
							},
							error: function (jqXHR, textStatus, errorThrown) { 
								Swal.fire({
									text: textStatus + ": " +  errorThrown,
									icon: "error",
									buttonsStyling: false,
									confirmButtonText: "Ok, got it!",
									customClass: {
										confirmButton: "btn btn-primary"
									}
								});
								
								submitButton.removeAttribute('data-kt-indicator');		
								// Enable button
								submitButton.disabled = false;
							}

						}); 						
					} else {
						// Show error message.
						Swal.fire({
							text: "Sorry, looks like there are some errors detected, please try again.",
							icon: "error",
							buttonsStyling: false,
							confirmButtonText: "Ok, got it!",
							customClass: {
								confirmButton: "btn btn-primary"
							}
						});
					}
				});
			}
		});

		cancelButton.addEventListener('click', function (e) {
			e.preventDefault();

			Swal.fire({
				text: "Are you sure you would like to cancel?",
				icon: "warning",
				showCancelButton: true,
				buttonsStyling: false,
				confirmButtonText: "Yes, cancel it!",
				cancelButtonText: "No, return",
				customClass: {
					confirmButton: "btn btn-primary",
					cancelButton: "btn btn-active-light"
				}
			}).then(function (result) {
				if (result.value) {
					form.reset(); // Reset form	
					modal.hide(); // Hide modal				
				} else if (result.dismiss === 'cancel') {
					Swal.fire({
						text: "Your form has not been cancelled!.",
						icon: "error",
						buttonsStyling: false,
						confirmButtonText: "Ok, got it!",
						customClass: {
							confirmButton: "btn btn-primary",
						}
					});
				}
			});
		});
	}

	return {
		// Public functions
		init: function () {
			// Elements
			modalEl = document.querySelector('#kt_modal_edit_category');

			if (!modalEl) {
				return;
			}

			modal = new bootstrap.Modal(modalEl);

			form = document.querySelector('#kt_modal_edit_category_form');
			submitButton = document.getElementById('kt_modal_edit_category_submit');
			cancelButton = document.getElementById('kt_modal_edit_category_cancel');

			initForm();
			handleForm();
			
		}
	};
}();

// On document ready
KTUtil.onDOMContentLoaded(function () {
	KTModalEditCategory.init();
});