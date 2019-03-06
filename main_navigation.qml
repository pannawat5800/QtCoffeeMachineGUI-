import QtQuick 2.0
import QtQuick.Controls 1.4
Item {
    id: mainScreen
    width: 1280
    height: 960

    TabView {
        anchors.fill: parent
        id: tabNavigation
        width: root.width
        height: root.height - 100
        anchors.top: parent.top
        tabsVisible: false
        Tab {
            title: "Red"

        }
        Tab {
            title: "Blue"
            Rectangle { color: "blue" }
        }
        Tab {
            title: "Green"
            Rectangle { color: "green" }
        }
    }


}
