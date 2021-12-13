document.querySelector('input[type=submit]').addEventListener('click',function clickHandler(e){
  alert(100)
  this.removeEventListener('click',clickHandler,false);

  e.preventDefault();
  var self = this;
  setTimeout(function(){
      self.className = 'loading';
  },125);

  setTimeout(function(){
      self.className = 'ready';
  },4300);

},false);