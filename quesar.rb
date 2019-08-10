# Quesar şifrelemesi
require "caesar"
require "colorize"

def sifreleme
    system("cls")
    puts "Şifrelenecek metni girin".green
    print ""
    sifre = gets.chop()

    hal = Caesar.encode("t", sifre)
    puts hal.red
    dosya = File.new("quesar/encrypted.txt", "w")
    dosya.write("Şifrelenen metin : #{sifre}")
    dosya.write("
Şifrelenmiş hali : #{hal}")
    sleep(5)
end

def sifre_kirma
    system("cls")
    system("cls")
    puts "Kırmak istediğiniz Quesar şifrelemesini girin".green
    print ""
    kir = gets.chop()
    sif = Caesar.decode("t", kir)
    if (kir == sif)
        puts "Geçersiz şifreleme".red
    else
        puts sif.red
        dosyaa = File.new("quesar/decrypted.txt", "w")
        dosyaa.write("Şifresi kırılan metin : #{kir}")
        dosyaa.write("
Şifresi kırılan : #{sif}")
        sleep(5)
    end
end

while 1
    print "*************************".red
    print "
1) Şifreleme / Encrypt
2) Şifre kırma / Decrypt
"
    puts "*************************".red
    print ("Seçim : ")
    secim = gets.chop()
    
    if secim == "1"
        sifreleme
    elsif secim == "2"
        sifre_kirma
    else
        puts "Geçersiz işlem"
        break
    end
end