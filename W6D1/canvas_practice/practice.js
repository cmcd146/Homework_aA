document.addEventListener("DOMContentLoaded", function(){
  const canvas = document.getElementById("mycanvas");
  canvas.width = 500;
  canvas.height = 500;
  const ctx = canvas.getContext('2d');
  ctx.fillStyle = 'red';
  ctx.fillRect(0,0,500,500);

  ctx.beginPath();
  ctx.arc(100,75,50,0,2*Math.PI);
  ctx.strokeStyle = 'purple';
  ctx.lineWidth = 2;
  ctx.stroke();
  ctx.fillStyle = "green";
  ctx.fill();

  ctx.beginPath();
  ctx.moveTo(75, 50);
  ctx.lineTo(100, 75);
  ctx.lineTo(100, 25);
  ctx.fill();
});
