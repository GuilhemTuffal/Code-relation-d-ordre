void affiche_T() {
  println(" ");
  for (int i=0; i<totaux.length-1; i++) {
    print(totaux[i], ',');
  }
  println(totaux[totaux.length-1]);
}
void affiche_liaisons() {
  println("1;");
  for (int n=0; n<=n___; n++) {
    for (int i=0; i<n; i++) {
      for (int j=0; j<n-i-1; j++) {
        print(str(L[n][j][i])+ ',');
      }
      println(str(L[n][n-1-i][i])+';');
    }
    println();
  }
}
void affiche_liaisons_() {
  println("1;");
  for (int n=0; n<=n___; n++) {
    for (int i=0; i<n; i++) {
      for (int j=0; j<n-i-1; j++) {
        print(str(L_[n][j][i])+ ',');
      }
      println(str(L_[n][n-1-i][i])+';');
    }
    println();
  }
}
void affiche() {
  if (nb_afficher<50) {
    for (int i=0; i<nb_; i++) {
      print(relation_[i][0], ',', relation_[i][1], "; ");
    }
    println("");
    nb_afficher++;
  }
}
void affiche_temp(int temp) {
  if (temp==1) {
    print(temp, " ");
    for (int i=0; i<nb_; i++) {
      print(relation_[i][0]?( relation_[i][1]?2:1):0, "; ");
    }
    println("");
    nb_afficher++;
  }
}
