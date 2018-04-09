var PhotosController = Paloma.controller('Photos');

PhotosController.prototype.show = function() {
  
  let puzzleContainer = document.querySelector('.puzzle-container');

  function handleGuess(e){
    removeLastClick();
    createTarget(e);
    createGuessMenu(e);
  }

  function removeLastClick(){
    let cn = puzzleContainer.childNodes;
    for (let i = cn.length; i > 2; i= i -1) {
      puzzleContainer.removeChild(puzzleContainer.lastChild);
    }
  }

  function createTarget(e){
    let target = document.createElement('div');
    const TARGET_RADIUS = 10;
    target.classList.add('target');
    target.style.left = `${(e.pageX - TARGET_RADIUS )}px`;
    target.style.top = `${(e.pageY - TARGET_RADIUS)}px`;
    puzzleContainer.append(target);
  }

  function createGuessMenu(e){
    let title = document.createElement('div');
    title.classList.add('list-title');
    title.innerHTML = 'Who did you find?';

    let menu = document.createElement('ul');
    let waldo = document.createElement('li');
    waldo.innerHTML = 'Waldo';
    menu.append(waldo);
    let friend1 = document.createElement('li');
    friend1.innerHTML = 'friend1';
    menu.append(friend1);
    let friend2 = document.createElement('li');
    friend2.innerHTML = 'friend2';
    menu.append(friend2);

    title.append(menu);

    const TARGET_RADIUS = 50;
    title.style.left = `${(e.pageX + TARGET_RADIUS )}px`;
    title.style.top = `${(e.pageY - TARGET_RADIUS)}px`;
    puzzleContainer.append(title);

  }

  puzzleContainer.addEventListener('click', handleGuess);
};
