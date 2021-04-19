using GitProjectManager.Frontend.WpfApp.Core;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace GitProjectManager.Frontend.WpfApp.ViewModel {
  class MainViewModel : ObservableObject {

    public RelayCommand BoardViewCommand { get; set; }
    public RelayCommand DiscoveryViewCommand { get; set; }

    public BoardViewModel BoardViewModel { get; set; }
    public DiscoveryViewModel DiscoveryViewModel { get; set; }

    private object _CurrentView;

    public object CurrentView {
      get { return _CurrentView; }
      set {
        _CurrentView = value;
        OnPropertyChanged();
      }
    }

    public MainViewModel() {
      BoardViewModel = new BoardViewModel();
      DiscoveryViewModel = new DiscoveryViewModel();
      CurrentView = BoardViewModel;

      BoardViewCommand = new RelayCommand(o => {
        CurrentView = BoardViewModel;
      });

      DiscoveryViewCommand = new RelayCommand(o => {
        CurrentView = DiscoveryViewModel;
      });
    }

  }
}
