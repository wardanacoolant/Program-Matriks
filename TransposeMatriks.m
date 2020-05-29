function TransposeMatriks
  global baris kolom;
  baris = input("Masukkan Dimensi Baris : ");
  kolom = input("Masukkan Dimensi Kolom : ");
  matriks=zeros(baris,kolom);
  for i = 1 : baris
    for j = 1 : kolom
      matriks(i,j) = input("Masukkan Data Baris & Kolom : "); 
    endfor
    j=0; 
  endfor
  disp(matriks);
  printf("Hasil Transpose Matriks : \n");
  disp(transpose(matriks));
endfunction