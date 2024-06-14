class Song {
  String title;
  Song? next;
  Song? prev;

  Song(this.title);
}

class Playlist {
  Song? head;
  Song? tail;
  Song? current;

  void addSong(String title) {
    Song newSong = Song(title);
    if (head == null) {
      head = newSong;
      tail = newSong;
      current = newSong;
    } else {
      tail?.next = newSong;
      newSong.prev = tail;
      tail = newSong;
    }
  }

  void playNext() {
    if (current?.next != null) {
      current = current?.next;
      print("Playing: ${current?.title}");
    } else {
      print("You are at the end of the playlist.");
    }
  }

  void playPrevious() {
    if (current?.prev != null) {
      current = current?.prev;
      print("Playing: ${current?.title}");
    } else {
      print("You are at the start of the playlist.");
    }
  }

  void playCurrent() {
    if (current != null) {
      print("Playing: ${current?.title}");
    } else {
      print("No songs in the playlist.");
    }
  }

  void printPlaylist() {
    Song? temp = head;
    while (temp != null) {
      print(temp.title);
      temp = temp.next;
    }
  }
}

void main() {
  Playlist playlist = Playlist();
  playlist.addSong("Song 1");
  playlist.addSong("Song 2");
  playlist.addSong("Song 3");
  playlist.addSong("Song 4");

  print("Playlist:");
  playlist.printPlaylist();

  print("\nCurrent Song:");
  playlist.playCurrent();

  print("\nNext Song:");
  playlist.playNext();

  print("\nNext Song:");
  playlist.playNext();

  print("\nPrevious Song:");
  playlist.playPrevious();

  print("\nPrevious Song:");
  playlist.playPrevious();

  print("\nPrevious Song:");
  playlist.playPrevious();
}
