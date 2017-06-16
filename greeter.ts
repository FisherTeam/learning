function greeter(person:string){
    return "Hello, " + person;
}


var user = '111';
document.body.innerHTML = greeter(user); 


outer:
    for(let i = 0 ; i < 10;i++){
        for(let j = 10; j > i ; j--){
            console.log(j)
           if( i == 5){
            break outer;
           }
        }
    }
