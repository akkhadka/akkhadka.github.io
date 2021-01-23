(function () {
    "use strict";
    const baseUrl = 'http://jsonplaceholder.typicode.com';
    window.onload = function () {
        const btnGetPost = document.getElementById('btnGetPost');
        const userId = document.getElementById('userId');
        const email = document.getElementById('email');
        
       
        
        btnGetPost.onclick = function () {
            getUserDetail(userId.value).then(function (res) {
                console.log(res);
                userName.innerHTML = `Name: ${res.name}`;
                email.innerHTML = `Email: ${res.email}`;

            });

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
                            
                     <input type='button' class='comment' onclick='getComment(event)' id='${post.id}' value='comments'/>        
                                            
                                </div>                    
                                </div>`;
                  
                    document.getElementById("myform").insertAdjacentHTML('beforeend',title + body +button );

                
                }

            });

        };
    }
    function getComment(event){
        console.log('h');
    }
    async function getCommentAsync(){

    }
    async function getAllPost(id) {
        const url = baseUrl + `/posts?userId=${id}`;
        const response = await fetch(url)
        let result;
        if (response.ok) {
            result = await response.json();

        }
        else {
            console.log(response.status);
        }
        return result;
    }
    async function getUserDetail(id) {
        const url = baseUrl + `/users/${id}`;
        const response = await fetch(url)
        let result;
        if (response.ok) {
            result = await response.json();

        }
        else {
            console.log(response.status);
        }
        return result;
    }
})()