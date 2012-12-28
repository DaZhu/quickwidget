import QtQuick 2.0

Item {
  width: 400
  height: 400

  // we need the transform to flip the framebuffer contents
  transform: Scale { origin.x: width / 2; origin.y: height / 2; yScale: -1 }

  Canvas {
    id: canvas

    anchors.fill: parent

    SequentialAnimation on rotation {
      loops: Animation.Infinite
      PropertyAnimation { to: 360; duration: 1000 }
    }

    onPaint: {
      var ctx = canvas.getContext('2d');

      var gradient = ctx.createLinearGradient(0, 0, 0, height);
      gradient.addColorStop(.0, "rgba(255, 0, 0, .5)");
      gradient.addColorStop(1.0, "rgba(255, 255, 255, .2)");
      ctx.fillStyle = gradient;

      ctx.translate(width / 2, height / 2);

      var a = 0.866025403784 * width / 2;

      ctx.beginPath();
      ctx.moveTo(width / 2, 0);
      ctx.lineTo(-width / 4, -a);
      ctx.lineTo(-width / 4, a);
      ctx.lineTo(width / 2, 0);
      ctx.fill();
    }
  }
}
