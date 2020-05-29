function PenjumlahanMatriks
  global baris1 baris2 kolom1 kolom2 matriks1 matriks2;
  baris1 = input("masukkan dimensi baris ke 1 : ");
  kolom1 = input("masukkan dimensi kolom ke 1 : ");
  matriks1=zeros(baris1,kolom1);
  for  i = 1 : baris1
     for j = 1 : kolom1
       matriks1(i,j) = input("masukkan data baris & kolom : ");
     endfor
     j = 0;
  endfor
  disp(matriks1);
 
  matriks2=zeros(baris2,kolom2);
  baris2 = input("masukkan dimensi baris ke 2 : ");
  kolom2 = input("masukkan dimensi kolom ke 2 : ");
  for  i = 1 : baris2
     for j = 1 : kolom2
       matriks2(i,j) = input("masukkan data baris & kolom : ");
     endfor
     j = 0;
  endfor
  disp(matriks2);
   
   
  if(baris1 != baris2 && kolom1 != kolom2)
  printf("dimensi baris dan kolom matriks harus sama\n");
  feval("PenjumlahanMatriks");
  endif;
    
  hasil=matriks1+matriks2;
  printf("hasil penjumlahan matriks : \n");
  disp(hasil);
endfunction