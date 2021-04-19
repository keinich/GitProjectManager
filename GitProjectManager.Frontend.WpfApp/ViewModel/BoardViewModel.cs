using GitProjectManager.Frontend.WpfApp.Core;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace GitProjectManager.Frontend.WpfApp.ViewModel {

  class BoardViewModel : ObservableObject {

    public string ProjectName { get; set; }

    public BoardViewModel() {
      ProjectName = "Mein Projekt";
    }

  }
}
