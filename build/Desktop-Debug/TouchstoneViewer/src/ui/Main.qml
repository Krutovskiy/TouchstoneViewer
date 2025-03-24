import QtCore
import QtQuick
import QtQuick.Controls
import QtQuick.Dialogs
import TouchstoneViewer 1.0
import "."

ApplicationWindow {
    visible: true
    width: 800
    height: 600

    property var graphData: []
       property string graphTitle: ""
       property var minMaxFreq: ({ min: 0, max: 0 })
       property var minMaxLogMag: ({ min: 0, max: 0 })

       Connections {
           target: controller
           function onStateChanged() {
               console.log("QML ZALUPA")
               console.log(controller.minMaxFreq)
               graphData = controller.points
               minMaxFreq = { min: controller.minMaxFreq.x, max: controller.minMaxFreq.y }
               minMaxLogMag = { min: controller.minMaxLogMag.x, max: controller.minMaxLogMag.y }
               console.log(controller.minMaxFreq)
               console.log(controller.minMaxLogMag)

                console.log(minMaxFreq.min, minMaxFreq.max)
                console.log(minMaxLogMag.min, minMaxLogMag.max)
               canvas.requestPaint()
           }
       }

       Canvas {
               id: canvas
               anchors.fill: parent
               renderTarget: Canvas.Image
               renderStrategy: Canvas.Cooperative
               antialiasing: true


               function drawAxes(ctx) {
                   ctx.strokeStyle = "black"
                   ctx.lineWidth = 2

                   ctx.beginPath()
                   ctx.moveTo(50, height - 50)
                   ctx.lineTo(width - 50, height - 50)
                   ctx.stroke()

                   ctx.beginPath()
                   ctx.moveTo(50, 50)
                   ctx.lineTo(50, height - 50)
                   ctx.stroke()
                   }

               function drawGrid(ctx) {
                   ctx.strokeStyle = "gray"
                   ctx.lineWidth = 1
                   ctx.setLineDash([5, 5]);

                   for (var i = 0; i <= 10; i++) {
                       var y = height - 50 - (i * (height - 100) / 10)
                       ctx.beginPath()
                       ctx.moveTo(50, y)
                       ctx.lineTo(width - 50, y)
                       ctx.stroke()
                   }

                   for (var j = 0; j <= 10; j++) {
                       var x = 50 + (j * (width - 100) / 10)
                       ctx.beginPath()
                       ctx.moveTo(x, 50)
                       ctx.lineTo(x, height - 50)
                       ctx.stroke()
                   }
                   }

               onPaint: {
                   var ctx = getContext("2d")
                   ctx.clearRect(0, 0, width, height)

                   drawAxes(ctx)
                   drawGrid(ctx)

                   ctx.strokeStyle = "blue"
                   ctx.lineWidth = 2
                   ctx.beginPath()
                   ctx.setLineDash([]);

                   if (graphData.length > 0) {
                       var xScale = width / (minMaxFreq.max - minMaxFreq.min)
                       var yScale = height / (minMaxLogMag.max - minMaxLogMag.min)
                       console.log("SCALE = ", xScale, yScale)

                       graphData.forEach((point, index) => {
                           var x = (point.x - minMaxFreq.min) * xScale
                           var y = height - (point.y - minMaxLogMag.min) * yScale

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
           }


    // Canvas {
    //     id: canvas




    //     onPaint: {
    //         var ctx = getContext("2d")
    //         ctx.clearRect(0, 0, width, height)

    //         drawAxes(ctx)
    //         drawGrid(ctx)

    //         ctx.strokeStyle = "blue"
    //         ctx.lineWidth = 2
    //         ctx.beginPath()
    //         ctx.setLineDash([]);


    //         // Масштабируем данные для отображения на графике
    //         var xStep = (width - 100) / (dataPoints.length - 1)
    //         var yMax = Math.max(...dataPoints)
    //         var yScale = (height - 100) / yMax

    //         ctx.moveTo(50, height - 50 - dataPoints[0] * yScale)
    //         for (var k = 1; k < dataPoints.length; k++) {
    //             var x = 50 + k * xStep
    //             var y = height - 50 - dataPoints[k] * yScale
    //             ctx.lineTo(x, y)
    //         }
    //         ctx.stroke()
    //     }
    // }

    header: MenuComponent {
        id: menu
        width: parent.width
    }

}
