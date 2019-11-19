// this is a partially revealing module pattern - just a variation on what we've already done

const myVM = (() => {
    // get the user buttons and fire off an async DB query with Fetch
    let userButtons = document.querySelectorAll('.u-link'),
        lightBox = document.querySelector('.lightbox');

        //create the achievements media list
        function renderAchievements(media) {
            return `<ul class="u-social">
                ${media.map(item => `<li>${item}</li>`).join("")}
                    </ul>`
        }

    function parseUserData(person) {
        let targetDiv = lightBox.querySelector('.lb-content'),
            targetImg = lightBox.querySelector('img');

        let bioContent = `
            <p>${person.bio}</p>
            <h2>Notable Achievements:</h2>
            <!-- loop thru achievements stuff here-->
            ${renderAchievements(person.achievements)}
        `;

        targetDiv.innerHTML = bioContent;
        targetImg.src = person.currentSrc;

        lightBox.classList.add('show-lb');
    }
   
    function getUserData(event) {
        event.preventDefault();
        //debugger;
        //1,2, or 3 depending on which anchor tag you click
        let url = `/users/${this.getAttribute('href')}`,
            currentImg = this.previousElementSibling.getAttribute('src');

        //this goes and tetches the database content (or an API endp)
        //that's why it's called a fetch
        fetch(url)
            .then(res => res.json())
            .then(data => {
                console.log(data)

                data.currentSrc = currentImg;
                parseUserData(data);
            })
            .catch((err) => {
                console.log(err);
            });
    }

    userButtons.forEach(button => button.addEventListener("click", getUserData));

    //wire up the lightbox close button
    lightBox.querySelector('.close').addEventListener("click", function() {
        lightBox.classList.remove('show-lb');
    });
})();