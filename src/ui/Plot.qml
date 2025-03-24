import QtQuick

Item {
    id: root

    property int border: 30

    property var graphData: []
    property var minMaxFreq: ({ min: 0, max: 0 })
    property var minMaxLogMag: ({ min: 0, max: 0 })

    Connections {
        target: controller
        function onStateChanged() {
            graphData = controller.points
            minMaxFreq = { min: controller.minMaxFreq.x, max: controller.minMaxFreq.y }
            minMaxLogMag = { min: controller.minMaxLogMag.x, max: controller.minMaxLogMag.y }
            canvas.requestPaint()
        }
        function onError(error) {
            graphData = []
            canvas.requestPaint()
        }
    }

    function drawGrid(ctx) {
        ctx.strokeStyle = "gray"
        ctx.lineWidth = 1
        ctx.setLineDash([5, 5]);

        for (var i = 0; i <= 10; i++) {
            var y = root.height - border - (i * (root.height - border * 2) / 10)
            ctx.beginPath()
            ctx.moveTo(border, y)
            ctx.lineTo(root.width - border, y)
            ctx.stroke()
        }

        for (var j = 0; j <= 10; j++) {
            var x = border + (j * (root.width - border * 2) / 10)
            ctx.beginPath()
            ctx.moveTo(x, border)
            ctx.lineTo(x, root.height - border)
            ctx.stroke()
        }
    }

    function drawPolygon(ctx) {
        ctx.strokeStyle = "blue"
        ctx.lineWidth = 2
        ctx.beginPath()
        ctx.setLineDash([]);

        if (graphData.length > 0) {
            var xScale = (root.width - border * 2) / (minMaxFreq.max - minMaxFreq.min)
            var yScale = (root.height - border * 2) / (minMaxLogMag.max - minMaxLogMag.min)

            graphData.forEach((point, index) => {
                                  var x = (point.x - minMaxFreq.min) * xScale + border
                                  var y = root.height - (point.y - minMaxLogMag.min) * yScale  - border

                                  //console.log(x, y)
                                  if (index === 0) {
                                      ctx.moveTo(x, y)
                                  } else {
                                      ctx.lineTo(x, y)
                                  }
                              })
        }

        ctx.stroke()
    }

    Canvas {
        id: canvas
        anchors.fill: parent
        renderTarget: Canvas.Image
        renderStrategy: Canvas.Threaded
        antialiasing: true

        onPaint: {
            var ctx = getContext("2d")
            ctx.clearRect(0, 0, root.width, root.height)

            drawGrid(ctx)
            drawPolygon(ctx)

        }
    }
}
