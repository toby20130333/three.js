import QtQuick 2.0
import QtCanvas3D 1.0

import "multiple-canvases-grid.js" as GLCode

Item {
    id: mainview
    width: 1200
    height: 800
    visible: true

    property int canvasWidth: 300
    property int canvasHeight: 200

    ControlEventSource {
        anchors.fill: parent
        focus: true
        id: eventSource
    }

    Canvas3D {
        id: canvas1
        x: 0
        y: 0
        width: canvasWidth * 2
        height: canvasHeight * 2
        focus: true
        property variant app

        // Emitted when one time initializations should happen
        onInitGL: {
            app = new GLCode.App();
            app.initGL(canvas1, eventSource, width, height, 0, 0, canvasWidth, canvasHeight);
        }

        // Emitted each time Canvas3D is ready for a new frame
        onRenderGL: {
            if (app)
                app.renderGL(canvas1);
        }

        onWidthChanged: {
            if (app)
                app.onCanvasResize(canvas1);
        }

        onHeightChanged: {
            if (app)
                app.onCanvasResize(canvas1);
        }

        onDevicePixelRatioChanged: {
            if (app)
                app.onCanvasResize(canvas1);
        }
    }

    Canvas3D {
        id: canvas2
        x: canvasWidth * 2
        y: 0
        width: canvasWidth * 2
        height: canvasHeight * 2
        focus: true
        property variant app

        // Emitted when one time initializations should happen
        onInitGL: {
            app = new GLCode.App();
            app.initGL(canvas2, eventSource, width, height, canvasWidth, 0,
                          canvasWidth, canvasHeight);
        }

        // Emitted each time Canvas3D is ready for a new frame
        onRenderGL: {
            if (app)
                app.renderGL(canvas2);
        }

        onWidthChanged: {
            if (app)
                app.onCanvasResize(canvas2);
        }

        onHeightChanged: {
            if (app)
                app.onCanvasResize(canvas2);
        }

        onDevicePixelRatioChanged: {
            if (app)
                app.onCanvasResize(canvas2);
        }
    }

    Canvas3D {
        id: canvas3
        x: 0
        y: canvasHeight * 2
        width: canvasWidth * 2
        height: canvasHeight * 2
        focus: true
        property variant app

        // Emitted when one time initializations should happen
        onInitGL: {
            app = new GLCode.App();
            app.initGL(canvas3, eventSource, width, height, 0, canvasHeight,
                          canvasWidth, canvasHeight);
        }

        // Emitted each time Canvas3D is ready for a new frame
        onRenderGL: {
            if (app)
                app.renderGL(canvas3);
        }

        onWidthChanged: {
            if (app)
                app.onCanvasResize(canvas3);
        }

        onHeightChanged: {
            if (app)
                app.onCanvasResize(canvas3);
        }

        onDevicePixelRatioChanged: {
            if (app)
                app.onCanvasResize(canvas3);
        }
    }

    Canvas3D {
        id: canvas4
        x: canvasWidth * 2
        y: canvasHeight * 2
        width: canvasWidth * 2
        height: canvasHeight * 2
        focus: true
        property variant app

        // Emitted when one time initializations should happen
        onInitGL: {
            app = new GLCode.App();
            app.initGL(canvas4, eventSource, width, height, canvasWidth, canvasHeight,
                          canvasWidth, canvasHeight);
        }

        // Emitted each time Canvas3D is ready for a new frame
        onRenderGL: {
            if (app)
                app.renderGL(canvas4);
        }

        onWidthChanged: {
            if (app)
                app.onCanvasResize(canvas4);
        }

        onHeightChanged: {
            if (app)
                app.onCanvasResize(canvas4);
        }

        onDevicePixelRatioChanged: {
            if (app)
                app.onCanvasResize(canvas4);
        }
    }

    Rectangle { anchors.fill: canvas1; border.color: "red"; color: "transparent" }
    Rectangle { anchors.fill: canvas2; border.color: "red"; color: "transparent" }
    Rectangle { anchors.fill: canvas3; border.color: "red"; color: "transparent" }
    Rectangle { anchors.fill: canvas4; border.color: "red"; color: "transparent" }
}