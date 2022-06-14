using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Windows.Input;

namespace gadelshin_a.Commands
{
    class DataCommands
    {
        public static RoutedCommand Add { get; set; }
        public static RoutedCommand Delete { get; set; }
        public static RoutedCommand Edit { get; set; }
        public static RoutedCommand Undo { get; set; }
        static DataCommands()
        {
            InputGestureCollection inputs = new InputGestureCollection();
            inputs.Add(new KeyGesture(Key.E, ModifierKeys.Control, "Ctrl+E"));
            Edit = new RoutedCommand("Edit", typeof(DataCommands), inputs);
            inputs = new InputGestureCollection();
            inputs.Add(new KeyGesture(Key.D, ModifierKeys.Control, "Ctrl+D"));
            Delete = new RoutedCommand("Delete", typeof(DataCommands), inputs);
            inputs = new InputGestureCollection();
            inputs.Add(new KeyGesture(Key.N, ModifierKeys.Control, "Ctrl+N"));
            Add = new RoutedCommand("Add", typeof(DataCommands), inputs);
            inputs = new InputGestureCollection();
            inputs.Add(new KeyGesture(Key.Z, ModifierKeys.Control, "Ctrl+Z"));
            Undo = new RoutedCommand("Undo", typeof(DataCommands), inputs);
            
        }
    }
}
