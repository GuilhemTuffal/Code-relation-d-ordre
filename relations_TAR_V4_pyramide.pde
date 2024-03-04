/**
Le Programme affichera de faux resultats si n est supérieur ou égal à 10 et si n=9 alors les résultats seront partiellement faux (les P_(i,j,n) seront bons mais les P(i,j,n) ne le seront pas),
le problème est dues au stockage des entiers "int" qui se fait en 4 octets sur Processing, l'utilisation de "long" aurait ralenti le programme et aurait simplement déplacer le problème (pour n=19
ou n=20 le même problème aurait eu étant donné les valeurs de A(n) de A001035 (https://oeis.org/A001035)).
Le Programme est segmenté mais est le résultat de plusieurs sessions de travail parfois espacés de plusieurs mois il est possible que des bouts de code soient inutiles ou redondants.
*/
int n___=9;
int numero=0;
float[][] position;
int[] totaux;
int start=millis();
int nb_=n___*(n___-1)/2;//longueur de la relation
boolean[][] relation_;
int[] nb_rat;//nombre de relation à tester
int nb_afficher=0;
int num_global=0;
int nb_liaisons;
int nb_liaisons_;
int[] liaisons=new int[nb_+n___];
int[] relation_a_modifier1;
int[] relation_a_modifier2;
int[] relation_a_modifier3;
int[] relation_a_modifier4;
int[] relation_a_modifier_4;

int i_v=0;
int j_v=0;
int k_v=0;
int i_j=0;
int j_k=0;
int i_k=0;
int i_global=0;
int j_global=0;
int[][][] L={{{0}}, {{0}}, {{0, 0}, {0}}, {{0, 0, 0}, {0, 0}, {0}}, {{0, 0, 0, 0}, {0, 0, 0}, {0, 0}, {0}}, {{0, 0, 0, 0, 0}, {0, 0, 0, 0}, {0, 0, 0}, {0, 0}, {0}}, {{0, 0, 0, 0, 0, 0}, {0, 0, 0, 0, 0}, {0, 0, 0, 0}, {0, 0, 0}, {0, 0}, {0}}, {{0, 0, 0, 0, 0, 0, 0}, {0, 0, 0, 0, 0, 0}, {0, 0, 0, 0, 0}, {0, 0, 0, 0}, {0, 0, 0}, {0, 0}, {0}}, {{0, 0, 0, 0, 0, 0, 0, 0}, {0, 0, 0, 0, 0, 0, 0}, {0, 0, 0, 0, 0, 0}, {0, 0, 0, 0, 0}, {0, 0, 0, 0}, {0, 0, 0}, {0, 0}, {0}}, {{0, 0, 0, 0, 0, 0, 0, 0, 0}, {0, 0, 0, 0, 0, 0, 0, 0}, {0, 0, 0, 0, 0, 0, 0}, {0, 0, 0, 0, 0, 0}, {0, 0, 0, 0, 0}, {0, 0, 0, 0}, {0, 0, 0}, {0, 0}, {0}}, {{0, 0, 0, 0, 0, 0, 0, 0, 0, 0}, {0, 0, 0, 0, 0, 0, 0, 0, 0}, {0, 0, 0, 0, 0, 0, 0, 0}, {0, 0, 0, 0, 0, 0, 0}, {0, 0, 0, 0, 0, 0}, {0, 0, 0, 0, 0}, {0, 0, 0, 0}, {0, 0, 0}, {0, 0}, {0}}, {{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0}, {0, 0, 0, 0, 0, 0, 0, 0, 0, 0}, {0, 0, 0, 0, 0, 0, 0, 0, 0}, {0, 0, 0, 0, 0, 0, 0, 0}, {0, 0, 0, 0, 0, 0, 0}, {0, 0, 0, 0, 0, 0}, {0, 0, 0, 0, 0}, {0, 0, 0, 0}, {0, 0, 0}, {0, 0}, {0}}};
int[][][] L_={{{0}}, {{0}}, {{0, 0}, {0}}, {{0, 0, 0}, {0, 0}, {0}}, {{0, 0, 0, 0}, {0, 0, 0}, {0, 0}, {0}}, {{0, 0, 0, 0, 0}, {0, 0, 0, 0}, {0, 0, 0}, {0, 0}, {0}}, {{0, 0, 0, 0, 0, 0}, {0, 0, 0, 0, 0}, {0, 0, 0, 0}, {0, 0, 0}, {0, 0}, {0}}, {{0, 0, 0, 0, 0, 0, 0}, {0, 0, 0, 0, 0, 0}, {0, 0, 0, 0, 0}, {0, 0, 0, 0}, {0, 0, 0}, {0, 0}, {0}}, {{0, 0, 0, 0, 0, 0, 0, 0}, {0, 0, 0, 0, 0, 0, 0}, {0, 0, 0, 0, 0, 0}, {0, 0, 0, 0, 0}, {0, 0, 0, 0}, {0, 0, 0}, {0, 0}, {0}}, {{0, 0, 0, 0, 0, 0, 0, 0, 0}, {0, 0, 0, 0, 0, 0, 0, 0}, {0, 0, 0, 0, 0, 0, 0}, {0, 0, 0, 0, 0, 0}, {0, 0, 0, 0, 0}, {0, 0, 0, 0}, {0, 0, 0}, {0, 0}, {0}}, {{0, 0, 0, 0, 0, 0, 0, 0, 0, 0}, {0, 0, 0, 0, 0, 0, 0, 0, 0}, {0, 0, 0, 0, 0, 0, 0, 0}, {0, 0, 0, 0, 0, 0, 0}, {0, 0, 0, 0, 0, 0}, {0, 0, 0, 0, 0}, {0, 0, 0, 0}, {0, 0, 0}, {0, 0}, {0}}, {{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0}, {0, 0, 0, 0, 0, 0, 0, 0, 0, 0}, {0, 0, 0, 0, 0, 0, 0, 0, 0}, {0, 0, 0, 0, 0, 0, 0, 0}, {0, 0, 0, 0, 0, 0, 0}, {0, 0, 0, 0, 0, 0}, {0, 0, 0, 0, 0}, {0, 0, 0, 0}, {0, 0, 0}, {0, 0}, {0}}};
int pos(int a, int b) {
  return nb_-(n___-a)*(n___-1-a)/2+b-a-1;
}
int pos_2(int a, int b) {
  return nb_+n___-(n___-b)*(n___+1-b)/2+a;
}

int anti_pos0(int i) {
  int res=0;
  while (i>=nb_-(n___-res)*(n___-1-res)/2) {
    res++;
  }
  res--;
  if (relation_[i][1]) {
    return res;
  }
  return i-nb_+(n___-res)*(n___-res-1)/2+1+res;
}

int anti_pos1(int i) {
  int res=0;
  while (i>=nb_-(n___-res)*(n___-1-res)/2) {
    res++;
  }
  res--;
  if (relation_[i][1]) {
    return i-nb_+(n___-res)*(n___-res-1)/2+1+res;
  }
  return res;
}


//void augmente_T_A(int num, int k) {//Pour les relation totales ou antisymétriques
//  if (!relation_[num][0]) {
//    relation_[num][0]=true;
//  } else if (!relation_[num][1]) {
//    relation_[num][1]=true;
//  } else {
//    relation_[num][0]=false;
//    relation_[num][1]=false;
//    if (num+k<nb_ && nb_-(n-num_global)*(n-1-num_global)/2!=num) {
//      augmente_T_A(num+k, k-1);
//    }
//  }
//}
//void augmente_T_A_(int num, int k) {//Pour les relation totales ou antisymétriques
//  if (!relation_[num][0]) {
//    nb_liaisons++;
//    relation_[num][0]=true;
//  } else if (!relation_[num][1]) {
//    nb_liaisons--;
//    nb_liaisons_++;
//    relation_[num][1]=true;
//  } else {
//    nb_liaisons_--;
//    relation_[num][0]=false;
//    relation_[num][1]=false;
//    if (num+k<nb_ && nb_-(n-num_global)*(n-1-num_global)/2!=num) {
//      augmente_T_A_(num+k, k-1);
//    }
//  }
//}




void init() {
  //nb_rat=new int[n];
  //for (int i=0; i<n; i++) {
  //  nb_rat[i]=int(pow(3, i+1));
  //}
  //printArray(nb_rat);
  totaux=new int[n___];
  totaux[0]=1;
  position=new float[n___][2];
  relation_=new boolean[nb_][2];
}




void fin() {
  //affiche_T();
  affiche_liaisons();
  affiche_liaisons_();
  println(millis()-start);
  exit();
}

//void milieu_TAR(int num_) {
//  if (num_==0) {
//    for (int i=0; i<nb_rat[num_]; i++) {
//      if (verif_TAR(num_+2)) {
//        totaux[num_+1]++;
//        milieu_TAR(num_+1);
//      }
//      num_global=num_;
//      augmente_T_A(num_, n-2);
//    }
//  } else if (num_!=n-2) {
//    for (int i=0; i<nb_rat[num_]; i++) {
//      if (verif_TAR(num_+1)) {
//        totaux[num_+1]++;
//        milieu_TAR(num_+1);
//      }
//      num_global=num_;
//      augmente_T_A(num_, n-2);
//    }
//  } else {
//    nb_liaisons=0;
//    nb_liaisons_=0;
//    for (int i=0; i<nb_rat[num_]; i++) {
//      if (verif_TAR(n-1)) {
//        totaux[num_+1]++;
//        if (((relation_[0][0]&&!relation_[0][1])&&(relation_[1][0]&&relation_[1][1]))|((relation_[0][0]&&relation_[0][1])&&(relation_[1][0]&&!relation_[1][1]))) {
//          graph();
//        }
//        liaisons[pos_2(nb_liaisons, nb_liaisons_)]++;
//      }
//      num_global=num_;
//      augmente_T_A_(num_, n-2);
//    }
//  }
//}
int num1;
int num_max1;
int num2;
int num_max2;
int num3;
int num_max3;
int num4;
int num_max4;
void augmente_T_A1() {//Pour les relation totales ou antisymétriques
  if (!relation_[relation_a_modifier1[num1]][0]) {
    relation_[relation_a_modifier1[num1]][0]=true;
  } else if (!relation_[relation_a_modifier1[num1]][1]) {
    relation_[relation_a_modifier1[num1]][1]=true;
  } else {
    relation_[relation_a_modifier1[num1]][0]=false;
    relation_[relation_a_modifier1[num1]][1]=false;
    if (num1!=num_max1) {
      num1++;
      augmente_T_A1();
    }
  }
}
void augmente_T_A2() {//Pour les relation totales ou antisymétriques
  if (!relation_[relation_a_modifier2[num2]][0]) {
    relation_[relation_a_modifier2[num2]][0]=true;
  } else if (!relation_[relation_a_modifier2[num2]][1]) {
    relation_[relation_a_modifier2[num2]][1]=true;
  } else {
    relation_[relation_a_modifier2[num2]][0]=false;
    relation_[relation_a_modifier2[num2]][1]=false;
    if (num2!=num_max2) {
      num2++;
      augmente_T_A2();
    }
  }
}
void augmente_T_A3() {//Pour les relation totales ou antisymétriques
  if (!relation_[relation_a_modifier3[num3]][0]) {
    relation_[relation_a_modifier3[num3]][0]=true;
  } else if (!relation_[relation_a_modifier3[num3]][1]) {
    relation_[relation_a_modifier3[num3]][1]=true;
  } else {
    relation_[relation_a_modifier3[num3]][0]=false;
    relation_[relation_a_modifier3[num3]][1]=false;
    if (num3!=num_max3) {
      num3++;
      augmente_T_A3();
    }
  }
}
void augmente_T_A4() {//Pour les relation totales ou antisymétriques
  if (!relation_[relation_a_modifier4[num4]][0]) {
    relation_[relation_a_modifier4[num4]][0]=true;
    relation_[relation_a_modifier4[num4]][1]=true;
  } else {
    relation_[relation_a_modifier4[num4]][0]=false;
    relation_[relation_a_modifier4[num4]][1]=false;
    if (num4!=num_max4) {
      num4++;
      augmente_T_A4();
    }
  }
}
void P__(int i, int j, int n) {
  int compteur=0;
  if (i==0 & j==0) {
    for (int k=0; k<=n-2; k++) {
      for (int m=0; m<=n-2-k; m++) {
        compteur+=L[n-1][m][k];
      }
    }
    L[n][j][i]=compteur;
    L_[n][j][i]=compteur;
  } else if (i==1 & j==0) {
    for (int k=0; k<=n-2; k++) {
      compteur+=L[n-1][0][k];
    }
    L_[n][0][1]=compteur;
    L[n][0][1]=compteur*(n-1);
  } else if (i>=(n+1)/2 & j==0) {
    L_[n][0][i]=L_[n][0][n-1-i];
    L[n][0][i]=L[n][0][n-1-i];
  } else if (i==2 & j==0) {
    i_global=i;
    j_global=j;
    n___=n;
    nb_=n___*(n___-1)/2;
    int m=0;
    int k=0;
    int k1=0;
    int k2=0;
    int k4=0;
    relation_=new boolean[n*(n-1)/2][2];
    for (m=1; m<=i; m++) {
      relation_[pos(0, m)][0]=true;
      relation_[pos(0, m)][1]=false;
    }
    for (m=n-j; m<=n-1; m++) {
      relation_[pos(0, m)][0]=true;
      relation_[pos(0, m)][1]=true;
    }

    for (k=1; k<=i; k++) {
      for (m=n-j; m<=n-1; m++) {
        relation_[pos(k, m)][0]=true;
        relation_[pos(k, m)][1]=true;
      }
    }
    relation_a_modifier1=new int[i*(i-1)/2];
    relation_a_modifier2=new int[(n-1-j-i)*(n-2-j-i)/2];
    relation_a_modifier3=new int[j*(j-1)/2];
    relation_a_modifier4=new int[(i+j)*(n-i-j-1)];
    int index1=0;
    int index2=0;
    int index3=0;
    int index4=0;
    num1=0;
    num2=0;
    num3=0;
    num4=0;
    num_max1=i*(i-1)/2-1;
    num_max2=(n-1-j-i)*(n-2-j-i)/2-1;
    num_max3=j*(j-1)/2-1;
    num_max4=(i+j)*(n-i-j-1)-1;
    for (k=1; k<=n-2; k++) {
      for (m=k+1; m<=n-1; m++) {
        if (!((m>=n-j & k<=i))) {
          if (m<=i) {
            relation_a_modifier1[index1]=pos(k, m);
            index1++;
          } else if (k>i&m<n-j) {
            relation_a_modifier2[index2]=pos(k, m);
            index2++;
          } else if (k>=n-j) {
            relation_a_modifier3[index3]=pos(k, m);
            index3++;
          } else {
            relation_a_modifier4[index4]=pos(k, m);
            index4++;
          }
        }
      }
    }
    //int nb_rat=int(pow(3, i*(i-1)/2+j*(j-1)/2+(n-1-j-i)*(n-2-j-i)/2)*pow(2, (i+j)*(n-i-j-1)));
    int nb_rat1=int(pow(3, i*(i-1)/2));
    int nb_rat2=int(pow(3, (n-1-j-i)*(n-2-j-i)/2));
    int nb_rat4=int(pow(2, (i+j)*(n-i-j-1)));
    for (k1=0; k1<nb_rat1; k1++) {
      if (verif_TAR1()) {
        for (k2=0; k2<nb_rat2; k2++) {
          if (verif_TAR2()) {
            for (k4=0; k4<nb_rat4; k4++) {
              if (verif_TAR4()) {
                compteur++;
              }
              num4=0;
              augmente_T_A4();
            }
          }
          if (num_max2!=-1) {
            num2=0;
            augmente_T_A2();
          }
        }
      }
      if (num_max1!=-1) {
        num1=0;
        augmente_T_A1();
      }
    }
    //println("c=", compteur, ",n_rat :", nb_rat);

    L_[n][j][i]=compteur;
    L[n][j][i]=L_[n][j][i]*choose(i, j, n-1);
    compteur=0;
    for (k=0; k<=n-3; k++) {
      compteur+=choose(0, k, n-3)*L_[n-1][k][1];
    }
    L_[n][1][1]=L_[n][j][i]-2*compteur;
    L[n][1][1]=L_[n][1][1]*(n-1)*(n-2);
    //A modifier
  } else if (i+j==n-1 & i!=0 & j!=0) {
    L_[n][j][i]=L[i+1][0][0]*L[j+1][0][0];
    L[n][j][i]=L_[n][j][i]*choose(i, j, n-1);
  } else if (i+j==n-2 & i!=0 & j!=0) {
    L_[n][j][i]=L_[i+2][0][1]*L_[j+2][0][1];
    L[n][j][i]=L_[n][j][i]*choose(i, j, n-1);
  } else if (i+j==n-3 & i!=0 & j!=0) {
    L_[n][j][i]=int((L_[i+3][0][2]*L_[j+3][0][2]-L_[i+3][0][2]*L_[j+3][1][1]-L_[i+3][1][1]*L_[j+3][0][2]+3*L_[i+3][1][1]*L_[j+3][1][1])/2);
    L[n][j][i]=L_[n][j][i]*choose(i, j, n-1);
  } else if (i!=1|j!=1) {
    i_global=i;
    j_global=j;
    n___=n;
    nb_=n___*(n___-1)/2;
    int m=0;
    int k=0;
    int k1=0;
    int k2=0;
    int k3=0;
    int k4=0;
    relation_=new boolean[n*(n-1)/2][2];
    for (m=1; m<=i; m++) {
      relation_[pos(0, m)][0]=true;
      relation_[pos(0, m)][1]=false;
    }
    for (m=n-j; m<=n-1; m++) {
      relation_[pos(0, m)][0]=true;
      relation_[pos(0, m)][1]=true;
    }

    for (k=1; k<=i; k++) {
      for (m=n-j; m<=n-1; m++) {
        relation_[pos(k, m)][0]=true;
        relation_[pos(k, m)][1]=true;
      }
    }
    relation_a_modifier1=new int[i*(i-1)/2];
    relation_a_modifier2=new int[(n-1-j-i)*(n-2-j-i)/2];
    relation_a_modifier3=new int[j*(j-1)/2];
    relation_a_modifier4=new int[(i+j)*(n-i-j-1)];
    int index1=0;
    int index2=0;
    int index3=0;
    int index4=0;
    num1=0;
    num2=0;
    num3=0;
    num4=0;
    num_max1=i*(i-1)/2-1;
    num_max2=(n-1-j-i)*(n-2-j-i)/2-1;
    num_max3=j*(j-1)/2-1;
    num_max4=(i+j)*(n-i-j-1)-1;
    for (k=1; k<=n-2; k++) {
      for (m=k+1; m<=n-1; m++) {
        if (!((m>=n-j & k<=i))) {
          if (m<=i) {
            relation_a_modifier1[index1]=pos(k, m);
            index1++;
          } else if (k>i&m<n-j) {
            relation_a_modifier2[index2]=pos(k, m);
            index2++;
          } else if (k>=n-j) {
            relation_a_modifier3[index3]=pos(k, m);
            index3++;
          } else {
            relation_a_modifier4[index4]=pos(k, m);
            index4++;
          }
        }
      }
    }
    //int nb_rat=int(pow(3, i*(i-1)/2+j*(j-1)/2+(n-1-j-i)*(n-2-j-i)/2)*pow(2, (i+j)*(n-i-j-1)));
    int nb_rat1=int(pow(3, i*(i-1)/2));
    int nb_rat2=int(pow(3, (n-1-j-i)*(n-2-j-i)/2));
    int nb_rat3=int(pow(3, j*(j-1)/2));
    int nb_rat4=int(pow(2, (i+j)*(n-i-j-1)));
    for (k1=0; k1<nb_rat1; k1++) {
      if (verif_TAR1()) {
        for (k2=0; k2<nb_rat2; k2++) {
          if (verif_TAR2()) {
            for (k3=0; k3<nb_rat3; k3++) {
              if (verif_TAR3()) {
                for (k4=0; k4<nb_rat4; k4++) {
                  if (verif_TAR4()) {
                    compteur++;
                  }
                  num4=0;
                  augmente_T_A4();
                }
              }
              if (num_max3!=-1) {
                num3=0;
                augmente_T_A3();
              }
            }
          }
          if (num_max2!=-1) {
            num2=0;
            augmente_T_A2();
          }
        }
      }
      if (num_max1!=-1) {
        num1=0;
        augmente_T_A1();
      }
    }
    L_[n][j][i]=compteur;
    L[n][j][i]=L_[n][j][i]*choose(i, j, n-1);
    //println("c=", compteur, ",n_rat :", nb_rat);
  }
}
void milieu(int maximum) {
  L[0][0][0]=1;
  L[1][0][0]=1;
  L[2][0][0]=1;
  L[2][1][0]=1;
  L[2][0][1]=1;
  L_[0][0][0]=1;
  L_[1][0][0]=1;
  L_[2][0][0]=1;
  L_[2][1][0]=1;
  L_[2][0][1]=1;
  for (int n=3; n<=maximum; n++) {
    for (int j=0; j<=(n+1)/2; j++) {
      for (int i=j; i<=n-1-j; i++) {
        P__(i, j, n);
        if (n==9) {
          println(i, j, L_[n][j][i]);
        }
      }
    }
    for (int j=1; j<=n-1; j++) {
      for (int i=0; i<j & i<=n-1-j; i++) {
        L[n][j][i]=L[n][i][j];
        L_[n][j][i]=L_[n][i][j];
      }
    }
  }
}
void setup() {
  init();
  milieu(n___);
  fin();
}
