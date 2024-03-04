boolean verif_TAR(int max) {//Transitivité pour relation antisymetrique et reflexive
  for (i_v=0; i_v<max-1; i_v++) {
    for (j_v=i_v+1; j_v<max; j_v++) {
      i_j=nb_-(n___-i_v)*(n___-1-i_v)/2+j_v-i_v-1;
      k_v=max;
      j_k=nb_-(n___-j_v)*(n___-1-j_v)/2+k_v-j_v-1;
      i_k=nb_-(n___-i_v)*(n___-1-i_v)/2+k_v-i_v-1;
      if (relation_[i_j][0] & relation_[j_k][0] & relation_[j_k][1]==relation_[i_j][1] & (!relation_[i_k][0] | relation_[i_k][1]!=relation_[i_j][1])) {
        return false;
      } else if (relation_[i_k][0] & relation_[j_k][0] & relation_[i_k][1]!=relation_[j_k][1] & (!relation_[i_j][0] | relation_[i_j][1]!=relation_[i_k][1])) {
        return false;
      } else if (relation_[i_j][0] & relation_[i_k][0] & relation_[i_j][1]!=relation_[i_k][1] & (!relation_[j_k][0] | relation_[j_k][1]==relation_[i_j][1])) {
        return false;
      }
    }
  }
  return true;
}

boolean verif_TAR_N(int max) {//Transitivité pour relation antisymetrique et reflexive
  for (i_v=0; i_v<max-2; i_v++) {
    for (j_v=i_v+1; j_v<max-1; j_v++) {
      i_j=nb_-(n___-i_v)*(n___-1-i_v)/2+j_v-i_v-1;
      for (k_v=j_v+1; k_v<max; k_v++) {
        j_k=nb_-(n___-j_v)*(n___-1-j_v)/2+k_v-j_v-1;
        i_k=nb_-(n___-i_v)*(n___-1-i_v)/2+k_v-i_v-1;
        if (relation_[i_j][0] & relation_[j_k][0] & relation_[j_k][1]==relation_[i_j][1] & (!relation_[i_k][0] | relation_[i_k][1]!=relation_[i_j][1])) {
          return false;
        } else if (relation_[i_k][0] & relation_[j_k][0] & relation_[i_k][1]!=relation_[j_k][1] & (!relation_[i_j][0] | relation_[i_j][1]!=relation_[i_k][1])) {
          return false;
        } else if (relation_[i_j][0] & relation_[i_k][0] & relation_[i_j][1]!=relation_[i_k][1] & (!relation_[j_k][0] | relation_[j_k][1]==relation_[i_j][1])) {
          return false;
        }
      }
    }
  }
  return true;
}
boolean verif_TAR() {//Transitivité pour relation antisymetrique et reflexive
  for (i_v=1; i_v<1+i_global; i_v++) {
    for (j_v=i_v+1; j_v<n___-j_global-1; j_v++) {
      i_j=nb_-(n___-i_v)*(n___-1-i_v)/2+j_v-i_v-1;
      for (k_v=j_v+1; k_v<n___-j_global; k_v++) {
        j_k=nb_-(n___-j_v)*(n___-1-j_v)/2+k_v-j_v-1;
        i_k=nb_-(n___-i_v)*(n___-1-i_v)/2+k_v-i_v-1;
        if (relation_[i_j][0] & relation_[j_k][0] & relation_[j_k][1]==relation_[i_j][1] & (!relation_[i_k][0] | relation_[i_k][1]!=relation_[i_j][1])) {
          return false;
        } else if (relation_[i_k][0] & relation_[j_k][0] & relation_[i_k][1]!=relation_[j_k][1] & (!relation_[i_j][0] | relation_[i_j][1]!=relation_[i_k][1])) {
          return false;
        } else if (relation_[i_j][0] & relation_[i_k][0] & relation_[i_j][1]!=relation_[i_k][1] & (!relation_[j_k][0] | relation_[j_k][1]==relation_[i_j][1])) {
          return false;
        }
      }
    }
  }
  for (i_v=1+i_global; i_v<n___-2; i_v++) {
    for (j_v=i_v+1; j_v<n___-1; j_v++) {
      i_j=nb_-(n___-i_v)*(n___-1-i_v)/2+j_v-i_v-1;
      for (k_v=j_v+1; k_v<n___; k_v++) {
        j_k=nb_-(n___-j_v)*(n___-1-j_v)/2+k_v-j_v-1;
        i_k=nb_-(n___-i_v)*(n___-1-i_v)/2+k_v-i_v-1;
        if (relation_[i_j][0] & relation_[j_k][0] & relation_[j_k][1]==relation_[i_j][1] & (!relation_[i_k][0] | relation_[i_k][1]!=relation_[i_j][1])) {
          return false;
        } else if (relation_[i_k][0] & relation_[j_k][0] & relation_[i_k][1]!=relation_[j_k][1] & (!relation_[i_j][0] | relation_[i_j][1]!=relation_[i_k][1])) {
          return false;
        } else if (relation_[i_j][0] & relation_[i_k][0] & relation_[i_j][1]!=relation_[i_k][1] & (!relation_[j_k][0] | relation_[j_k][1]==relation_[i_j][1])) {
          return false;
        }
      }
    }
  }
  return true;
}
boolean verif_TAR1() {//Transitivité pour relation antisymetrique et reflexive
  for (i_v=1; i_v<i_global-1; i_v++) {
    for (j_v=i_v+1; j_v<i_global-1; j_v++) {
      i_j=nb_-(n___-i_v)*(n___-1-i_v)/2+j_v-i_v-1;
      for (k_v=j_v+1; k_v<i_global+1; k_v++) {
        j_k=nb_-(n___-j_v)*(n___-1-j_v)/2+k_v-j_v-1;
        i_k=nb_-(n___-i_v)*(n___-1-i_v)/2+k_v-i_v-1;
        if (relation_[i_j][0] & relation_[j_k][0] & relation_[j_k][1]==relation_[i_j][1] & (!relation_[i_k][0] | relation_[i_k][1]!=relation_[i_j][1])) {
          return false;
        } else if (relation_[i_k][0] & relation_[j_k][0] & relation_[i_k][1]!=relation_[j_k][1] & (!relation_[i_j][0] | relation_[i_j][1]!=relation_[i_k][1])) {
          return false;
        } else if (relation_[i_j][0] & relation_[i_k][0] & relation_[i_j][1]!=relation_[i_k][1] & (!relation_[j_k][0] | relation_[j_k][1]==relation_[i_j][1])) {
          return false;
        }
      }
    }
  }
  return true;
}
boolean verif_TAR2() {//Transitivité pour relation antisymetrique et reflexive
  for (i_v=i_global+1; i_v<n___-j_global-2; i_v++) {
    for (j_v=i_v+1; j_v<n___-j_global-1; j_v++) {
      i_j=nb_-(n___-i_v)*(n___-1-i_v)/2+j_v-i_v-1;
      for (k_v=j_v+1; k_v<n___-j_global; k_v++) {
        j_k=nb_-(n___-j_v)*(n___-1-j_v)/2+k_v-j_v-1;
        i_k=nb_-(n___-i_v)*(n___-1-i_v)/2+k_v-i_v-1;
        if (relation_[i_j][0] & relation_[j_k][0] & relation_[j_k][1]==relation_[i_j][1] & (!relation_[i_k][0] | relation_[i_k][1]!=relation_[i_j][1])) {
          return false;
        } else if (relation_[i_k][0] & relation_[j_k][0] & relation_[i_k][1]!=relation_[j_k][1] & (!relation_[i_j][0] | relation_[i_j][1]!=relation_[i_k][1])) {
          return false;
        } else if (relation_[i_j][0] & relation_[i_k][0] & relation_[i_j][1]!=relation_[i_k][1] & (!relation_[j_k][0] | relation_[j_k][1]==relation_[i_j][1])) {
          return false;
        }
      }
    }
  }
  return true;
}
boolean verif_TAR3() {//Transitivité pour relation antisymetrique et reflexive
  for (i_v=n___-j_global; i_v<n___-2; i_v++) {
    for (j_v=i_v+1; j_v<n___-1; j_v++) {
      i_j=nb_-(n___-i_v)*(n___-1-i_v)/2+j_v-i_v-1;
      for (k_v=j_v+1; k_v<n___; k_v++) {
        j_k=nb_-(n___-j_v)*(n___-1-j_v)/2+k_v-j_v-1;
        i_k=nb_-(n___-i_v)*(n___-1-i_v)/2+k_v-i_v-1;
        if (relation_[i_j][0] & relation_[j_k][0] & relation_[j_k][1]==relation_[i_j][1] & (!relation_[i_k][0] | relation_[i_k][1]!=relation_[i_j][1])) {
          return false;
        } else if (relation_[i_k][0] & relation_[j_k][0] & relation_[i_k][1]!=relation_[j_k][1] & (!relation_[i_j][0] | relation_[i_j][1]!=relation_[i_k][1])) {
          return false;
        } else if (relation_[i_j][0] & relation_[i_k][0] & relation_[i_j][1]!=relation_[i_k][1] & (!relation_[j_k][0] | relation_[j_k][1]==relation_[i_j][1])) {
          return false;
        }
      }
    }
  }
  return true;
}
boolean verif_TAR4() {//Transitivité pour relation antisymetrique et reflexive
  for (i_v=1; i_v<1+i_global; i_v++) {
    for (j_v=i_v+1; j_v<n___-j_global-1; j_v++) {
      i_j=nb_-(n___-i_v)*(n___-1-i_v)/2+j_v-i_v-1;
      for (k_v=j_v+1; k_v<n___-j_global; k_v++) {
        j_k=nb_-(n___-j_v)*(n___-1-j_v)/2+k_v-j_v-1;
        i_k=nb_-(n___-i_v)*(n___-1-i_v)/2+k_v-i_v-1;
        if (relation_[i_j][0] & relation_[j_k][0] & relation_[j_k][1]==relation_[i_j][1] & (!relation_[i_k][0] | relation_[i_k][1]!=relation_[i_j][1])) {
          return false;
        } else if (relation_[i_k][0] & relation_[j_k][0] & relation_[i_k][1]!=relation_[j_k][1] & (!relation_[i_j][0] | relation_[i_j][1]!=relation_[i_k][1])) {
          return false;
        } else if (relation_[i_j][0] & relation_[i_k][0] & relation_[i_j][1]!=relation_[i_k][1] & (!relation_[j_k][0] | relation_[j_k][1]==relation_[i_j][1])) {
          return false;
        }
      }
    }
  }
  for (i_v=1+i_global; i_v<n___-2; i_v++) {
    for (j_v=i_v+1; j_v<n___-1; j_v++) {
      i_j=nb_-(n___-i_v)*(n___-1-i_v)/2+j_v-i_v-1;
      for (k_v=j_v+1; k_v<n___; k_v++) {
        j_k=nb_-(n___-j_v)*(n___-1-j_v)/2+k_v-j_v-1;
        i_k=nb_-(n___-i_v)*(n___-1-i_v)/2+k_v-i_v-1;
        if (relation_[i_j][0] & relation_[j_k][0] & relation_[j_k][1]==relation_[i_j][1] & (!relation_[i_k][0] | relation_[i_k][1]!=relation_[i_j][1])) {
          return false;
        } else if (relation_[i_k][0] & relation_[j_k][0] & relation_[i_k][1]!=relation_[j_k][1] & (!relation_[i_j][0] | relation_[i_j][1]!=relation_[i_k][1])) {
          return false;
        } else if (relation_[i_j][0] & relation_[i_k][0] & relation_[i_j][1]!=relation_[i_k][1] & (!relation_[j_k][0] | relation_[j_k][1]==relation_[i_j][1])) {
          return false;
        }
      }
    }
  }
  return true;
}
