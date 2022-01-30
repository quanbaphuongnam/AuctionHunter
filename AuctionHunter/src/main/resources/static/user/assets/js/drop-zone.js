const resultElement = document.querySelector('.preview')
const validImageTypes = ['image/gif', 'image/jpeg', 'image/png']

document.querySelectorAll(".drop-zone__input").forEach(inputElement => {
	const dropZoneElement = inputElement.closest(".drop-zone");
	var x = 0;

	dropZoneElement.addEventListener("click", e => {
		inputElement.click();
	});
	dropZoneElement.addEventListener("change", e => {
		if (inputElement.files.length) {
			const files = inputElement.files;
			if (inputElement.files.length <= 5) {
				if (x == 0) {
					for (var i = 0; i < inputElement.files.length; i++) {
						const file = files[i]
						renderPreviewImage(dropZoneElement, file);
						x++
					}
				} else {
					var y = x;
					for (var i = 0; i < y; i++) {
						dropZoneElement.querySelector(".drop--zone__thumb").remove();
						x--;
					}
					if (x == 0) {
						for (var i = 0; i < inputElement.files.length; i++) {
							const file = files[i]
							renderPreviewImage(dropZoneElement, file);
							x++
						}
					}
				}
			} else {
				Swal.fire({
					position: 'top-end',
					icon: 'error',
					title: 'Upload up to 5 images',
					showConfirmButton: false,
					timer: 2000
				});
				var y = x;
				for (var i = 0; i < y; i++) {
					dropZoneElement.querySelector(".drop--zone__thumb").remove();
					x--;
				}
				let dropZonePrompt = dropZoneElement.querySelector(".drop-zone__prompt");
				dropZonePrompt = document.createElement("h3");
				dropZonePrompt.classList.add("drop-zone__prompt");
				dropZonePrompt.innerHTML = "Drop files here or click to upload."
				dropZoneElement.appendChild(dropZonePrompt);
				dropZoneElement.classList.remove("drop-zone--over");
			}
		}
	});

	dropZoneElement.addEventListener("dragover", e => {
		e.preventDefault();
		dropZoneElement.classList.add("drop-zone--over");
	});

	["dragleave", "dragend"].forEach(type => {
		dropZoneElement.addEventListener(type, e => {
			dropZoneElement.classList.remove("drop-zone--over");
		});
	});

	dropZoneElement.addEventListener('drop', function(e) {
		e.preventDefault()
		inputElement.files = e.dataTransfer.files;
		const files = e.dataTransfer.files;
		console.log(files);
		if (files.length <= 5) {
			if (x == 0) {
				for (var i = 0; i < inputElement.files.length; i++) {
					const file = files[i]
					renderPreviewImage(dropZoneElement, file);
					x++
				}
			} else {
				var y = x;
				for (var i = 0; i < y; i++) {
					dropZoneElement.querySelector(".drop--zone__thumb").remove();
					x--;
				}
				if (x == 0) {
					for (var i = 0; i < inputElement.files.length; i++) {
						const file = files[i]
						renderPreviewImage(dropZoneElement, file);
						x++
					}
				}
			}
		} else {
			Swal.fire({
				position: 'top-end',
				icon: 'error',
				title: 'Upload up to 5 images',
				showConfirmButton: false,
				timer: 2000
			});
			var y = x;
			for (var i = 0; i < y; i++) {
				dropZoneElement.querySelector(".drop--zone__thumb").remove();
				x--;
			}
			let dropZonePrompt = dropZoneElement.querySelector(".drop-zone__prompt");
			dropZonePrompt = document.createElement("h3");
			dropZonePrompt.classList.add("drop-zone__prompt");
			dropZonePrompt.innerHTML = "Drop files here or click to upload."
			dropZoneElement.appendChild(dropZonePrompt);
			dropZoneElement.classList.remove("drop-zone--over");
		}
	})
	dropZoneElement.classList.remove("drop-zone--over");
});

/**
* Updates the thumbnail on a drop zone element.
*
* @param {HTMLElement} dropZoneElement
* @param {File} file
*/
function renderPreviewImage(dropZoneElement, file) {
	const fileType = file['type']

	if (!validImageTypes.includes(fileType)) {
		Swal.fire({
			position: 'top-end',
			icon: 'error',
			title: 'Please select only product photos!',
			showConfirmButton: false,
			timer: 2000
		});
		return
	}

	if (dropZoneElement.querySelector(".drop-zone__prompt")) {
		dropZoneElement.querySelector(".drop-zone__prompt").remove();
	}
	const fileReader = new FileReader()
	fileReader.readAsDataURL(file)

	fileReader.onload = function() {
		const url = fileReader.result
		resultElement.insertAdjacentHTML(
			'beforeend',
			`<img src="${url}" alt="${file.name}" class="drop--zone__thumb"/>`
		)

	}
}