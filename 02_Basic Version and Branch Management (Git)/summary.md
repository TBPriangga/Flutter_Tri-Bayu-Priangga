Basic Version and Branch Management (GIT)
1. Dengan Git, para pengguna GitHub dapat melacak perubahan pada file yang berada dalam direktori kerja atau repository sehingga memudahkan mereka untuk mengetahui perubahan pada file ataupun source code program.
2. GitHub adalah platform penyimpanan dan kolaborasi berbasis web yang menggunakan Git sebagai sistem kontrol versi di belakang layar. Ini memungkinkan pengembang untuk menyimpan repositori Git mereka secara online, berkolaborasi dengan anggota tim, mengelola proyek-proyek, dan melacak perubahan dengan mudah. GitHub menyediakan antarmuka web yang intuitif untuk menjelajahi, mengomentari, dan membandingkan kode, serta alat-alat untuk mengelola isu-isu (issues) dan permintaan tarik (pull requests) selama proses pengembangan perangkat lunak.
3. Ada beberapa Command yang akan sering digunakan yaitu : 
- git clone ssh://link-project-dari-github (Untuk mendownload code dari github)
- git add . Menambahkan perubahan pada semua berkas yang ada
- git commit -m "comment" (untuk menyinpan perubahan dan bisa dicek pada riwayat versi/history pada repositori github)
- git push origin /branch (Untuk mengirimkan perubahan ke github yang tadi sudah di commit)
- git branch -- list (untuk mengecek apa saja branch yang ada)
- git branch /NamaBranch (Untuk membuat branch baru)
- git branch -d /Namabranch (untuk menghapus branch)
- git checkout (untuk berpindah cabang)
- git merge /namaBranch (untuk menggabungkan code pada cabang yang berbeda)