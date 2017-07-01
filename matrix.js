function Matrix(rows, cols){
  this.rows = rows;
  this.cols = cols;

  this.m_data = [];
  for (var i = 0; i<this.rows; i++){
    this.m_data[i] = [];
    for (var j = 0; j<this.cols; j++){
      this.m_data[i][j] = 0;
    }
  }
}

Matrix.prototype.randomize = funtion() {
  for (var i = 0; i<this.rows; i++){
    for (var j = 0; j<this.cols; j++){
      this.m_data[i][j] = Math.floor(Math.random() * 10);
    }
  }
}

Matrix.prototype.s_multiply = function (n) {
  if (n instanceof Matrix){
    if ((n.rows == this.rows)&&(n.cols==this.cols)){
      for (var i = 0; i<this.rows; i++){
        for (var j = 0; j<this.cols; j++){
          this.m_data[i][j] *= n.m_data[i][j];
        }
      }
    }
  }
  else{
    for (var i = 0; i<this.rows; i++){
      for (var j = 0; j<this.cols; j++){
        this.m_data[i][j] *= n;
      }
    }
  }
}

Matrix.prototype.s_add = function (n) {
  if (n instanceof Matrix){
    if ((n.rows == this.rows)&&(n.cols==this.cols)){
      for (var i = 0; i<this.rows; i++){
        for (var j = 0; j<this.cols; j++){
          this.m_data[i][j] += n.m_data[i][j];
        }
      }
    }
  }
  else{
    for (var i = 0; i<this.rows; i++){
      for (var j = 0; j<this.cols; j++){
        this.m_data[i][j] += n;
      }
    }
  }
}
