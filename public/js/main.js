const myVM = (() => {
    let userButtons = document.querySelectorAll('.u-link'),
        lightBox = document.querySelector('.lightbox');

        //create the team member list
        function renderTeam(media) {
            return `<ul class="u-social">
                ${media.map(item => `<li>${item}</li>`).join("")}
                    </ul>`
        }

    function parseUserData(project) {
        let targetDiv = lightBox.querySelector('.lb-content'),
            targetImg = lightBox.querySelector('img');

        let bioContent = `
            <h2>Project Information</h2>
            <p>${project.bio}</p>
            <h2>Team Members:</h2>
            <!-- Team Member Names Loop -->
            ${renderTeam(project.team)}
            <h2>Project Photos</h2>
            <img src="images/${project.featuredImg1}" alt="">
            <img src="images/${project.featuredImg2}" alt="">
            <img src="images/${project.featuredImg3}" alt="">
            <img src="images/${project.featuredImg4}" alt="">
            <h2><a href="images/${project.projectLink}" target="_blank">View Project</a></h2>
        `;

        targetDiv.innerHTML = bioContent;
        targetImg.src = project.currentSrc; // check this

        lightBox.classList.add('show-lb');
    }
   
    function getUserData(event) {
        event.preventDefault();
        //debugger;
        let url = `/users/${this.getAttribute('href')}`,
            currentImg = this.previousElementSibling.getAttribute('src');

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

    // Counter Circles
    var circle = document.querySelector('circle');
    var radius = circle.r.baseVal.value;
    var circumference = radius * 2 * Math.PI;

    circle.style.strokeDasharray = `${circumference} ${circumference}`;
    circle.style.strokeDashoffset = `${circumference}`;

    function setProgress(percent) {
        const offset = circumference - percent / 100 * circumference;
        circle.style.strokeDashoffset = offset;
    }   

    const input = document.querySelector('input');
    setProgress(input.value);

    input.addEventListener('change', function(e) {
        if (input.value < 101 && input.value > -1) {
            setProgress(input.value);
        }  
    })
    

    userButtons.forEach(button => button.addEventListener("click", getUserData));

    //wire up the lightbox close button
    lightBox.querySelector('.close').addEventListener("click", function() {
        lightBox.classList.remove('show-lb');
    });
})();