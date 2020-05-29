function InverseMatriks
  global baris kolom;
  baris = input("Masukkan Dimensi Baris : ");
  kolom = input("Masukkan Dimensi Kolom : ");
  matriks=zeros(baris,kolom);
  for i = 1 : baris
    for j = 1 : kolom
      matriks(i,j) = input("Masukkan data baris & kolom : ");
     endfor
     j=0;
  endfor
  disp(matriks);

  if(baris != kolom)
  printf("Tidak Memiliki Inverse\n");
  feval("InverseMatriks");
  elseif(det(matriks) == 0) printf("Tidak Memiliki Inverse\n");
  feval("InverseMatriks");
  endif;
  printf("Hasil Inverse Matriks : \n");
  disp(inverse(matriks));
endfunction