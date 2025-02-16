Latihan Playtest<br>

1. Apa saja pesan log yang dicetak pada panel output? <br>
	Pesan log yang muncul adalah "Platform initialized" dan "Reached objective!".<br>
2. Coba gerakkan landasan ke batas area bawah, lalu gerakkan kembali ke atas hingga hampir menyentuh batas atas. Apa saja pesan log yang dicetak pada panel Output?<br>
	Pesan log yang muncul hanya "Reached Objective".<br>
3. Buka scene MainLevel dengan tampilan workspace 2D. Apakah lokasi scene ObjectiveArea memiliki kaitan dengan pesan log yang dicetak pada panel Output pada percobaan sebelumnya?<br>
	Iya, karena terdeteksinya collider dari scene ObjectiveArea oleh node BlueShip membuat munculnya log "Reached Objective".<br>
	
Latihan: Memanipulasi Node dan Scene<br>

1. Scene BlueShip dan StonePlatform sama-sama memiliki sebuah child node bertipe Sprite. Apa fungsi dari node bertipe Sprite?<br>
	Fungsi dari node Sprite adalah memberikan tekstur. Tekstur yang diberikan dapat pada sebuah objek ataupun region.<br>
2. Root node dari scene BlueShip dan StonePlatform menggunakan tipe yang berbeda. BlueShip menggunakan tipe RigidBody2D, sedangkan StonePlatform menggunakan tipe StaticBody2D. Apa perbedaan dari masing-masing tipe node?<br>
	RigidBody2D menerapkan hukum fisika pada objeknya sehingga terpengaruh oleh faktor-faktor fisik yang ada, sedangkan StaticBody2D tidak dapat dipengaruhi oleh faktor-faktor seperti fisika.<br>
3. Ubah nilai atribut Mass pada tipe RigidBody2D secara bebas di scene BlueShip, lalu coba jalankan scene MainLevel. Apa yang terjadi?<br>
	Tidak ada yang berubah karena objek BlueShip jatuh bebas.<br>
4. Ubah nilai atribut Disabled pada tipe CollisionShape2D di scene StonePlatform, lalu coba jalankan scene MainLevel. Apa yang terjadi?<br>
	BlueShip akan menembus StonePlatform dan jatuh terus ke bawah.<br>
5. Pada scene MainLevel, coba manipulasi atribut Position, Rotation, dan Scale milik node BlueShip secara bebas. Apa yang terjadi pada visualisasi BlueShip di Viewport?<br>
	Posisi BlueShip akan berpindah pada viewport. Kemudian, arah hadap BlueShip akan berubah sesuai dengan rotasi yang diberikan, tetapi arah jatuhnya tetap sama. Terakhir, ukuran BlueShip akan berubah sesuai dengan nilai scale yang diberikan.<br>
6. Pada scene MainLevel, perhatikan nilai atribut Position node PlatformBlue, StonePlatform, dan StonePlatform2. Mengapa nilai Position node StonePlatform dan StonePlatform2 tidak sesuai dengan posisinya di dalam scene (menurut Inspector) namun visualisasinya berada di posisi yang tepat?<br>
	Nilai atribut posisi berada di posisi dengan perhitungan posisi yang dipengaruhi dari posisi node PlatformBlue sehingga child objectnya bergeser sebesar x=35 dan y=565. Hal ini yang membuat data di inspector tidak sama dengan yang ada pada visualisasi.
