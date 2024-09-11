program pengenalanPascal;
uses crt;

// deklarasi type --> memberikan nama pada tipe data yang sudah ada
type
    Tnama = string;

// deklarasi variabel --> deklarasi elemen yang dapat berubah-ubah
var
    nama: Tnama;
    usia, hasil: integer;

// deklarasi konstanta --> deklarasi yang elemennya tidak dapat berubah (tetap)
const
    Salam = 'Salam Kenal !';
    TahunSekarang = 2024;

// deklarasi prosedur --> suatu program yang punya blok sendiri, fungsinya sebagai subprogram
procedure TampilSalam;
begin
    writeln(Salam);
end;

// deklarasi function --> mirip prosedur tapi punya kembalian nilai
function TahunLahir(usia: integer): integer;
begin
    TahunLahir := TahunSekarang - usia;
end;

// deklarasi label
label 
    mulai;

begin
    clrscr;

    TampilSalam; // procedure

    mulai: // label

    write('Masukkan nama : ');
    read(nama);
    write('Masukkan usia : ');
    read(usia);

    if usia <= 0 then 
    begin
        goto mulai;
    end;

    hasil := TahunLahir(usia); // function
    writeln(hasil);

end.