(function () {
    "use strict";
    const baseUrl = 'https://jsonplaceholder.typicode.com';
    window.onload = function () {
        const btnGetPost = document.getElementById('btnGetPost');
        const userId = document.getElementById('userId');
        const email = document.getElementById('email');
        const divPost = document.getElementById("posts");
        btnGetPost.onclick = function () {
            divPost.innerHTML = '';
            userName.innerHTML = '';
            email.innerHTML = '';   
            if (userId.value.trim() == "") return;
            getUserDetail(userId.value).then(function (res) {
                userName.innerHTML = `Name: ${res.name}`;
                email.innerHTML = `Email: ${res.email}`;              
                
                getAllPost(userId.value).then((res) => {
                    for (let post of res) {

                        let title = `<div class="row">               
                                <div class="col-12">                                     
                                    ${post.title}            
                                </div>                    
                                </div>`;
                        let body = `<div class="row">               
                                <div class="col-12">    
                                  
                                    ${post.body}               
                                                 
                                </div>                    
                                </div>`;
                        let button = `<div class="row">               
                     <div class="col-12">    
                            
                     <button type='button' name='comment' class='btn-secondary'  id='${post.id}' > comments </button>     
                                            
                                </div>                    
                                </div>`;

                        divPost.insertAdjacentHTML('beforeend', title + body + button);
                        const commentBtn = document.getElementById(`${post.id}`);
                        commentBtn.onclick = commentHandler;
                    }

                

                });
            }).catch(function (err) {
                console.log(err);
            });


        };
    }
    function commentHandler(e) {
        let btnComment = e.target;
        let divComment = btnComment.nextElementSibling;
        if (divComment && divComment.matches('.comment')) {
            divComment.innerHTML = '';
        }
        else {
            divComment = document.createElement('div');
            divComment.className = 'comment';
            e.target.after(divComment);
        }
        getCommentsForPost(e.target.id).then(res => {

            for (let comment of res) {
                divComment.innerHTML += comment.body + "<br/>";
            }

        });
    }
    async function getCommentsForPost(id) {
        const url = baseUrl + `/comments?postId=${id}`;
        const response = await fetch(url)
        let result;
      

        if (!response.ok) {
            const message = `An error has occured: ${response.status}`;
            throw new Error(message);
        }
        return await response.json();
    }

    async function getAllPost(id) {
        const url = baseUrl + `/posts?userId=${id}`;
        const response = await fetch(url)
    

        if (!response.ok) {
            const message = `An error has occured: ${response.status}`;
            throw new Error(message);
        }
        return await response.json();
    }
    async function getUserDetail(id) {
        const url = baseUrl + `/users/${id}`;
        const response = await fetch(url)
      
        if (!response.ok) {
            const message = `An error has occured: ${response.status}`;
            throw new Error(message);
        }
        return await response.json();
    }
})()