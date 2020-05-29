function ScriptMenuMatriks
  global pil
  printf("PROGRAM OPERASI DASAR MATRIKS\n");
  printf("-----------------------------\n\n");
  printf("Pilih Operasi yang Anda Inginkan\n");
  printf("1. Penjumlahan\n");
  printf("2. Perkalian\n");
  printf("3. Transpose\n");
  printf("4. Inverse\n");
  printf("5. Keluar\n");
  pil = input("Pilih : ");
  switch pil
    case 1
      feval ("Penjumlahan")
    case 2
      feval ("Perkalian");
    case 3
      feval ("transpose");
    case 4
      feval ("inverse");
    case 5
      system("Pause");
      Exit(0);
    otherwise   
      system("cls");
      feval("pilih");
  endswitch
endfunction

function Penjumlahan
  system("cls");
  global baris1 baris2 kolom1 kolom2 matriks1 matriks2;
  baris1 = input("Masukkan dimensi baris matriks ke-1 : ");
  kolom1 = input("Masukkan dimensi kolom matriks ke-1 : ");
  matriks1=zeros(baris1,kolom1);
  for  i = 1 : baris1
     for j = 1 : kolom1
       matriks1(i,j) = input("Masukkan data baris dan kolom : ");
     endfor
     j = 0;
  endfor
  disp(matriks1);
 
  matriks2=zeros(baris2,kolom2);
  baris2 = input("masukkan dimensi baris matriks ke 2 : ");
  kolom2 = input("masukkan dimensi kolom matriks ke 2 : ");
  for  i = 1 : baris2
     for j = 1 : kolom2
       matriks2(i,j) = input("Masukkan data baris dan kolom : ");
     endfor
     j = 0;
  endfor
  disp(matriks2);
  
   
  if(baris1 != baris2 && kolom1 != kolom2)
  printf("Maaf, dimensi baris dan kolom matriks harus sama!\n");
  feval("PenjumlahanMatriks");
  endif;
    
  hasil=matriks1+matriks2;
  printf("Hasil penjumlahan matriks : \n");
  disp(hasil);
endfunction

function Perkalian
  system("cls");
  global baris1 baris2 kolom1 kolom2 matriks1 matriks2;
  baris1 = input("Masukkan dimensi baris matriks ke-1 : ");
  kolom1 = input("Masukkan dimensi kolom matriks ke-1 : ");
  matriks1=zeros(baris1,kolom1);
  for  i = 1 : baris1
     for j = 1 : kolom1
       matriks1(i,j) = input("Masukkan data baris & kolom : ");
     endfor
     j = 0;
  endfor
  disp(matriks1);
 
  matriks2=zeros(baris2,kolom2);
  baris2 = input("masukkan dimensi baris matriks ke-2 : ");
  kolom2 = input("masukkan dimensi kolom matriks ke-2 : ");
  for  i = 1 : baris2
     for j = 1 : kolom2
       matriks2(i,j) = input("masukkan data baris & kolom : ");
     endfor
     j = 0;
  endfor
  disp(matriks2);
   
  
  if(baris2 != kolom1)
  printf("Dimensi baris dan kolom matriks harus sama!\n");
  feval("PerkalianMatriks");
  endif;
    
  hasil=matriks1*matriks2;
  printf("Hasil perkalian matriks : \n");
  disp(hasil);
endfunction

function Transpose
  system("cls");
  global baris kolom;
  baris = input("Masukkan Dimensi Baris Matriks : ");
  kolom = input("Masukkan Dimensi Kolom Matriks : ");
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

function Inverse
  system("cls");
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
  printf("Matriks Tidak Memiliki Inverse\n");
  feval("InverseMatriks");
  elseif(det(matriks) == 0) printf("Matriks Tidak Memiliki Inverse\n");
  feval("InverseMatriks");
  endif;
  printf("Hasil Inverse Matriks : \n");
  disp(inverse(matriks));
endfunction