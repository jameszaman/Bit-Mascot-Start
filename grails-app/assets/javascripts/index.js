const lis = document.querySelectorAll('li');
const lisDelete = document.querySelectorAll('li button');

lisDelete.forEach((liDelete, index) => {
    liDelete.addEventListener('click', () => {
        fetch('/hello/deleteTodo', {
            method: 'POST',
            body: JSON.stringify({
                id: lis[index].value
            })
        })
        .catch(err => {
            console.error(err);
        })
        lis[index].remove();
    });
})
