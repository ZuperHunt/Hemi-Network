Penulis: [Naufal](https://x.com/0xfal)

> [!NOTE]
> **WHAT IS Hemi Network?**\
> .

# Tutorial Hemi Network PoP Mining

# Docker
Cukup clone repository ini, install Docker dengan Docker Compose dan lakukan command di bawah ini:
```bash
git clone https://github.com/ZuperHunt/Hemi-Network
cd Hemi-Network
cp .env.example .env
docker compose up -d
```
Lokasi secrets ada di `./secrets/popm-secret.json` dan bersifar superuser. Jangan dihapus dan dimodifikasi.

# Manual
Langkah-langkah di bawah bisa kamu eksekusi apabila ingin menjalankan aplikasi ini secara manual.

## 1. Needs

Kamu bisa gunakan VPS atau PC pribadi dengan kebutuhan:

| ✅ Linux | ✅ macOS | ✅ Windows (Native / WSL) |
| ------------- | ------------- | ------------- |

| Part | Minimum | Recommended |
| ------------- | ------------- | ------------- |
| CPU | - | - |
| RAM | - | - |
| SSD | - | - |

Tutorial ini dibuat menggunakan Linux (Ubuntu), untuk sistem operasi lainnya mungkin akan sedikit berbeda.

## 2. Dependencies

Instal `tmux`.

```
sudo apt install tmux
```

## 3. Executions

### 3.1 Create tmux

Jalankan perintah berikut.

```
tmux
```

### 3.2 Download Repository

```
wget https://github.com/hemilabs/heminetwork/releases/download/v0.4.3/heminetwork_v0.4.3_linux_amd64.tar.gz
tar xvf heminetwork_v0.4.3_linux_amd64.tar.gz
cd heminetwork_v0.4.3_linux_amd64
```

### 3.3 Generate `public key`

```
./keygen -secp256k1 -json -net="testnet" > ~/popm-address.json
cat ~/popm-address.json
```

Simpan output dari menjalankan perintah di atas, dan klaim `0.002 tBTC` di [Hemi Discord faucet](https://discord.gg/hemixyz) menggunakan `pubkey_hash`.

### 3.4 Run the Miner

Ubah `<private_key>` sesuai dengan yang sudah kamu generate sebelumnya, dan untuk `<fee_per_vB_integer>` kurekomendasikan `200` ke atas (bisa cek [mempool](https://mempool.space/testnet) untuk nilai yang lebih pasti).

```
export POPM_BTC_PRIVKEY=<private_key>
export POPM_STATIC_FEE=<fee_per_vB_integer>
export POPM_BFG_URL=wss://testnet.rpc.hemi.network/v1/ws/public
./popmd
```

# Help

## How to attach to tmux last session?

```
tmux a
```

## How to detach from tmux current session?

Press `ctrl` + `b`, and then press `d`.

---

Reach us if you have more question:\
ZuperHunt's [Discord server](https://discord.gg/ZuperHunt) | [X(Twitter)](https://twitter.com/ZuperHunt)

# Acknowledgements

* [PoP Mining](https://docs.hemi.xyz/how-to-tutorials/tutorials/setup-part-1)
