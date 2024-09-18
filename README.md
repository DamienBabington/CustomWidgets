CustomWidgets Overview:
-
- This is an iOS app that is intended to allow the user to drop widgets in a layout view and customize the position of each widget.

Current Status:
-
- The app currently displays an empty layout view when no widgets have been added. When a widget is dropped onto the layout view,
  it is added to an array of widgets, which is displayed in a grid view. 

- For now, the grid is set to only have one column, so that is why the layout only adds widgets in a vertical orientation.
- The appearance of the layout view is only updating once the widget has been dropped.

Next Steps:
-
-  I will need to update the layout view during the dropEntered or isTargeted
  methods so the layout view updates before the widget is dropped.
- I will try to create a tree-like structure of widget subviews and add a dropped widget as a child to the widget it was dropped on. 
- My plan is to detect the direction from which a widget was dragged onto the layout view and expand the grid's rows and columns accordingly. 
  If the widget was dragged from the left or right, then I would increment the number of grid columns in that subview. If the widget was dragged from the top or bottom,
  then I would increment the nunber of grid rows in that subview.
- If the method above doesn't work, then I will try creating a Layout which implements the sizeThatFits and placeSubviews methods.



Additional Improvements:
- 
- Immediate Dragging:
  When starting to drag a widget from the FooterView, there is a delay before it begins dragging. To fix this,
  I would use a dragGesture and set the minimumDragDistance to 0 so the widget begins dragging immediately.
- ColorPicker:
  Add a long press gesture or a tap gesture to the footer widgets which opens a color picker view so the user can select very specific colors for their widgets.
- Add Unit Tests
